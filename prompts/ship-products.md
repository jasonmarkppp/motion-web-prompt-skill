# Ship Products

> product launch page with urgency and bold orange-yellow energy

**Category:** Landing Page · **Tags:** Startup, Launch, Bold

---

Create a premium animated product launch landing page for "Ship" — product launch page with urgency and bold orange-yellow energy.

## Stack
- React 19 + Vite + TypeScript + Tailwind CSS 4 + motion (Framer Motion v12+)
- Google Fonts: Cabinet Grotesk or DM Sans (display) + DM Sans body
- Icons: lucide-react

## Design direction
- Mood: urgent, exciting, launch-day energy
- Palette: background #FFFBEB, surface #FFFFFF, primary #EA580C, accent #FACC15, text #1C1917
- Layout: countdown or launch badge, feature checklist, early-access form
- Motion: confetti burst on CTA click (lightweight CSS), badge pulse
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
- Headline: "Stop planning. Start shipping."
- Subhead: "Ship gives indie makers the launch playbook that actually converts."
- Primary CTA: "Join waitlist" | Secondary: "View demo"
- Launch badge 'Coming Q2 2026' with pulse animation

## Animation spec
- Page load: stagger children with 0.08s delay, y: 24 → 0, opacity 0 → 1, ease [0.22, 1, 0.36, 1]
- Scroll reveal: use motion whileInView once, viewport margin -80px
- Buttons: scale 1.02 on hover, subtle glow using primary color at 20% opacity
- Add one signature scroll-linked parallax layer in the hero only

## Typography
- Display: DM Sans 56 weight 700
- Body: DM Sans 16
- Use tight tracking on headlines (-0.02em), relaxed line-height on body (1.65)

## Quality bar
- No generic AI slop: avoid purple-on-white clichés unless specified
- Pixel-polished spacing (8px grid), real hover/focus states, accessible contrast
- Ship a complete single-page site — no lorem ipsum placeholders in hero/CTA
- All interactive elements keyboard-focusable with visible focus rings

## Deliverable
Output all component files with working imports. App.tsx composes the full page. index.css sets Tailwind layers and CSS variables for the palette above.
