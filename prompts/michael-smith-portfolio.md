# Michael Smith Portfolio

> photographer portfolio with masonry gallery and minimal bio

**Category:** Portfolio · **Tags:** Personal, Minimal, Photography

---

Create a premium animated personal portfolio for "Michael Smith" — photographer portfolio with masonry gallery and minimal bio.

## Stack
- React 19 + Vite + TypeScript + Tailwind CSS 4 + motion (Framer Motion v12+)
- Google Fonts: Cormorant Garamond (display) + Lato (body)
- Icons: lucide-react

## Design direction
- Mood: personal, artistic, understated elegance
- Palette: background #F7F5F2, surface #FFFFFF, primary #2C2C2C, accent #8B7355, text #2C2C2C
- Layout: masonry photo grid, minimal nav, about section with portrait
- Motion: images fade in staggered on scroll, lightbox on click
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
1. **Hero (name + role)** — match the design direction above
2. **Gallery masonry** — match the design direction above
3. **About** — match the design direction above
4. **Services** — match the design direction above
5. **Contact** — match the design direction above
6. **Footer** — match the design direction above

## Hero requirements
- Headline: "Michael Smith"
- Subhead: "Portrait & editorial photographer based in London."
- Primary CTA: "View gallery" | Secondary: "View demo"
- Large hero portrait photograph with subtle grain overlay

## Animation spec
- Page load: stagger children with 0.08s delay, y: 24 → 0, opacity 0 → 1, ease [0.22, 1, 0.36, 1]
- Scroll reveal: use motion whileInView once, viewport margin -80px
- Buttons: scale 1.02 on hover, subtle glow using primary color at 20% opacity
- Add one signature scroll-linked parallax layer in the hero only

## Typography
- Display: Cormorant Garamond 64 weight 300
- Body: Lato 15
- Use tight tracking on headlines (-0.02em), relaxed line-height on body (1.65)

## Quality bar
- No generic AI slop: avoid purple-on-white clichés unless specified
- Pixel-polished spacing (8px grid), real hover/focus states, accessible contrast
- Ship a complete single-page site — no lorem ipsum placeholders in hero/CTA
- All interactive elements keyboard-focusable with visible focus rings

## Deliverable
Output all component files with working imports. App.tsx composes the full page. index.css sets Tailwind layers and CSS variables for the palette above.
