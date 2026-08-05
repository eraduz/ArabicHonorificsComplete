#Requires AutoHotkey v2.0
; Arabic Honorifics Complete — system-wide typing helper.
;
; Type a shortcode followed by SPACE (or any punctuation) and it is
; replaced by the character; the trailing space is swallowed.
;
; The ending character matters: several shortcodes are prefixes of
; others (\rad-radiyallahu-anhu vs -anhum vs -anhuma), so firing on
; the ending character rather than instantly is what lets you reach
; the longer ones at all.
;
; The receiving app still needs the font installed to draw the result,
; except for the codepoints marked copy-paste safe in the cheat sheet.
;
; Run with AutoHotkey v2. This file is UTF-8 with BOM — keep it that way.


; ---- alh: Allah ----
; ‘azza wa jalla — عزَّ وجلَّ
:?o:\alh-azza-wa-jalla::﷿
; jalla jalāluh — جلَّ جلاله
:?o:\alh-jalla-jalaluh::ﷻ
; jalla wa ‘ala — جلَّ وعلا
:?o:\alh-jalla-wa-ala::
; subḥanahu wa ta‘ālā — سبحانه وتعالى
:?o:\alh-subhanahu-wa-taala::﷾
; tabāraka wa ta‘ālā — تبارك وتعالى
:?o:\alh-tabaraka-wa-taala::﵎
; ta‘ālā — تعالى
:?o:\alh-taala::

; ---- sal: Sallallahu ----
; ṣallallāhu ‘alayhi wa ‘alā ālih — صلى الله عليه وعلى آله
:?o:\sal-sallallahu-alayhi-wa-ala-alih::﵆
; ṣallallāhu ‘alayhi wa ‘alā ālihi wa sallam — صلى الله عليه وعلى آله وسلم
:?o:\sal-sallallahu-alayhi-wa-ala-alihi-wa-sallam::﵌
; ṣallallāhu ‘alayhi wa sallam (rounded) — صلى الله عليه وسلم
:?o:\sal-sallallahu-alayhi-wa-sallam-rounded::ﷺ
; ṣallallāhu ‘alayhi wa sallam (square) — صلى الله عليه وسلم
:?o:\sal-sallallahu-alayhi-wa-sallam-square::

; ---- slt: As-Salatu was-Salam ----
; ‘alayhiṣ ṣalātu was salām — عليه الصلاة والسلام
:?o:\slt-alayhi-assalatu-was-salam::﵊
; ‘alayhaṣ ṣalātu was salām — عليها الصلاة والسلام
:?o:\slt-alayha-assalatu-was-salam::
; ‘alayhi wa ‘alā ālihiṣ ṣalatu was salām — عليه وعلى آله الصلاة والسلام
:?o:\slt-alayhi-wa-ala-alihi-assalatu-was-salam::
; ‘alayhimuṣ ṣalātu was salām — عليهم الصلاة والسلام
:?o:\slt-alayhim-assalatu-was-salam::
; ‘alayhimaṣ ṣalātu was salām — عليهما الصلاة والسلام
:?o:\slt-alayhima-assalatu-was-salam::

; ---- slm: As-Salam ----
; ‘alayhis salām — عليه السلام
:?o:\slm-alayhi-assalam::﵇
; ‘alayhas salām — عليها السلام
:?o:\slm-alayha-assalam::﵍
; ‘alayhimus salām — عليهم السلام
:?o:\slm-alayhim-assalam::﵈
; ‘alayhimas salām — عليهما السلام
:?o:\slm-alayhima-assalam::﵉

; ---- slw: Salawatullah ----
; ṣalawātullāhi ‘alayhi — صلوات الله عليه
:?o:\slw-salawatullah-alayhi::
; ṣalawātullāhi ‘alayhā — صلوات الله عليها
:?o:\slw-salawatullah-alayha::
; ṣalawātullāhi ‘alayhim — صلوات الله عليهم
:?o:\slw-salawatullah-alayhim::
; ṣalawātullāhi ‘alayhimā — صلوات الله عليهما
:?o:\slw-salawatullah-alayhima::

