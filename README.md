# Maximilian Wegener: personal website and CV

**Live site: [mwegener.github.io](https://mwegener.github.io)**

- [CV](https://mwegener.github.io/cv.html) · [CV (PDF)](https://mwegener.github.io/CV_Max_Wegener.pdf) · [Methods & Projects](https://mwegener.github.io/projects.html)

This repository holds the source for the site, built with [Quarto](https://quarto.org). GitHub rebuilds it automatically every time a change is pushed.

| File | What it is |
|---|---|
| `CV.md` | The CV content, the single source for the site, the public PDF, and the private PDF |
| `index.md` | Home page content |
| `projects.md` | Methods & Projects content (keep unpublished results off it) |
| `index.qmd`, `cv.qmd`, `projects.qmd` | Quarto pages that pull in the `.md` files above (no need to edit) |
| `_quarto.yml` | Site settings: menu bar, links, theme |
| `theme.scss` | Website styling (colors, fonts, CV layout) |
| `cv.css` | PDF styling |
| `strip-private.lua` | Removes anything marked `{.phone}`, `{.private}` or `{.private-item}` from the public site and PDF |
| `build.sh` | Builds the **private** PDF (with phone number) locally |
| `build-site.sh` | Builds the **public** site and PDF; GitHub Actions runs this |
| `.github/workflows/deploy.yml` | Tells GitHub to build and publish the site |
| `.gitignore` | Keeps the private PDF and preview files off GitHub |

## Updating

1. Edit `CV.md` (and `projects.md` or `index.md` as needed).
2. **Preview the site (optional):** run `quarto preview` in this folder.
3. **Private PDF for applications:** run `bash build.sh` in Terminal.
4. **Website:** in GitHub Desktop, write a short summary (e.g., "Add Nov 2026 courses"), click **Commit to main**, then **Push origin**. The site and its PDF update in about a minute (progress in the **Actions** tab).

## Links

- LinkedIn: [linkedin.com/in/wegenermaximilian](https://www.linkedin.com/in/wegenermaximilian)
- Website: [mwegener.github.io](https://mwegener.github.io), listed under LinkedIn **Contact info → Website** and in the **Featured** section
