-- Removes anything marked [ ... ]{.phone} from the public website and public PDF
function Span(el)
  if el.classes:includes('phone') then return {} end
end