; ---- rad: Radiyallahu ----
; raḍiyallāhu ‘anhu — رضي الله عنه
:?o:\rad-radiyallahu-anhu::﵁
; raḍiyallāhu ‘anhā — رضي الله عنها
:?o:\rad-radiyallahu-anha::﵂
; raḍiyallāhu ‘anhum — رضي الله عنهم
:?o:\rad-radiyallahu-anhum::﵃
; raḍiyallāhu ‘anhumā — رضي الله عنهما
:?o:\rad-radiyallahu-anhuma::﵄
; raḍiyallāhu ‘anhunna — رضي الله عنهن
:?o:\rad-radiyallahu-anhunna::﵅
; ‘alayhim riḍwānullāh — عليهم رضوان الله
:?o:\rad-alayhim-ridhwanullah::

; ---- rhm: Rahimahullah ----
; raḥimahullāh — رحمه الله
:?o:\rhm-rahimahu-allah::﵀
; raḥimahallāh — رحمها الله
:?o:\rhm-rahimaha-allah::
; raḥimahumullāh — رحمهم الله
:?o:\rhm-rahimahum-allah::﵏
; raḥimahumallāh — رحمهما الله
:?o:\rhm-rahimahuma-allah::
; raḥimahunnallāh — رحمهن الله
:?o:\rhm-rahimahunna-allah::

; ---- rmt: Rahmatullah ----
; raḥmatullāhi ‘alayh — رحمة الله عليه
:?o:\rmt-rahmatullah-alayhi::
; raḥmatullāhi ‘alayhā — رحمة الله عليها
:?o:\rmt-rahmatullah-alayha::
; raḥmatullāhi ‘alayhim — رحمة الله عليهم
:?o:\rmt-rahmatullah-alayhim::
; raḥmatullāhi ‘alayhimā — رحمة الله عليهما
:?o:\rmt-rahmatullah-alayhima::
; raḥmatullāhi ‘alayhinna — رحمة الله عليهن
:?o:\rmt-rahmatullah-alayhinna::
; ‘alayhir raḥmah — عليه الرحمة
:?o:\rmt-alayhir-rahmah::
; ‘alayhar raḥmah — عليها الرحمة
:?o:\rmt-alayhar-rahmah::

; ---- qds: Qaddasa / Quddisa ----
; quddisa sirruhu — قدس سره
:?o:\qds-quddisa-sirrahu::﵋
; qaddasallāhu sirrahu — قدس الله سره
:?o:\qds-qaddasallahu-sirrahu::
; qaddasallāhu sirrahā — قدس الله سرها
:?o:\qds-qaddasallahu-sirraha::
; qaddasallāhu sirrahum — قدس الله سرهم
:?o:\qds-qaddasallahu-sirrahum::
; qaddasallāhu sirrahumā — قدس الله سرهما
:?o:\qds-qaddasallahu-sirrahuma::
; quddisa sirrahumā — قدس سرهما
:?o:\qds-quddisa-sirrahuma::
; quddisa sirrahum — قدس سرهم
:?o:\qds-quddisa-sirrahum::
; quddisat asrāruhum — قدست أسرارهم
:?o:\qds-quddisat-asrarahum::

; ---- hfz: Hafizahullah ----
; hafiẓahullāh — حفظه الله
:?o:\hfz-hafizahu-allah::
; hafiẓahallāh — حفظها الله
:?o:\hfz-hafizaha-allah::
; hafiẓahumallāh — حفظهما الله
:?o:\hfz-hafizahumallah::
; hafiẓahumullāh — حفظهم الله
:?o:\hfz-hafizahumullah::

; ---- mix: Mixed ----
; ‘ajjalallāhu farajah — عجّل الله فرجه
:?o:\mix-ajjalallahu-farajah::
; gafarallāhu lahu — غفر الله له
:?o:\mix-gafarallahu::
; karamallāhu wajhah — كرم الله وجهه
:?o:\mix-karamallahu-wajhah::
; nafa‘anallāhu bihi — نفعنا الله به
:?o:\mix-nafaanallahu-bihi::
; nawwarallāhu marqadahu — نوّر الله مرقده
:?o:\mix-nawwarallahu-marqadahu::
; dāmat barakātihim — دامت بركاتهم
:?o:\mix-damat-barakatihim::
; ṭāba tharāhu — طاب ثراه
:?o:\mix-thaba-tsarahu::
; dāma ẓilluhu — دام ظله
:?o:\mix-dama-zhilluhu::
