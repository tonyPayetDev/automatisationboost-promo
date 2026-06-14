# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project: AutomationBoost Promo Video

A **HyperFrames motion design video** (9:16 vertical, 50 seconds) promoting AutomationBoost automation platform.

**Status:** Video rendered and deployed. All 5 beats visible with smooth opacity transitions.

**Public URLs:**
- 🎬 **Viewer with player:** https://cdn.jsdelivr.net/gh/tonyPayetDev/automatisationboost-promo@main/video-player.html
- 📹 **Raw MP4:** https://cdn.jsdelivr.net/gh/tonyPayetDev/automatisationboost-promo@main/renders/video.mp4

## Skills — Use These First

Always invoke the relevant skill before modifying compositions. Skills encode framework-specific patterns (e.g., `window.__timelines` registration, `data-*` semantics, CSS rules) that generic web docs don't cover.

| Skill                    | When to use                                                                             |
| ------------------------ | --------------------------------------------------------------------------------------- |
| `/hyperframes`           | Editing `index.html` or compositions — layout, text, animations, timing                 |
| `/hyperframes-cli`       | CLI operations: `npm run dev`, `npm run render`, linting                                |
| `/hyperframes-media`     | TTS generation (Kokoro French), transcription, background removal                      |
| `/gsap`                  | Timeline animations — tweens, fade-ins, timing synchronization                         |
| `/deploy-site`           | Redeploying to Coolify (GitHub + Coolify MCP integration)                              |

## Common Commands

```bash
# Development & Preview
npm run dev              # Start live preview server (background: true)
npm run check            # Lint + validate + inspect (run after composition changes)

# Rendering & Publishing
npm run render           # Render index.html → renders/video.mp4
npm run publish          # Publish to HyperFrames Studio + get shareable link

# Linting
npx hyperframes lint --verbose    # Detailed linting output
npx hyperframes inspect           # Inspect composition structure
```

> **Important:** `npm run dev` is long-running; always use `run_in_background: true`. It blocks until stopped.

## Project Structure

```
.
├── index.html              # Main composition (1080×1920, 50s, 5 beats)
├── DESIGN.md               # Brand system (colors: #000000, #EAB308, #E4E4E7; fonts: Orbitron, Inter)
├── STORYBOARD.md           # 5-beat narrative arc with timing & animation techniques
├── SCRIPT.md               # French narration script (35s voiceover)
├── narration.wav           # TTS audio (Kokoro French, ff_siwis voice)
├── transcript.json         # Word-level timing data (for captions if added)
├── renders/
│   └── video.mp4           # Final rendered video (1.01 MB, 50s @ 30fps)
├── video-player.html       # Simple HTML5 player (loads MP4 from GitHub Raw)
├── Dockerfile              # Nginx deployment (copies video.mp4 + player HTML)
└── hyperframes.json        # HyperFrames project config
```

## Architecture: The 5-Beat Structure

Each beat is a `<div class="beat">` with `data-start`, `data-duration`, `data-track-index`. GSAP timeline controls opacity fade-in/out at beat transitions (0.3s fade, no overlap).

| Beat | Timing    | Content                                          | Duration |
| ---- | --------- | ------------------------------------------------ | -------- |
| 1    | 0–8s      | Problem: "Vous perdez 10h/semaine"              | 8s       |
| 2    | 8–17s     | Chaos: "Trop manuel, trop de temps, trop de stress" | 9s       |
| 3    | 17–27s    | Solution: "Rencontrez AutomationBoost"          | 10s      |
| 4    | 27–39s    | Benefits: 3 stat cards (10h, 3x, 1 clic)       | 12s      |
| 5    | 39–50s    | CTA: "Essayez gratuitement 14 jours"           | 11s      |

**Key constraint:** All beats must have class="clip" and valid `data-*` attributes. Visibility is controlled via GSAP timeline opacity tweens (not CSS display/visibility).

## Deployment

**Current status:** Video deployed to GitHub + jsDelivr CDN. Coolify container ready (see `Dockerfile`).

**To redeploy after composition changes:**

```bash
npm run render              # Renders index.html → renders/video.mp4
git add renders/video.mp4   # Stage the new video
git commit -m "Update: <description>"
git push                    # Webhook triggers Coolify rebuild (via tonyPayetDev/automatisationboost-promo repo)
```

The Dockerfile copies `renders/video.mp4` and `video-player.html` to Nginx. No manual deployment needed after push.

## Composition Editing Rules

1. **Every timed element** needs `data-start`, `data-duration`, `data-track-index`
2. **Timing elements** MUST have `class="clip"` — visibility controlled by GSAP, not CSS
3. **Timeline registration** (in `<script>`):
   ```js
   window.__timelines = window.__timelines || {};
   window.__timelines["main"] = gsap.timeline({ paused: true });
   ```
4. **Audio track** uses `<audio muted>` + separate audio element (HyperFrames handles muxing)
5. **Deterministic only** — no `Date.now()`, `Math.random()`, network fetches

## Brand Guide

See `DESIGN.md` for the complete system:

- **Colors:** Black `#000000`, Gold `#EAB308`, Light Gray `#E4E4E7`, Dark Gray `#0D0D0D`
- **Typography:** Orbitron (display, 900 weight), Inter (body)
- **Components:** Neon-bordered stat cards, centered text layouts, smooth opacity transitions
- **Mood:** Premium, tech-forward, energetic

## Before Publishing Changes

```bash
npm run check    # Must pass all lint/validate/inspect checks
npm run render   # Verify the video renders without errors
```

All warnings must be reviewed; fix errors before committing.
