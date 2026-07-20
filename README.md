# Abdullahi Yahaya — Portfolio ASSIGNMENT

Personal, terminal-styled personal portfolio site — no build step, no
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

## Run it locally (no Docker)

Any static file server works. Easiest options:

**Option A — just open it**
Double-click `index.html`, or open it directly in a browser.

**Option B — a tiny local server** 

with Node installed:
```bash
npx serve .
```
---

## Run it with Docker

### 1. Build the image
From the project root (where `Dockerfile` lives):
```bash
docker build -t portfolio: latest
```

### 2. Run the container
```bash
docker run -d -p 8080:80 --name portfolio portfolio: latest
```
Visit **http://localhost:8080**

### 3. Stop / remove it
```bash
docker stop portfolio
docker rm portfolio
```
