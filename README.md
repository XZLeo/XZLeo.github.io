# Ziliang Xiong — Personal Website

Academic personal homepage deployed via GitHub Pages.

**Live site:** https://xzleo.github.io

## Structure

- `index.html` — About, News, Research overview, Contact
- `research.html` — Full publication list
- `teaching.html` — Teaching and mentorship
- `main.css` — Shared styles (Hongwei Li–style layout)
- `imgs/profile.svg` — Placeholder avatar (replace with your photo)
- `documents/CV_Xiong.pdf` — CV PDF (add after compiling LaTeX CV)

## Replace placeholder assets

### Profile photo

Save a square photo (≥300×300 px) as either:

- `imgs/profile.jpg` — then update `src` in all HTML files, or
- Replace `imgs/profile.svg` directly

### CV PDF

1. Compile `cv-llt.tex` in your `Ziliang-CV-ENG` folder.
2. Copy the generated PDF to `documents/CV_Xiong.pdf`.
3. Commit and push.

## Local preview

Open `index.html` in a browser, or run a simple local server:

```bash
python -m http.server 8000
```

Then visit http://localhost:8000

## Deploy to GitHub Pages

This site is intended for the repository **`XZLeo/XZLeo.github.io`**.

**Quick deploy (Windows):** double-click `deploy.bat` in this folder (requires [Git](https://git-scm.com/) and [GitHub CLI](https://cli.github.com/) logged in).

**Manual deploy:**

```bash
git init
git add .
git commit -m "Initial personal website"
git branch -M main
git remote add origin https://github.com/XZLeo/XZLeo.github.io.git
git push -u origin main
```

In GitHub: **Settings → Pages → Deploy from branch `main` / root**.

Updates: edit files → `git add` → `git commit` → `git push`.

## Credits

Layout inspired by [Hongwei Bran Li's homepage](https://hongweilibran.github.io/).
