# Design Rocket

> motion-first design studio with reel-heavy portfolio layout

**Category:** Agency · **Tags:** Creative, Motion, Portfolio

---

Create a premium animated motion design studio landing page for "Design Rocket" — motion-first design studio with reel-heavy portfolio layout.

## Stack
- React 19 + Vite + TypeScript + Tailwind CSS 4 + motion (Framer Motion v12+)
- Google Fonts: Anton or Bebas Neue + Roboto
- Icons: lucide-react

## Design direction
- Mood: bold, motion-design, show-don't-tell
- Palette: background #000000, surface #0A0A0A, primary #FF3366, accent #FF6B35, text #FFFFFF
- Layout: video reel grid, horizontal scroll project strip, bold condensed type
- Motion: horizontal scroll section with snap, video thumbnails play on hover
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
2. **Reel grid** — match the design direction above
3. **Horizontal project scroll** — match the design direction above
4. **Capabilities** — match the design direction above
5. **Clients** — match the design direction above
6. **Contact** — match the design direction above
7. **Footer** — match the design direction above

## Hero requirements
- Headline: "DESIGN IN MOTION"
- Subhead: "Design Rocket creates interfaces that move people — literally."
- Primary CTA: "Watch reel" | Secondary: "View demo"
- Autoplay-muted video loop background with gradient overlay

## Animation spec
- Page load: stagger children with 0.08s delay, y: 24 → 0, opacity 0 → 1, ease [0.22, 1, 0.36, 1]
- Scroll reveal: use motion whileInView once, viewport margin -80px
- Buttons: scale 1.02 on hover, subtle glow using primary color at 20% opacity
- Add one signature scroll-linked parallax layer in the hero only

## Typography
- Display: Anton 80 uppercase
- Body: Roboto 16
- Use tight tracking on headlines (-0.02em), relaxed line-height on body (1.65)

## Quality bar
- No generic AI slop: avoid purple-on-white clichés unless specified
- Pixel-polished spacing (8px grid), real hover/focus states, accessible contrast
- Ship a complete single-page site — no lorem ipsum placeholders in hero/CTA
- All interactive elements keyboard-focusable with visible focus rings

## Deliverable
Output all component files with working imports. App.tsx composes the full page. index.css sets Tailwind layers and CSS variables for the palette above.
