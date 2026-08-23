# Nebula Glow

> cosmic hero with glass cards and nebula gradient blobs

**Category:** Hero Section · **Tags:** 3D, Cosmic, Glass

---

Create a premium animated hero-first landing page for "Nebula" — cosmic hero with glass cards and nebula gradient blobs.

## Stack
- React 19 + Vite + TypeScript + Tailwind CSS 4 + motion (Framer Motion v12+)
- Google Fonts: Clash Display or Satoshi (display) + General Sans (body)
- Icons: lucide-react

## Design direction
- Mood: dreamy, immersive, premium
- Palette: background #030014, surface rgba(255,255,255,0.06), primary #A78BFA, accent #F472B6, text #F8FAFC
- Layout: full-viewport hero, floating glass stat cards, gradient orbs behind content
- Motion: orbs drift slowly (transform translate 30s loop), glass cards blur backdrop 16px
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
2. **Social proof strip** — match the design direction above
3. **Feature pills** — match the design direction above
4. **CTA band** — match the design direction above
5. **Footer** — match the design direction above

## Hero requirements
- Headline: "Build worlds, not just pages"
- Subhead: "Immersive web experiences that feel like stepping into another dimension."
- Primary CTA: "Explore templates" | Secondary: "View demo"
- 3 gradient orbs (violet, pink, blue) with mix-blend-screen behind headline

## Animation spec
- Page load: stagger children with 0.08s delay, y: 24 → 0, opacity 0 → 1, ease [0.22, 1, 0.36, 1]
- Scroll reveal: use motion whileInView once, viewport margin -80px
- Buttons: scale 1.02 on hover, subtle glow using primary color at 20% opacity
- Add one signature scroll-linked parallax layer in the hero only

## Typography
- Display: Satoshi 72/80 weight 700
- Body: General Sans 17
- Use tight tracking on headlines (-0.02em), relaxed line-height on body (1.65)

## Quality bar
- No generic AI slop: avoid purple-on-white clichés unless specified
- Pixel-polished spacing (8px grid), real hover/focus states, accessible contrast
- Ship a complete single-page site — no lorem ipsum placeholders in hero/CTA
- All interactive elements keyboard-focusable with visible focus rings

## Deliverable
Output all component files with working imports. App.tsx composes the full page. index.css sets Tailwind layers and CSS variables for the palette above.
