# Abdullahi Yahaya — Portfolio

A single-file, terminal-styled personal portfolio site — no build step, no
framework, just HTML/CSS/JS — designed to be trivial to containerize and ship.

**Live sections:** About · Experience · Education · Projects · Skills · Contact

---

## Project structure

```
.
├── index.html        # the entire site (markup + styles + script)
├── favicon.ico
├── Dockerfile         # builds a static nginx image serving index.html
├── .dockerignore
├── .gitignore
└── README.md
```

> The old Gulp/Sass build (`gulpfile.js`, `package.json`, `scss/`) has been
> removed. The site is now plain static files, so there's nothing to compile
> before it runs — which also makes the Docker image smaller and the build
> faster.

---

## Run it locally (no Docker)

Any static file server works. Easiest options:

**Option A — just open it**
Double-click `index.html`, or open it directly in a browser.

**Option B — a tiny local server** (recommended, avoids some browser
restrictions on local files)
```bash
# Python 3
python3 -m http.server 8080
# then visit http://localhost:8080
```
or, with Node installed:
```bash
npx serve .
```

---

## Run it with Docker

### 1. Build the image
From the project root (where `Dockerfile` lives):
```bash
docker build -t portfolio:latest .
```

### 2. Run the container
```bash
docker run -d -p 8080:80 --name portfolio portfolio:latest
```
Visit **http://localhost:8080**

### 3. Stop / remove it
```bash
docker stop portfolio
docker rm portfolio
```

---

## License

MIT — see [LICENSE.md](LICENSE.md).
