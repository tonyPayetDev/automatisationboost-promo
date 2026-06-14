# AutomationBoost Promo — Storyboard

## Concept

**Message:** Gagnez 10 heures par semaine — Automatisez votre présence social avec l'IA.

**Arc:** Problem → Revelation → Transformation (Problem statement → show the pain → reveal the solution → show the power)

**Audience:** Content creators, social media managers, small business owners on TikTok, Instagram Reels, YouTube Shorts (9:16 vertical feed)

**Brand voice:** Confident, energetic, futuristic. Direct and action-oriented ("Publiez partout. En automatique."). Speaks to the frustration of manual work and the freedom automation brings.

**Why this matters now:** AutomationBoost is an AI automation platform targeting creators losing hours weekly to multi-channel publishing. The video must land the value prop fast — time saved = mental freedom = more creative energy.

---

## Pacing

**Pacing: Fast** — 5 beats (~50 seconds), hard cuts, kinetic typography, rapid motion transitions. Each beat 8–12 seconds. Vertical 9:16 format drives tall, narrow compositions stacking top-to-bottom.

---

## Global Direction

**Format:** 1080×1920 (9:16 vertical, mobile-first)

**Audio:** Kokoro TTS (French voice, energetic mid-tempo delivery) + underscore electronic music + SFX accents

**VO direction:** Female voice, confident and direct, speaking to creators who know the pain. Energetic but not frantic — economy of words, each sentence punches. Tone: "I understand your frustration, and here's the fix." No fluff.

**Music:** Minimal synth underscore, warm pad foundation, builds toward beat 3 (reveal), holds energy through beat 4, resolves on final chord at CTA. Mood: forward momentum, tech-forward, not cinematic.

**Style basis:** DESIGN.md — Black (`#000000`) backgrounds, Light Gray (`#E4E4E7`) headlines in Orbitron, Golden Accent (`#EAB308`) for emphasis and glows. Dark Navy (`#0D0D0D`) secondary surfaces. Every beat reinforces the neon-cyberpunk energy of the brand.

**Captions:** Dynamic subtitle overlays matching each line of VO, synced to beat timing. Golden text (`#EAB308`) on dark background, Orbitron font, left-aligned in lower-safe area, animated entrance/exit per line.

---

## Asset Audit

**Contact sheet:** capture/assets/contact-sheet.jpg (single page)
- Visually distinctive assets:
  1. **tony-payet.jpg**: Male creator in front of neon cyberpunk cityscape with AutomationBoost logo, glowing text panels ("AUTOBOT WINS WORRIES", "BOOST PRODUCTIVITY"). Iconic, brand-defining hero image.
  
**Strategy:** The tony-payet.jpg asset is the visual anchor for the video. It appears in Beat 3 (reveal) as a full-bleed introduction of AutomationBoost, and again subtly in Beat 5 (CTA) as context for "real creators use AutomationBoost." This asset alone carries the brand's cyberpunk identity and makes the solution feel real and aspirational.

**USE/SKIP decisions:**
- **Beat 1 (Problem):** SKIP assets — pure kinetic type on black background establishes the pain state
- **Beat 2 (Multi-network chaos):** SKIP assets — composed social media icons and chaos animation
- **Beat 3 (Reveal AutomationBoost):** **USE tony-payet.jpg** — full-bleed reveal of the hero creator with the brand neon identity
- **Beat 4 (Benefits/transformation):** SKIP assets — composed cards showing time/engagement gains
- **Beat 5 (CTA):** **USE tony-payet.jpg (subtle background layer)** — the solution in action, anchor the call to action

---

## Beats

### Beat 1: The Problem (8 seconds)
**Duration:** 8s
**Timing:** 0:00–0:08

**Storyboard:**
Dark black canvas. A single line of golden text appears in Orbitron 900, 48px, left-aligned:

> "Vous perdez 10h/semaine"

Text enters with a fast **typing effect** (character-by-character reveal, no delay). Holds for 2 seconds. Then a second line fades in below:

> "à gérer vos réseaux sociaux"

The first line glows subtly (box-shadow: golden rgba) for emphasis. Below both lines, subtle icons appear representing 5 social networks (Instagram, TikTok, LinkedIn, Facebook, Pinterest) — small (24px), gray (`#A1A1AA`), stacked vertically with 8px gap. Icons fade in with a **stagger effect** (50ms delay between each).

