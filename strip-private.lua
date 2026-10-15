-- Removes private content from the public website and public PDF.
-- Inline:     [text]{.phone} or [text]{.private}
-- List item:  put [ ]{.private-item} anywhere in the item to drop the whole bullet
-- Blocks:     ::: {.private}
--             ...anything...
--             :::
local function is_private(el)
  return el.classes:includes('phone') or el.classes:includes('private')
end

function Span(el)
  if is_private(el) then return {} end
end

function Div(el)
  if is_private(el) then return {} end
end

local function has_private_marker(item)
  local found = false
  local finder = {
    Span = function(s) if s.classes:includes('private-item') then found = true end end
  }
  local div = pandoc.Div(item)
  if div.walk then div:walk(finder) else pandoc.walk_block(div, finder) end
  return found
end

local function filter_list(el)
  local kept = {}
  for _, item in ipairs(el.content) do
    if not has_private_marker(item) then table.insert(kept, item) end
  end
  el.content = kept
  return el
end

BulletList = filter_list
OrderedList = filter_list
