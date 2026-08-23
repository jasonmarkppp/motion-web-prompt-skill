# Strat

> strategy consultancy with editorial black-white-red typography

**Category:** Agency · **Tags:** Consulting, Minimal, Editorial

---

Create a premium animated consulting firm landing page for "Strat" — strategy consultancy with editorial black-white-red typography.

## Stack
- React 19 + Vite + TypeScript + Tailwind CSS 4 + motion (Framer Motion v12+)
- Google Fonts: Helvetica Neue or Inter (display) + Georgia for pull quotes
- Icons: lucide-react

## Design direction
- Mood: authoritative, editorial, McKinsey-meets-design
- Palette: background #FFFFFF, surface #FAFAFA, primary #000000, accent #DC2626, text #000000
- Layout: oversized typography, red accent underline on key words, client list
- Motion: minimal — red line draws width 0→100% under headline on load
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
- Headline: "Strategy that ships"
- Subhead: "Strat partners with founders to turn vision into executable roadmaps."
- Primary CTA: "Work with us" | Secondary: "View demo"
- Bold black headline with red accent bar on one keyword

## Animation spec
- Page load: stagger children with 0.08s delay, y: 24 → 0, opacity 0 → 1, ease [0.22, 1, 0.36, 1]
- Scroll reveal: use motion whileInView once, viewport margin -80px
- Buttons: scale 1.02 on hover, subtle glow using primary color at 20% opacity
- Add one signature scroll-linked parallax layer in the hero only

## Typography
- Display: Inter 64 weight 800 tight
- Body: Inter 17
- Use tight tracking on headlines (-0.02em), relaxed line-height on body (1.65)

## Quality bar
- No generic AI slop: avoid purple-on-white clichés unless specified
- Pixel-polished spacing (8px grid), real hover/focus states, accessible contrast
- Ship a complete single-page site — no lorem ipsum placeholders in hero/CTA
- All interactive elements keyboard-focusable with visible focus rings

## Deliverable
Output all component files with working imports. App.tsx composes the full page. index.css sets Tailwind layers and CSS variables for the palette above.