**VO:** "Vous perdez dix heures par semaine à gérer vos réseaux sociaux."

**Techniques:**
- Kinetic typography (typed entrance, gold glow)
- Icon stagger animation (GSAP back.out easing, 50ms delay)
- Color contrast (golden text on black = high impact)

**Customize:**
- Font: Orbitron 900, 48px
- Colors: `#EAB308` (gold text), `#A1A1AA` (icons)
- Background: Pure black `#000000`

**SFX:** Typewriter click (short, bright) on each character reveal. Icon entrance whoosh (subtle air-like SFX on stagger).

---

### Beat 2: The Chaos (9 seconds)
**Duration:** 9s
**Timing:** 0:08–0:17

**Storyboard:**
Black canvas still. The icons from Beat 1 remain at top. Now the central area fills with composed elements representing the chaos of managing multiple networks:

- **Composed UI cards** (each is a `<div>` not a screenshot) representing each social platform. Each card has:
  - Platform name (Instagram, TikTok, etc.) in Inter 600, 14px
  - A small thumbnail placeholder (40×40px, dark border `#1A1A1A`, rounded 4px)
  - Status text: "Unpublished", "Needs scheduling", "Engagement low" in gray (`#A1A1AA`), italic, smaller font
  - Each card is stacked with 12px gap, vertical layout

- All cards **rotate and scale simultaneously** in a chaotic pattern:
  - Card 1 rotates +10deg, scales 0.95
  - Card 2 rotates -8deg, scales 1.02
  - Card 3 rotates +6deg, scales 0.98
  - Cards move slightly vertically in a looping jitter (±8px, 0.3s cycle, infinite)

- A **pulsing glow** appears behind all cards: `box-shadow: rgba(234, 179, 8, 0.2) 0px 0px 40px`

- Overlay text at the bottom: "Trop chronophage. Trop manuel. Trop de stress." in Rajdhani 600, 13.6px, label color `#EAB308`, animated entrance (fade + slide-up).

**VO:** "Trop de réseaux. Trop manuel. Trop de temps perdu."

**Techniques:**
- Composed UI cards (divs with realistic platform labels, not screenshots)
- Rotation + scale + jitter animation (GSAP timeline with simultaneous tweens, sine.inOut easing for chaos)
- Pulsing glow shadow (looping opacity tween)
- Label animation (fade + translate-y entrance, back.out easing)

**Customize:**
- Platform cards: Real network names, Orbitron/Inter fonts from DESIGN.md
- Colors: Dark Navy backgrounds (`#0D0D0D`), light gray text (`#E4E4E7` / `#A1A1AA`), golden glow
- Jitter: 0.3s cycle, 8px amplitude, sine.inOut

**SFX:** Subtle digital error beep (repeating, on each card jitter cycle, quiet). Building anxiety tension underneath.

---

### Beat 3: The Revelation (10 seconds)
**Duration:** 10s
**Timing:** 0:17–0:27

**Storyboard:**
All previous elements (icons, cards) **fade out simultaneously** (0.5s fade). Canvas is now black again.

A **full-bleed image** enters from the right side (slide-in, ease-out, 0.6s duration): `tony-payet.jpg`. The neon cyberpunk creator with AutomationBoost logo and glowing text panels fills the vertical canvas.

As the image slides in, **kinetic text appears overlaid on top**:

> "Rencontrez AutomationBoost"

This text is Orbitron 700, 40px, white (`#E4E4E7`), positioned top-left with 20px padding. It enters with a **character-by-character type effect** (starting 0.3s after image begins sliding in). A golden underline (height: 4px, `#EAB308`) draws in beneath the text (SVG line draw animation, start-at-zero dasharray, 0.4s duration).

Below, after a 1s hold, a second line fades in:

> "L'IA qui publie pour vous"

Rajdhani 600, 13.6px, `#EAB308`, left-aligned.

The image has a subtle **vignette gradient** overlay (radial gradient, dark edges fading to transparent center) to ensure text remains readable. The vignette doesn't hide the image — it just darkens the outer edges.

**VO:** "Rencontrez AutomationBoost. L'IA qui publie pour vous, partout, automatiquement."

