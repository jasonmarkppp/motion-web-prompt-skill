# Background Gallery

> animated background showcase gallery with WebGL/CSS effects

**Category:** Hero Section · **Tags:** Animated BG, Showcase, Visual

---

Create a premium animated animated background gallery page for "Backdrop" — animated background showcase gallery with WebGL/CSS effects.

## Stack
- React 19 + Vite + TypeScript + Tailwind CSS 4 + motion (Framer Motion v12+)
- Google Fonts: Inter (all)
- Icons: lucide-react

## Design direction
- Mood: visual, experimental, background-focused
- Palette: background #050505, surface #111, primary #FFFFFF, accent #8B5CF6, text #FFFFFF
- Layout: fullscreen background canvas, floating card grid selecting effects
- Motion: 5 switchable backgrounds: gradient mesh, particle field, aurora, grid warp, noise
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
1. **Hero with live background** — match the design direction above
2. **Effect selector grid** — match the design direction above
3. **Code snippet per effect** — match the design direction above
4. **CTA** — match the design direction above
5. **Footer** — match the design direction above

## Hero requirements
- Headline: "Backgrounds that steal the show"
- Subhead: "Copy-paste animated backgrounds for your next hero section."
- Primary CTA: "Browse effects" | Secondary: "View demo"
- Live WebGL/CSS animated gradient mesh filling viewport

## Animation spec
- Page load: stagger children with 0.08s delay, y: 24 → 0, opacity 0 → 1, ease [0.22, 1, 0.36, 1]
- Scroll reveal: use motion whileInView once, viewport margin -80px
- Buttons: scale 1.02 on hover, subtle glow using primary color at 20% opacity
- Background transitions crossfade 600ms when user selects effect card

## Typography
- Display: Inter 48 weight 600
- Body: Inter 15
- Use tight tracking on headlines (-0.02em), relaxed line-height on body (1.65)

## Quality bar
- No generic AI slop: avoid purple-on-white clichés unless specified
- Pixel-polished spacing (8px grid), real hover/focus states, accessible contrast
- Ship a complete single-page site — no lorem ipsum placeholders in hero/CTA
- All interactive elements keyboard-focusable with visible focus rings

## Deliverable
Output all component files with working imports. App.tsx composes the full page. index.css sets Tailwind layers and CSS variables for the palette above.
