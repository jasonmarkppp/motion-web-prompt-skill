# Forge

> industrial strength branding for builders and manufacturers

**Category:** Landing Page · **Tags:** Industrial, Bold, Dark

---

Create a premium animated landing page for "Forge" — industrial strength branding for builders and manufacturers.

## Stack
- React 19 + Vite + TypeScript + Tailwind CSS 4 + motion (Framer Motion v12+)
- Google Fonts: Bebas Neue or Oswald (display) + Source Sans 3 (body)
- Icons: lucide-react

## Design direction
- Mood: rugged, confident, no-nonsense
- Palette: background #12100E, surface #1C1917, primary #F97316, accent #FBBF24, text #FAFAF9
- Layout: bold typographic hero, thick horizontal rules, orange accent bars
- Motion: sparks particle burst on CTA hover (CSS only, subtle)
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
2. **Logo cloud** — match the design direction above
3. **Features (3-up)** — match the design direction above
4. **Showcase** — match the design direction above
5. **Testimonials** — match the design direction above
6. **Pricing** — match the design direction above
7. **FAQ** — match the design direction above
8. **CTA** — match the design direction above
9. **Footer** — match the design direction above

## Hero requirements
- Headline: "BUILT TO LAST"
- Subhead: "Industrial solutions for teams who measure success in decades, not quarters."
- Primary CTA: "Get a quote" | Secondary: "View demo"
- Dark metal texture overlay at 15% opacity on hero bg

## Animation spec
- Page load: stagger children with 0.08s delay, y: 24 → 0, opacity 0 → 1, ease [0.22, 1, 0.36, 1]
- Scroll reveal: use motion whileInView once, viewport margin -80px
- Buttons: scale 1.02 on hover, subtle glow using primary color at 20% opacity
- Add one signature scroll-linked parallax layer in the hero only

## Typography
- Display: Oswald 72 uppercase
- Body: Source Sans 3 17
- Use tight tracking on headlines (-0.02em), relaxed line-height on body (1.65)

## Quality bar
- No generic AI slop: avoid purple-on-white clichés unless specified
- Pixel-polished spacing (8px grid), real hover/focus states, accessible contrast
- Ship a complete single-page site — no lorem ipsum placeholders in hero/CTA
- All interactive elements keyboard-focusable with visible focus rings

## Deliverable
Output all component files with working imports. App.tsx composes the full page. index.css sets Tailwind layers and CSS variables for the palette above.