**Techniques:**
- Full-bleed image reveal (slide-in from right, ease-out easing)
- Kinetic typography with line draw underline (typed text, SVG path drawing)
- Vignette gradient (CSS radial-gradient for readability on image)
- Layered timing (image first, then text, then underline, then second line)

**Customize:**
- Image: `capture/assets/tony-payet.jpg` (full-bleed, cover object-fit)
- Text color: White on vignette, golden accent on second line
- Fonts: Orbitron 700 for headline, Rajdhani for label
- Vignette: `radial-gradient(ellipse at center, transparent 40%, rgba(0,0,0,0.4) 100%)`

**SFX:** Smooth whoosh on image slide-in (air/transition sound). Typewriter click on text. Subtle ding on underline completion.

---

### Beat 4: The Transformation (12 seconds)
**Duration:** 12s
**Timing:** 0:27–0:39

**Storyboard:**
tony-payet.jpg **fades out** (0.8s fade). Canvas returns to black.

Three **composed stat cards** appear in sequence, stacked vertically, center-aligned:

**Card 1 (0:27–0:31, 4s):**
- Headline: "10h gagnées" in Orbitron 900, 48px, golden `#EAB308`
- Subheading: "chaque semaine" in Inter 400, 20px, light gray `#E4E4E7`
- Background: Dark Navy `#0D0D0D` with golden border (`1px solid rgba(234, 179, 8, 0.5)`)
- Border-radius: 16px, padding: 28px
- Entrance animation: **Slide-in from left** + scale (0.8 → 1.0), ease-out, 0.6s. A **counter animation** on the "10h" number (0 → 10 over 1s, using a counter chip with tl.set).

**Card 2 (0:31–0:35, 4s):**
- Headline: "3x plus" in Orbitron 900, 48px, golden
- Subheading: "d'engagement" in Inter 400, 20px, light gray
- Same styling as Card 1
- Entrance: **Slide-in from right** + scale, 0.6s, staggered 0.3s after Card 1 closes
- Counter: 0 → 3x multiplier

**Card 3 (0:35–0:39, 4s):**
- Headline: "1 clic" in Orbitron 900, 48px, golden
- Subheading: "pour tout publier" in Inter 400, 20px, light gray
- Same styling
- Entrance: **Slide-in from left** again, 0.6s, staggered 0.3s after Card 2
- Counter: Simple pulse glow (no numeric counter needed)

Each card has a **pulsing golden glow** (box-shadow looping opacity, 2s cycle, subtle). As each card exits (fade out, 0.4s), it scales to 0.95 slightly.

**VO:** "Gagnez dix heures chaque semaine. Multipliez votre engagement par trois. Publiez partout en un seul clic."

**Techniques:**
- Composed stat cards (divs with realistic styling from DESIGN.md)
- Slide-in + scale entrance stagger (alternating left/right)
- Counter animation (GSAP tl.set on number, 1s duration, snap to integer)
- Pulsing glow (box-shadow opacity tween, looping, 2s cycle)
- Staggered sequencing (cards appear/exit in sequence)

**Customize:**
- Font: Orbitron 900 for numbers, Inter for subheading
- Colors: Golden text, dark navy background, golden border with opacity
- Cards: Each has 28px padding, 16px radius, 1px golden border
- Counter: Numeric tween from 0 to target, snap to integer, bold color

**SFX:** Satisfying "ding" or "chime" as each card enters. Gentle ascending tone between cards (0.3s gap SFX). Subtle glow hum under the pulsing effect.

---

### Beat 5: Call to Action (9 seconds)
**Duration:** 9s
**Timing:** 0:39–0:48

**Storyboard:**
All stat cards fade out. Canvas returns to black.

The **tony-payet.jpg image re-enters**, but this time as a **background layer** (reduced opacity, 0.3–0.4, acts as a subtle depth texture behind the CTA). The image is slightly blurred (CSS filter: `blur(4px)`), positioned center-bottom, scaled to fill but not overwhelm.

Overlaid on top, centered:

**Headline:** "Essayez gratuitement" in Orbitron 700, 40px, white `#E4E4E7`

**Subheading:** "14 jours. Aucune carte requise." in Inter 400, 18px, light gray `#A1A1AA`

