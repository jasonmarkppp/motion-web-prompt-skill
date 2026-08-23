# Nexora

> next-gen AI workspace with violet accents and crisp UI previews

**Category:** SaaS · **Tags:** AI, Modern, Dark

---

Create a premium animated AI SaaS landing page for "Nexora" — next-gen AI workspace with violet accents and crisp UI previews.

## Stack
- React 19 + Vite + TypeScript + Tailwind CSS 4 + motion (Framer Motion v12+)
- Google Fonts: Geist Sans or Inter (all)
- Icons: lucide-react

## Design direction
- Mood: intelligent, sleek, product-led
- Palette: background #09090B, surface #18181B, primary #8B5CF6, accent #A78BFA, text #FAFAFA
- Layout: product screenshot hero, tabbed feature section, integration logos
- Motion: typing effect on hero subhead optional, tab content crossfade 300ms
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
- Headline: "AI that works where you work"
- Subhead: "Nexora embeds intelligence into every workflow without switching tools."
- Primary CTA: "Try Nexora free" | Secondary: "View demo"
- Product UI mock in browser chrome with violet glow shadow

## Animation spec
- Page load: stagger children with 0.08s delay, y: 24 → 0, opacity 0 → 1, ease [0.22, 1, 0.36, 1]
- Scroll reveal: use motion whileInView once, viewport margin -80px
- Buttons: scale 1.02 on hover, subtle glow using primary color at 20% opacity
- Add one signature scroll-linked parallax layer in the hero only

## Typography
- Display: Geist Sans 56/64 weight 600
- Body: Geist Sans 16
- Use tight tracking on headlines (-0.02em), relaxed line-height on body (1.65)

## Quality bar
- No generic AI slop: avoid purple-on-white clichés unless specified
- Pixel-polished spacing (8px grid), real hover/focus states, accessible contrast
- Ship a complete single-page site — no lorem ipsum placeholders in hero/CTA
- All interactive elements keyboard-focusable with visible focus rings

## Deliverable
Output all component files with working imports. App.tsx composes the full page. index.css sets Tailwind layers and CSS variables for the palette above.
