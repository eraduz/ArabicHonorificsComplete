# Cheat sheet

61 glyphs. **20** have a real Unicode codepoint and survive copy-paste into other apps; the rest are Private Use Area and only display where this font is installed.

**Easiest:** open the [Word add-in](docs/addin/README.md) and click one, or install the AutoHotkey helper and type the code in the *Code* column followed by a space.

The short codes follow a pattern, so you only have to learn the group code and the Arabic pronoun suffix: nothing = *-hu*, `a` = *-hā*, `m` = *-hum*, `ma` = *-humā*, `n` = *-hunna*. So `\ra` is *raḍiyallāhu ʿanhu* and `ama` is *raḍiyallāhu ʿanhumā*; the same suffixes work on `\rh` (raḥimahullāh), `\rm` (raḥmatullāhi), `s` (ʿalayhis salām) and the rest.

**Without any helper:** type the hex code from the *Alt+X* column and press `Alt`+`X`. Word turns it into the character; then apply the *Arabic Honorifics Complete* font to it.

The `Glyph` column holds the actual character — copy it straight from here.

> **If a PUA glyph shows as an empty box in Word**, the font is fine — Word is using its *Latin text* font for it, because the Private Use Area has no Unicode script and so does not go to the *complex scripts* slot the way the `U+FDxx` honorifics do. Select the text, press `Ctrl`+`D`, and set **both** font boxes to Arabic Honorifics Complete.

## alh — Allah

| Glyph | Code | Arabic | Transliteration | Alt+X | Unicode | Copy-paste safe |
|---|---|---|---|---|---|---|
| ﷿ | `\azza` | عزَّ وجلَّ | *‘azza wa jalla* | `FDFF` | U+FDFF | yes |
| ﷻ | `\jj` | جلَّ جلاله | *jalla jalāluh* | `FDFB` | U+FDFB | yes |
|  | `\jwa` | جلَّ وعلا | *jalla wa ‘ala* | `E902` | — | no (PUA) |
| ﷾ | `\swt` | سبحانه وتعالى | *subḥanahu wa ta‘ālā* | `FDFE` | U+FDFE | yes |
| ﵎ | `\twt` | تبارك وتعالى | *tabāraka wa ta‘ālā* | `FD4E` | U+FD4E | yes |
|  | `\taala` | تعالى | *ta‘ālā* | `E905` | — | no (PUA) |

## sal — Sallallahu

| Glyph | Code | Arabic | Transliteration | Alt+X | Unicode | Copy-paste safe |
|---|---|---|---|---|---|---|
| ﵆ | `\sawa` | صلى الله عليه وعلى آله | *ṣallallāhu ‘alayhi wa ‘alā ālih* | `FD46` | U+FD46 | yes |
| ﵌ | `\sawas` | صلى الله عليه وعلى آله وسلم | *ṣallallāhu ‘alayhi wa ‘alā ālihi wa sallam* | `FD4C` | U+FD4C | yes |
| ﷺ | `\saw` | صلى الله عليه وسلم | *ṣallallāhu ‘alayhi wa sallam (rounded)* | `FDFA` | U+FDFA | yes |
|  | `\saw2` | صلى الله عليه وسلم | *ṣallallāhu ‘alayhi wa sallam (square)* | `E909` | — | no (PUA) |

## slt — As-Salatu was-Salam

| Glyph | Code | Arabic | Transliteration | Alt+X | Unicode | Copy-paste safe |
|---|---|---|---|---|---|---|
| ﵊ | `\sls` | عليه الصلاة والسلام | *‘alayhiṣ ṣalātu was salām* | `FD4A` | U+FD4A | yes |
|  | `\slsa` | عليها الصلاة والسلام | *‘alayhaṣ ṣalātu was salām* | `E90B` | — | no (PUA) |
|  | `\slsal` | عليه وعلى آله الصلاة والسلام | *‘alayhi wa ‘alā ālihiṣ ṣalatu was salām* | `E90C` | — | no (PUA) |
|  | `\slsm` | عليهم الصلاة والسلام | *‘alayhimuṣ ṣalātu was salām* | `E90D` | — | no (PUA) |
|  | `\slsma` | عليهما الصلاة والسلام | *‘alayhimaṣ ṣalātu was salām* | `E90E` | — | no (PUA) |