**CTA Button:** Composed button (not a screenshot):
- Label: "🚀 Essayer Gratuitement 14 Jours" in Inter 700, 16px
- Background: Pure black `#000000`
- Border: None
- Padding: 15px 34px
- Border-radius: 8px
- Box-shadow: `rgba(234, 179, 8, 0.35) 0px 4px 20px 0px` (golden glow, from DESIGN.md)
- Text color: Light gray `#E4E4E7`

**Animation:**
- Headline enters with **character-by-character type effect** + golden glow, 0.4s total
- Subheading fades in below, 0.3s after headline completes
- Button **scales up** (0.9 → 1.0 over 0.5s) with a subtle **bounce easing** (back.out(1.7)), 0.6s after subheading
- Button has a **continuous glow pulse** (box-shadow opacity tween, 1.5s cycle) while visible
- A golden **star particle burst** animates around the button on entrance (6–8 small star/sparkle SVGs rotating and scaling, GSAP timeline, 0.8s duration)

**VO:** "Essayez AutomationBoost gratuitement pendant quatorze jours. Aucune carte de crédit requise. Transformez votre stratégie social aujourd'hui."

**Subtitle:** Golden dynamic text for every VO line, synced, Orbitron font, lower-safe area.

**Techniques:**
- Kinetic typography (typed headline + glow)
- Background image with blur and opacity (depth texture)
- Composed CTA button with golden glow (not a screenshot)
- Bounce-scale entrance (back.out easing)
- Particle burst animation (small SVG stars rotating + scaling)
- Pulsing glow on button
- Dynamic caption overlay (per-line golden text sync'd to VO)

**Customize:**
- Font: Orbitron for headline, Inter for subheading and button
- Colors: Golden text accents, dark background, golden button glow
- Button: Real interactive styling from DESIGN.md (black bg, light text, golden shadow)
- Background image: `capture/assets/tony-payet.jpg` at 0.35 opacity, blur(4px)
- Particles: 6–8 small stars, SVG or unicode star ★, rotating 360deg, scaling 1.0 → 0 over 0.8s

**SFX:** Bright "success" chime on button entrance. Sparkle/tinkle sounds on particle burst. Sustained warm pad holds underneath VO (music swell). Final chord resolution after VO ends.

---

## Transition Strategy

- **Beat 1 → 2:** Hard cut (0 fade), icons and cards appear immediately as Beat 1 text fades out
- **Beat 2 → 3:** Hard fade to black (0.3s), then image slide-in begins
- **Beat 3 → 4:** Fade to black (0.8s) as image exits
- **Beat 4 → 5:** Fade to black (0.5s) as last card exits
- **Beat 5 → End:** Fade to black (0.4s) as final CTA fades

All transitions are **black-bridge crossfades** (not color transitions or shader effects) to keep the focus on the kinetic content, not the transitions. Clean, fast, modern.

---

## Music & SFX Summary

**Music (underscore):**
- Warm synth pad (sustains 0:00–0:48, never loud)
- Minimal drums (light 4-on-floor, enters at Beat 2, adds momentum)
- Swell at Beat 3 reveal (pad volume increases 20%)
- Final chord holds through CTA (resolved, confident close)
- Genre: Minimal electronic, forward-momentum energy

**SFX breakdown by beat:**
- Beat 1: Typewriter clicks + icon whoosh stagger
- Beat 2: Error beep (repeating jitter), anxiety tension
- Beat 3: Slide-in whoosh, typewriter clicks, underline ding
- Beat 4: Card entry chimes, ascending transition tones, glow hum
- Beat 5: Button success chime, sparkle/tinkle on particles, music swell + final chord

Total VO duration: ~35 seconds (allows ~5s for intro + 8s for outro/hold on CTA).

---

## Video Statistics

**Total duration:** ~50 seconds (48s + fade-to-black at end)
**Beats:** 5
**Assets used:** tony-payet.jpg (appears in Beats 3 and 5)
**Typography:** Orbitron (display) + Inter (body) + Rajdhani (labels)
**Color palette:** Black, Dark Navy, Light Gray, Golden Accent (from DESIGN.md)
**Captions:** Synced golden dynamic subtitles, Orbitron font, lower-safe area
**Target format:** 9:16 vertical (1080×1920)
**Quality bar:** Mobile-first pacing, fast cuts, high motion density, brand-faithful color/typography, real asset integration (not generic template).

