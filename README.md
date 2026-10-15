# Personal website: setup and updating

This folder is both your CV source and your website. Your public site has three pages (Home, CV, Methods & Projects) and a downloadable PDF of your CV.
GitHub rebuilds the site automatically every time you upload a change.

| File | What it is |
|---|---|
| `CV.md` | Your CV, the single source for the site, the public PDF, and your private PDF |
| `index.md` | Home page |
| `projects.md` | Methods & Projects page (keep unpublished results off it) |
| `cv.css`, `site.css` | Styling |
| `strip-private.lua` | Removes anything marked `[ ... ]{.phone}` in CV.md from the public site and PDF |
| `nav.html` | The menu at the top of each page |
| `build.sh` | Builds your **private** PDF (with phone number) on your Mac |
| `build-site.sh` | Builds the **public** site; GitHub runs this for you |
| `.github/workflows/deploy.yml` | Tells GitHub to build and publish the site |
| `.gitignore` | Keeps your private PDF and preview files off GitHub |

## One-time setup (about 15 minutes)

1. **Fix the placeholder:** in `index.md`, replace `YOUR-LINKEDIN` (twice) with your LinkedIn profile URL ending.
2. **Create the repository:** on github.com, sign in, then **New repository**.
   - Name it exactly `YOURUSERNAME.github.io` (your personal GitHub username). The site will then live at `https://YOURUSERNAME.github.io`.
   - Make it **Public**, and don't add a README.
3. **Upload this folder with GitHub Desktop** (free: desktop.github.com). It respects `.gitignore`, so your private PDF stays off GitHub. Browser upload doesn't, and Finder hides the `.github` folder.
   - GitHub Desktop → **File → Add Local Repository** → choose this `CV_markdown` folder → when asked, click **create a repository** here.
   - Check that the list of changes does **not** include `CV_Max Wegener.pdf` or `CV.html`.
   - Click **Commit to main**, then **Publish repository**, choose your `YOURUSERNAME.github.io` repository, and untick "Keep this code private".
4. **Turn on Pages:** on GitHub, open the repository → **Settings → Pages** → under "Source" choose **GitHub Actions**.
5. **Wait 1–2 minutes** (the **Actions** tab shows progress), then visit `https://YOURUSERNAME.github.io`.

## Updating your CV

1. Edit `CV.md` (and `projects.md` if you like).
2. **Private PDF for applications:** run `bash build.sh` in Terminal.
3. **Website:** in GitHub Desktop, write a short note (e.g., "Add Nov 2026 courses"), click **Commit to main**, then **Push origin**. The site and its PDF update automatically.

## Add it to LinkedIn

- **Profile → Contact info → Website:** add `https://YOURUSERNAME.github.io` (type: Personal).
- **Profile → Add section → Featured → Add a link:** add the CV page (`.../cv.html`) or the site.
