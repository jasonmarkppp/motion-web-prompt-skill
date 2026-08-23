# Motion Portfolio

> interactive designer portfolio with cursor-following project previews

**Category:** Portfolio · **Tags:** Creative, Interactive, Dark

---

Create a premium animated interactive designer portfolio for "Alex Chen" — interactive designer portfolio with cursor-following project previews.

## Stack
- React 19 + Vite + TypeScript + Tailwind CSS 4 + motion (Framer Motion v12+)
- Google Fonts: Geist Mono + Geist Sans
- Icons: lucide-react

## Design direction
- Mood: interactive, experimental, designer-forward
- Palette: background #0A0A0B, surface #141415, primary #E4E4E7, accent #22C55E, text #FAFAFA
- Layout: project list left, preview panel right follows hover, case study pages
- Motion: project preview image follows cursor in right panel, list item highlight slide
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
1. **Intro** — match the design direction above
2. **Project list + preview** — match the design direction above
3. **About** — match the design direction above
4. **Stack** — match the design direction above
5. **Contact** — match the design direction above
6. **Footer** — match the design direction above

## Hero requirements
- Headline: "Alex Chen"
- Subhead: "Interaction designer crafting interfaces with soul."
- Primary CTA: "Selected work" | Secondary: "View demo"
- Split layout: project names left, large preview right updating on hover

## Animation spec
- Page load: stagger children with 0.08s delay, y: 24 → 0, opacity 0 → 1, ease [0.22, 1, 0.36, 1]
- Scroll reveal: use motion whileInView once, viewport margin -80px
- Buttons: scale 1.02 on hover, subtle glow using primary color at 20% opacity
- Add one signature scroll-linked parallax layer in the hero only

## Typography
- Display: Geist Sans 48 weight 500
- Body: Geist Sans 15
- Use tight tracking on headlines (-0.02em), relaxed line-height on body (1.65)

## Quality bar
- No generic AI slop: avoid purple-on-white clichés unless specified
- Pixel-polished spacing (8px grid), real hover/focus states, accessible contrast
- Ship a complete single-page site — no lorem ipsum placeholders in hero/CTA
- All interactive elements keyboard-focusable with visible focus rings

## Deliverable
Output all component files with working imports. App.tsx composes the full page. index.css sets Tailwind layers and CSS variables for the palette above.
