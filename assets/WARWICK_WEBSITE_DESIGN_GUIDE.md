# University of Warwick — Web Design Guide

## Brand Colors (CSS Custom Properties)

The site uses a token-based color system via CSS custom properties:

- **Masthead**: `--w-sys-colors-masthead: var(--w-ref-colors-lavender-500)`
- **Masthead Secondary**: `--w-sys-colors-masthead-secondary: var(--w-ref-colors-lavender-300)`
- **Theme Color** (meta): `#3C1053` (deep aubergine/purple)
- **Error/Warning**: `#9d2235` (dark red)
- **Alert Banner**: `#F9D5CD` (soft peach)

### Brand Palette Names (used in class modifiers)
- `id7-brand-lavender` — primary brand
- `id7-brand-coral` — accent (spotlight sections)
- `id7-brand-paleblue` — news/feature sections
- `id7-brand-yellow` — research sections

### Background Modifiers
- `bg-primary-900` — darkest (near-bl[48;68;127;2176;1778tack `#0C0C0C` for dark hero)
- `bg-primary-500` — standard brand fill
- `bg-primary-300` — lighter tint

## Typography

**Typekit font**: `https://use.typekit.net/iog2qgq.css`

### Key Typographic Styles
- **Rankings Key Stat**: `font-size: 4em; font-weight: 900`
- **Rankings Description**: `font-size: 1.2em; font-weight: 500`
- **Body/General**: Inherited from the ID7 framework (system defaults + Typekit)

## Logo & Crest Assets

| Asset | URL |
|---|---|
| **Wordmark (SVG)** | `https://d36jn9qou1tztq.cloudfront.net/static_war/render/id7/images/wordmark.svg.136055278947` |
| **Dynamic Crest (SVG)** | `https://d36jn9qou1tztq.cloudfront.net/static_war/render/id7/images/crest-dynamic.svg.481631441674` |
| **Favicon (32×32 PNG)** | `https://d36jn9qou1tztq.cloudfront.net/static_war/render/id7/images/favicon-32x32.png.316569982511` |
| **Favicon (ICO, light)** | `https://d36jn9qou1tztq.cloudfront.net/static_war/render/id7/images/favicon.ico.425836117052` |
| **Favicon (ICO, dark mode)** | `https://d36jn9qou1tztq.cloudfront.net/static_war/render/id7/images/favicon-dark-mode.ico.326472871356` |
| **Apple Touch Icon (180×180)** | `https://d36jn9qou1tztq.cloudfront.net/static_war/render/id7/images/apple-touch-icon-180x180.png.165120660824` |
| **OG Image** | `https://warwick.ac.uk/250188_og-image_creation_-_lavender.jpg` |
| **Negative Crest** (dark bg) | Referenced via `--w-ref-images-crestNegative` (CSS variable, not a direct URL) |

## Layout System

- **Framework**: "ID7" — Warwick's in-house design system
- **Grid**: Bootstrap 3-style (`col-sm-*`, `col-md-*`) combined with custom `layout-row` / `layout-col--N` (N out of 12)
- **Container**: `.id7-fixed-width-container` wraps the page
- **Full-width sections**: `.full-width` class on `.container-component`

### Common Layout Patterns
- **Hero**: `.hero-video-text.hero-image-layout` with a 6/6 text+image split
- **Card Grid**: `.layout-col--3` × 4 (quarter-width cards with hover-up effect)
- **News Tiles**: `.news-tiles > .news-tile > .panel` structure
- **Spotlight (featured)**: Full-width colored band with single large tile
- **Stats Row**: 3-col (`layout-col--4`) with large stat number + description

## Component Patterns

### Buttons
- **Primary CTA**: `.btn.btn-branded` — brand-colored, often with `fa-arrow-circle-right` icon
- **Default/Round**: `.btn.btn-default` inside `.roundBtn` — circular arrow buttons on cards
- **Vertical stacking**: `.buttons-component.buttons-component-vertical`

### Cards (Box Links)
