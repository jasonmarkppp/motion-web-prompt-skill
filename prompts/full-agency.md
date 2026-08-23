# Full Agency

> full-service creative agency with work gallery and service breakdown

**Category:** Agency · **Tags:** Full page, Portfolio, Services

---

Create a premium animated full agency website for "Studio North" — full-service creative agency with work gallery and service breakdown.

## Stack
- React 19 + Vite + TypeScript + Tailwind CSS 4 + motion (Framer Motion v12+)
- Google Fonts: PP Editorial New style — use Playfair Display + Inter
- Icons: lucide-react

## Design direction
- Mood: premium agency, portfolio-forward, cinematic
- Palette: background #111111, surface #1A1A1A, primary #FFFFFF, accent #F59E0B, text #FAFAFA
- Layout: fullscreen work reel grid, services accordion, contact with map
- Motion: work grid images scale 1.05 on hover with overlay fade, smooth scroll sections
- Responsive: mobile-first; breakpoint at 768px; max content width 1200px

## File structure
```
src/
  App.tsx
  index.css
  components/
    Navbar.tsx
    Hero.tsx
    LogoCloud.tsx
    Features.tsx
    Showcase.tsx
    Testimonials.tsx
    Pricing.tsx
    FAQ.tsx
    CTA.tsx
    Footer.tsx
```

## Page sections (in order)
1. **Hero** — match the design direction above
2. **Selected work (6-up grid)** — match the design direction above
3. **Services** — match the design direction above
4. **Process** — match the design direction above
5. **Team** — match the design direction above
6. **Awards** — match the design direction above
7. **Contact** — match the design direction above
8. **Footer** — match the design direction above

## Hero requirements
- Headline: "We craft brands worth remembering"
- Subhead: "Studio North is a creative agency for companies ready to lead their category."
- Primary CTA: "View work" | Secondary: "Our services"
- Full-bleed background video placeholder with dark overlay 60%

## Animation spec
- Page load: stagger children with 0.08s delay, y: 24 → 0, opacity 0 → 1, ease [0.22, 1, 0.36, 1]
- Scroll reveal: use motion whileInView once, viewport margin -80px
- Buttons: scale 1.02 on hover, subtle glow using primary color at 20% opacity
- Add one signature scroll-linked parallax layer in the hero only

## Typography
- Display: Playfair Display 56
- Body: Inter 16
- Use tight tracking on headlines (-0.02em), relaxed line-height on body (1.65)

## Quality bar
- No generic AI slop: avoid purple-on-white clichés unless specified
- Pixel-polished spacing (8px grid), real hover/focus states, accessible contrast
- Ship a complete single-page site — no lorem ipsum placeholders in hero/CTA
- All interactive elements keyboard-focusable with visible focus rings

## Deliverable
Output all component files with working imports. App.tsx composes the full page. index.css sets Tailwind layers and CSS variables for the palette above.
