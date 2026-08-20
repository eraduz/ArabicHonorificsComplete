# Arabic Honorifics — Word add-in

A task pane for Microsoft Word: all 61 honorifics in a searchable list, click one
and it lands at the cursor with the font already applied.

The point of it is not just convenience. Word keeps a **separate font setting for
Latin text and for complex scripts**, and picks between them by the Unicode script
of each character. Insert a honorific by hand and you have to get the right slot
set, or it draws as an empty box — see the main README. This add-in inserts OOXML
that sets `w:ascii`, `w:hAnsi` and `w:cs` at once, so that cannot happen.

`Alt`+`X` keeps working as before; it is a Word built-in and nothing here changes it.

---

## Before you start

**Install the font itself** — `fonts/ArabicHonorificsComplete-Regular.ttf`. The
add-in embeds the font for its own preview list, but the document needs it
installed on the machine or the inserted glyphs will not draw.

---

## Word on the web — easiest

1. **Insert ▸ Add-ins ▸ Upload My Add-in**
2. Pick [`manifest.xml`](manifest.xml)

Done. The button appears on the Home tab.

## Word on Windows

Windows sideloads add-ins from a *shared* folder, so the folder has to be shared
even though it is on your own machine.

1. Make a folder, e.g. `C:\WordAddins`, and put `manifest.xml` in it.
2. Right-click the folder ▸ **Properties ▸ Sharing ▸ Share…**, add your own user
   with Read permission, **Share**. Note the network path it shows you —
   something like `\\YOUR-PC\WordAddins`.
3. In Word: **File ▸ Options ▸ Trust Center ▸ Trust Center Settings… ▸
   Trusted Add-in Catalogs**.
4. Paste that `\\YOUR-PC\WordAddins` path into **Catalog Url**, click
   **Add catalog**, tick **Show in Menu**, then OK twice.
5. Restart Word.
6. **Insert ▸ My Add-ins ▸ SHARED FOLDER** ▸ *Arabic Honorifics* ▸ **Add**.

The **Honorifics** button then sits on the Home tab.

## Word on Mac

Copy `manifest.xml` into:

```
~/Library/Containers/com.microsoft.Word/Data/Documents/wef
```

Create the `wef` folder if it is not there, then restart Word and look under
**Insert ▸ Add-ins ▸ My Add-ins**.

---

## Using it

Click **Honorifics** on the Home tab to open the pane.

- **Search** by transliteration, Arabic, glyph name or codepoint.
- **Insert glyph** (default) puts the character in with the font applied.
- **Insert Arabic text** puts the spelled-out phrase in instead —
  `رضي الله عنه` rather than the single character. Use this for anything that
  leaves your machine, since the plain phrase reads everywhere without the font.
- Items marked **PUA** have no Unicode codepoint of their own. They render
  wherever this font is installed and nowhere else; the main README explains why.

---

## How it is hosted

Office add-ins have to be served over HTTPS, so the pane lives on this
repository's GitHub Pages site:

```
https://eraduz.github.io/ArabicHonorificsComplete/addin/taskpane.html
```

`manifest.xml` points there. Nothing is installed locally except the manifest
itself, so an update to the pane reaches everyone without them reinstalling. The
flip side is that the pane needs an internet connection to open — the font in
your documents does not.

The task pane sends nothing anywhere. It reads no document content and has no
network calls of its own beyond loading itself and the Office JavaScript library.
