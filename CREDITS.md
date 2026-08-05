# Credits

## The artwork

All 61 honorific ligatures in this font are the calligraphic work of
**BaAlwi Heritage (ID)**.

| | |
|---|---|
| Source project | [baalwi-id/arabic-honorific-ligatures](https://github.com/baalwi-id/arabic-honorific-ligatures) |
| Package | [`arabic-honorific-ligatures`](https://www.npmjs.com/package/arabic-honorific-ligatures) on npm |
| Author | BaAlwi Heritage (ID) — [baalwi.net](https://baalwi.net) · info@baalwi.net |
| Copyright | © 2026 BaAlwi Heritage (ID) |
| Licence | [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) |

In the source project's own words, the artwork was handcrafted in Inkscape, with
glyph forms derived from Kaleam and Kelk, drawing inspiration from the visual
forms and compositions found in KFGQPC Arabic Symbol and in classical Arabic
typography.

**About BaAlwi Heritage:** Ba Alawi Masters Heritage Trust is dedicated to the
preservation and advancement of the cultural and textual heritage of the Ba'alwi
Masters — collecting, authenticating and digitising manuscripts and making them
freely available through digital platforms and emerging technologies.

If you use this font, the CC BY 4.0 licence asks you to credit BaAlwi Heritage (ID)
and link to the licence. Crediting the source project directly is the kindest way
to do that.

---

## This repository

This repository contains no original artwork. It packages the source artwork as an
installable OpenType font and adds the material needed to use it: the compiled font
binaries, a stylesheet, a glyph browser, a cheat sheet and a typing helper.

Changes made to the source material, as required by the licence:

- The SVG outlines were scaled by a single global factor, bottom-aligned to a
  typographic baseline and given uniform sidebearings, then compiled into CFF and
  TrueType outlines.
- Contour winding was recomputed from nesting depth to match font-format
  conventions. The outlines themselves are unchanged; ink area agrees with the
  source artwork to within 1.0% across all 61 glyphs.
- Codepoints were assigned. Where the source project proposed a codepoint that
  Unicode 16.0 does not actually assign, the glyph was placed in the Private Use
  Area instead. See the README for the reasoning and the full list.
- The Arabic text recorded for `mix-ajjalallahu-farajah` was corrected from
  أجّل الله فرجه to عجّل الله فرجه. The artwork plainly begins with ع, and the
  source project's own transliteration (`‘ajjalallāhu farajah`) uses an ayn.
  This string is what the glyph browser offers as a plain-text fallback, so it
  had to match the artwork.

## Licence notice

[`LICENSE`](LICENSE) holds the verbatim Creative Commons Attribution 4.0
International legal code, unaltered, so that automated tooling can identify it.
The notice that belongs with it is this:

> Artwork copyright © 2026 BaAlwi Heritage (ID) — https://baalwi.net
> Source: https://github.com/baalwi-id/arabic-honorific-ligatures
> Licensed under CC BY 4.0: https://creativecommons.org/licenses/by/4.0/
> This font build is a derivative of that artwork; changes are listed above.

If you redistribute this font, reproducing that block satisfies the licence's
attribution requirement.

## Fonts referenced in the documentation

[Scheherazade New](https://software.sil.org/scheherazade/) (SIL) and
[Noto Naskh Arabic](https://fonts.google.com/noto/specimen/Noto+Naskh+Arabic)
(Google) are mentioned as examples of fonts that cover some of the same Unicode
codepoints. They are not included or modified here.