## slm — As-Salam

| Glyph | Code | Arabic | Transliteration | Alt+X | Unicode | Copy-paste safe |
|---|---|---|---|---|---|---|
| ﵇ | `\as` | عليه السلام | *‘alayhis salām* | `FD47` | U+FD47 | yes |
| ﵍ | `\asa` | عليها السلام | *‘alayhas salām* | `FD4D` | U+FD4D | yes |
| ﵈ | `\asm` | عليهم السلام | *‘alayhimus salām* | `FD48` | U+FD48 | yes |
| ﵉ | `\asma` | عليهما السلام | *‘alayhimas salām* | `FD49` | U+FD49 | yes |

## slw — Salawatullah

| Glyph | Code | Arabic | Transliteration | Alt+X | Unicode | Copy-paste safe |
|---|---|---|---|---|---|---|
|  | `\sw` | صلوات الله عليه | *ṣalawātullāhi ‘alayhi* | `E913` | — | no (PUA) |
|  | `\swa` | صلوات الله عليها | *ṣalawātullāhi ‘alayhā* | `E914` | — | no (PUA) |
|  | `\swm` | صلوات الله عليهم | *ṣalawātullāhi ‘alayhim* | `E915` | — | no (PUA) |
|  | `\swma` | صلوات الله عليهما | *ṣalawātullāhi ‘alayhimā* | `E916` | — | no (PUA) |

## rad — Radiyallahu

| Glyph | Code | Arabic | Transliteration | Alt+X | Unicode | Copy-paste safe |
|---|---|---|---|---|---|---|
| ﵁ | `\ra` | رضي الله عنه | *raḍiyallāhu ‘anhu* | `FD41` | U+FD41 | yes |
| ﵂ | `\raa` | رضي الله عنها | *raḍiyallāhu ‘anhā* | `FD42` | U+FD42 | yes |
| ﵃ | `\ram` | رضي الله عنهم | *raḍiyallāhu ‘anhum* | `FD43` | U+FD43 | yes |
| ﵄ | `\rama` | رضي الله عنهما | *raḍiyallāhu ‘anhumā* | `FD44` | U+FD44 | yes |
| ﵅ | `\ran` | رضي الله عنهن | *raḍiyallāhu ‘anhunna* | `FD45` | U+FD45 | yes |
|  | `\ridwan` | عليهم رضوان الله | *‘alayhim riḍwānullāh* | `E91C` | — | no (PUA) |

## rhm — Rahimahullah

| Glyph | Code | Arabic | Transliteration | Alt+X | Unicode | Copy-paste safe |
|---|---|---|---|---|---|---|
| ﵀ | `\rh` | رحمه الله | *raḥimahullāh* | `FD40` | U+FD40 | yes |
|  | `\rha` | رحمها الله | *raḥimahallāh* | `E91E` | — | no (PUA) |
| ﵏ | `\rhm` | رحمهم الله | *raḥimahumullāh* | `FD4F` | U+FD4F | yes |
|  | `\rhma` | رحمهما الله | *raḥimahumallāh* | `E920` | — | no (PUA) |
|  | `\rhn` | رحمهن الله | *raḥimahunnallāh* | `E921` | — | no (PUA) |

## rmt — Rahmatullah

