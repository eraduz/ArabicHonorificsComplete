Arabic Honorifics - Word add-in
===============================

A task pane for Microsoft Word: all 61 Islamic honorific ligatures in a
searchable list. Click one and it lands at the cursor with the font applied.

  https://github.com/eraduz/ArabicHonorificsComplete


STEP 1 - INSTALL THE FONT FIRST
-------------------------------
The add-in will not draw anything without it.

  https://github.com/eraduz/ArabicHonorificsComplete/releases/latest

Download the release zip, open fonts/, select the .otf and .ttf, right-click,
"Install for all users".


STEP 2 - INSTALL THE ADD-IN
---------------------------
Windows, Word desktop:

  Double-click  Install-WordAddin.cmd

  It asks for administrator rights, because Word only sideloads add-ins from a
  shared folder and sharing one needs them. It then:
    1. creates C:\WordAddins and puts manifest.xml there
    2. shares that folder read-only to your own account
    3. registers the share as a trusted add-in catalogue

  Close Word completely, open it again, then:
    Home (or Insert) -> Add-ins -> More Add-ins -> SHARED FOLDER
    -> Arabic Honorifics -> Add

  To remove it again: double-click Uninstall-WordAddin.cmd


Word on the web - no installer needed:

  Insert -> Add-ins -> Upload My Add-in -> pick manifest.xml


Word on Mac:

  Copy manifest.xml into
    ~/Library/Containers/com.microsoft.Word/Data/Documents/wef
  Create the wef folder if it does not exist, restart Word, then look under
  Insert -> Add-ins -> My Add-ins.


USING IT
--------
Click "Arabic Honorifics" on the Home tab to open the pane.

  - Search by transliteration, Arabic, glyph name or codepoint.
  - Click a glyph to insert it. You do not have to set the font afterwards.
  - "Insert Arabic text" inserts the spelled-out phrase instead, for text that
    has to be readable somewhere the font is not installed.


IF A GLYPH SHOWS AS AN EMPTY BOX
--------------------------------
That is a font-slot problem, not a broken font. Word keeps a separate font for
Latin text and for complex scripts, and 41 of these glyphs live in the Private
Use Area, which has no Unicode script and so is drawn with the Latin font.

Select the character, press Ctrl+D, and set BOTH "Latin text font" and
"Complex scripts font" to Arabic Honorifics Complete.

Inserting through the add-in sets both for you, which is the point of it.


LICENCE
-------
Artwork (c) 2026 BaAlwi Heritage (ID), CC BY 4.0.
  https://github.com/baalwi-id/arabic-honorific-ligatures
