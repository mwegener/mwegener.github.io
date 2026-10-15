# Maximilian Wegener: personal website and CV

**Live site: [mwegener.github.io](https://mwegener.github.io)**

- [CV](https://mwegener.github.io/cv.html) · [CV (PDF)](https://mwegener.github.io/CV_Max_Wegener.pdf) · [Methods & Projects](https://mwegener.github.io/projects.html)

This repository holds the source for the site. GitHub rebuilds it automatically every time a change is pushed.

| File | What it is |
|---|---|
| `CV.md` | The CV, the single source for the site, the public PDF, and the private PDF |
| `index.md` | Home page |
| `projects.md` | Methods & Projects page (keep unpublished results off it) |
| `cv.css`, `site.css` | Styling |
| `strip-private.lua` | Removes anything marked `[ ... ]{.phone}` in CV.md from the public site and PDF |
| `nav.html` | The menu at the top of each page |
| `build.sh` | Builds the **private** PDF (with phone number) locally |
| `build-site.sh` | Builds the **public** site; GitHub Actions runs this |
| `.github/workflows/deploy.yml` | Tells GitHub to build and publish the site |
| `.gitignore` | Keeps the private PDF and preview files off GitHub |

## Updating

1. Edit `CV.md` (and `projects.md` or `index.md` as needed).
2. **Private PDF for applications:** run `bash build.sh` in Terminal.
3. **Website:** in GitHub Desktop, write a short summary (e.g., "Add Nov 2026 courses"), click **Commit to main**, then **Push origin**. The site and its PDF update in about a minute (progress in the **Actions** tab).

## Links

- LinkedIn: [linkedin.com/in/wegenermaximilian](https://www.linkedin.com/in/wegenermaximilian)
- Website: [mwegener.github.io](https://mwegener.github.io), listed under LinkedIn **Contact info → Website** and in the **Featured** section