| Glyph | Code | Arabic | Transliteration | Alt+X | Unicode | Copy-paste safe |
|---|---|---|---|---|---|---|
|  | `\rm` | رحمة الله عليه | *raḥmatullāhi ‘alayh* | `E922` | — | no (PUA) |
|  | `\rma` | رحمة الله عليها | *raḥmatullāhi ‘alayhā* | `E923` | — | no (PUA) |
|  | `\rmm` | رحمة الله عليهم | *raḥmatullāhi ‘alayhim* | `E924` | — | no (PUA) |
|  | `\rmma` | رحمة الله عليهما | *raḥmatullāhi ‘alayhimā* | `E925` | — | no (PUA) |
|  | `\rmn` | رحمة الله عليهن | *raḥmatullāhi ‘alayhinna* | `E926` | — | no (PUA) |
|  | `\arr` | عليه الرحمة | *‘alayhir raḥmah* | `E927` | — | no (PUA) |
|  | `\arra` | عليها الرحمة | *‘alayhar raḥmah* | `E928` | — | no (PUA) |

## qds — Qaddasa / Quddisa

| Glyph | Code | Arabic | Transliteration | Alt+X | Unicode | Copy-paste safe |
|---|---|---|---|---|---|---|
| ﵋ | `\qs` | قدس سره | *quddisa sirruhu* | `FD4B` | U+FD4B | yes |
|  | `\qas` | قدس الله سره | *qaddasallāhu sirrahu* | `E92A` | — | no (PUA) |
|  | `\qasa` | قدس الله سرها | *qaddasallāhu sirrahā* | `E92B` | — | no (PUA) |
|  | `\qasm` | قدس الله سرهم | *qaddasallāhu sirrahum* | `E92C` | — | no (PUA) |
|  | `\qasma` | قدس الله سرهما | *qaddasallāhu sirrahumā* | `E92D` | — | no (PUA) |
|  | `\qsma` | قدس سرهما | *quddisa sirrahumā* | `E92E` | — | no (PUA) |
|  | `\qsm` | قدس سرهم | *quddisa sirrahum* | `E92F` | — | no (PUA) |
|  | `\qsasr` | قدست أسرارهم | *quddisat asrāruhum* | `E930` | — | no (PUA) |

## hfz — Hafizahullah

| Glyph | Code | Arabic | Transliteration | Alt+X | Unicode | Copy-paste safe |
|---|---|---|---|---|---|---|
|  | `\hf` | حفظه الله | *hafiẓahullāh* | `E931` | — | no (PUA) |
|  | `\hfa` | حفظها الله | *hafiẓahallāh* | `E932` | — | no (PUA) |
|  | `\hfma` | حفظهما الله | *hafiẓahumallāh* | `E933` | — | no (PUA) |
|  | `\hfm` | حفظهم الله | *hafiẓahumullāh* | `E934` | — | no (PUA) |

## mix — Mixed

| Glyph | Code | Arabic | Transliteration | Alt+X | Unicode | Copy-paste safe |
|---|---|---|---|---|---|---|
|  | `\ajjal` | عجّل الله فرجه | *‘ajjalallāhu farajah* | `E935` | — | no (PUA) |
|  | `\gafar` | غفر الله له | *gafarallāhu lahu* | `E936` | — | no (PUA) |
|  | `\karam` | كرم الله وجهه | *karamallāhu wajhah* | `E937` | — | no (PUA) |
|  | `\nafa` | نفعنا الله به | *nafa‘anallāhu bihi* | `E938` | — | no (PUA) |
|  | `\nawwar` | نوّر الله مرقده | *nawwarallāhu marqadahu* | `E939` | — | no (PUA) |
|  | `\damat` | دامت بركاتهم | *dāmat barakātihim* | `E93A` | — | no (PUA) |
|  | `\taba` | طاب ثراه | *ṭāba tharāhu* | `E93B` | — | no (PUA) |
|  | `\dama` | دام ظله | *dāma ẓilluhu* | `E93C` | — | no (PUA) |

## Stylistic alternate

`sal-sallallahu-alayhi-wa-sallam` ships in two compositions. The rounded one is the default at `U+FDFA`; the square one is reached either through its own PUA slot `U+E909` or by enabling the `ss01` OpenType feature (`font-feature-settings: "ss01"` on the web).
