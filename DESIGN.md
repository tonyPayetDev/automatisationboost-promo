# AutomationBoost – Design System

## 1. Visual Theme

AutomationBoost is a dark-first, tech-forward automation brand. The visual identity is built on high contrast: pure black (`#000000`) backgrounds paired with light gray text (`#E4E4E7`), with a vibrant golden accent (`#EAB308`) that appears in CTAs, shadows, and emphasis elements. The typography hierarchy uses Orbitron (geometric, futuristic) for headlines and display, paired with Inter for body text. The mood is energetic yet confident — automation feels efficient, not cold. Distinctive: golden glowing shadows on interactive elements create a sense of energy and forward momentum; the brand speaks in active voice ("Publiez partout. En automatique.").

## 2. Quick Reference

### Colors

- **Pure Black** (`#000000`): Primary background, buttons, dark surfaces
  - Text on this: `#E4E4E7` (light gray) or `#EAB308` (golden accent)
  - Contrast: Black text on Light Gray = **17.2:1** ✅
- **Light Gray** (`#E4E4E7`): Primary text on dark surfaces, headlines, CTAs
  - On Pure Black: **17.2:1** ✅
  - On Dark Navy (`#0D0D0D`): **14.8:1** ✅
- **Golden Accent** (`#EAB308`): CTAs, glowing shadows, emphasis elements, labels
  - On Pure Black text: accent for labels and emphasis, not primary text
  - Shadow color for glow effects
- **Dark Navy** (`#0D0D0D`): Secondary background tier, cards
  - Border: often `rgba(234, 179, 8, 0.3)` or `rgba(234, 179, 8, 0.5)` (golden border with opacity)
- **Mid Gray** (`#A1A1AA`): Secondary text, body copy, metadata on dark surfaces
  - On Pure Black: **5.2:1** ✅ (sufficient for body text)
  - On Dark Navy: **4.8:1** ✅
- **Very Dark Gray** (`#1A1A1A`): Surface tier 3, alternative card background
- **Ultra Dark** (`#050505`): Navigation background, deepest surface
- **Blue Accent** (`#0000EE`): Links (legacy, rarely used in current layouts)

### Fonts

- **Display / Headlines**: `Orbitron` 900 weight (64px) or 700 (44.8px)
  - Used for: hero text ("Publiez Partout. En Automatique.")
  - Weights available: 400, 600, 700, 900
- **Body / UI**: `Inter` 400 weight (19.2px for body), 600 for emphasis
  - Weights available: 300, 400, 500, 600, 700, 800 (variable range)
  - Used for: body copy, labels, CTAs
- **Small Caps / Labels**: `Rajdhani` 600 weight (13.6px with 1.088px letter-spacing)
  - Weights: 300, 400, 500, 600, 700
  - Used for: "Propulsé par l'IA ⚡", accent labels

**Font fallback stack**: `-apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif`

## 3. Component Styles

### Primary CTA Button

- **Background**: `#000000`
- **Text color**: `#E4E4E7`
- **Font**: Inter 700, 17px
- **Padding**: `15px 34px`
- **Border radius**: `8px`
- **Border**: none
- **Box shadow**: `rgba(234, 179, 8, 0.35) 0px 4px 20px 0px` (golden glow)
- **Label example**: "🚀 Essayer Gratuitement 14 Jours"

### Secondary Button (with border)

- **Background**: `#000000`
- **Text color**: `#E4E4E7`
- **Font**: Inter 600, 16px
- **Padding**: `14px 28px`
- **Border radius**: `8px`
- **Border**: `1px solid #1A1A1A`
- **Box shadow**: none
- **Label example**: "▶ Voir la démo"

### Feature Card (Dark Navy)

- **Background**: `#0D0D0D`
- **Text color**: `#E4E4E7`
- **Border**: `1px solid rgba(234, 179, 8, 0.5)` (golden border)
- **Border radius**: `16px`
- **Padding**: `28px` to `48px`
- **Box shadow**: `rgba(234, 179, 8, 0.3) 0px 0px 30px 0px, rgba(234, 179, 8, 0.1) 0px 0px 60px 0px` (subtle golden glow)
- **Font**: Inter 400, 17px
- **Heading font**: Orbitron 600, 17.6px (light gray `#E4E4E7`)

### Navigation Bar

- **Background**: `#050505`
- **Text color**: `#E4E4E7`
- **Padding**: `16px 0px`
- **Height**: `71px`
- **Box shadow**: `rgba(234, 179, 8, 0.1) 0px 4px 20px 0px` (subtle golden top shadow)

## 4. Typography Hierarchy

| Role | Font | Size | Weight | Line Height | Letter Spacing | Color |
|------|------|------|--------|-------------|----------------|-------|
| Display (Hero) | Orbitron | 64px | 900 | 73.6px | -1.92px | `#E4E4E7` |
| Heading (Section) | Orbitron | 44.8px | 700 | 51.52px | -1.344px | `#E4E4E7` |
| Heading 3 (Card) | Orbitron | 17.6px | 600 | 20.24px | -0.528px | `#E4E4E7` |
| Body | Inter | 19.2px | 400 | 32.64px | normal | `#A1A1AA` |
| Label / Accent | Rajdhani | 13.6px | 600 | 23.8px | 1.088px | `#EAB308` |
| Link | Inter | 17px | 400 | 29.75px | normal | `#0000EE` (rarely used) |

## 5. Spacing & Radius

- **Spacing scale** (base unit = 4px): 2, 4, 6, 8, 10, 12, 14, 15, 16, 20, 24, 28, 34, 40, 48
- **Border radius**: `8px` (buttons), `16px` (cards), `100px` (badges, if used)
- **Gutter/padding standard**: 28–48px for cards, 16px for small UI

## 6. Do's & Don'ts

**✅ DO:**
- Use golden accent (`#EAB308`) for CTAs, glowing shadows, and emphasis
- Pair Light Gray (`#E4E4E7`) headlines with Pure Black or Dark Navy backgrounds
- Use Orbitron for all headlines (display, section, card titles) — it's the brand's signature
- Layer golden glows on interactive elements for energy
- Keep body text in Mid Gray (`#A1A1AA`) on dark backgrounds for readability

**❌ DON'T:**
- Use Light Gray on Light Gray (contrast fails)
- Use body fonts (Inter) for headlines — always use Orbitron
- Make golden accent text primary color (it's too bright for body copy)
- Forget the golden border / glow on cards — it's a brand signature
- Use the blue accent (`#0000EE`) in new compositions (legacy color)
- Add brightness / saturation to the golden accent — `#EAB308` is the exact brand gold

