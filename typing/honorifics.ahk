#Requires AutoHotkey v2.0
; Arabic Honorifics Complete — system-wide typing helper.
;
; Type a shortcode followed by SPACE (or any punctuation) and it is
; replaced by the character; the trailing space is swallowed.
;
; Every glyph has two: a short one and the full glyph name. The short
; codes follow a pattern -- a group code plus the Arabic pronoun as a
; suffix: nothing = -hu, a = -haa, m = -hum, ma = -humaa, n = -hunna.
;   \ra = radiyallahu anhu    \raa = anhaa    \ram = anhum
;   \rama = anhumaa           \ran = anhunna
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
:?o:\azza::﷿
:?o:\alh-azza-wa-jalla::﷿
; jalla jalāluh — جلَّ جلاله
:?o:\jj::ﷻ
:?o:\alh-jalla-jalaluh::ﷻ
; jalla wa ‘ala — جلَّ وعلا
:?o:\jwa::
:?o:\alh-jalla-wa-ala::
; subḥanahu wa ta‘ālā — سبحانه وتعالى
:?o:\swt::﷾
:?o:\alh-subhanahu-wa-taala::﷾
; tabāraka wa ta‘ālā — تبارك وتعالى
:?o:\twt::﵎
:?o:\alh-tabaraka-wa-taala::﵎
; ta‘ālā — تعالى
:?o:\taala::
:?o:\alh-taala::

; ---- sal: Sallallahu ----
; ṣallallāhu ‘alayhi wa ‘alā ālih — صلى الله عليه وعلى آله
:?o:\sawa::﵆
:?o:\sal-sallallahu-alayhi-wa-ala-alih::﵆
; ṣallallāhu ‘alayhi wa ‘alā ālihi wa sallam — صلى الله عليه وعلى آله وسلم
:?o:\sawas::﵌
:?o:\sal-sallallahu-alayhi-wa-ala-alihi-wa-sallam::﵌
; ṣallallāhu ‘alayhi wa sallam (rounded) — صلى الله عليه وسلم
:?o:\saw::ﷺ
:?o:\sal-sallallahu-alayhi-wa-sallam-rounded::ﷺ
; ṣallallāhu ‘alayhi wa sallam (square) — صلى الله عليه وسلم
:?o:\saw2::
:?o:\sal-sallallahu-alayhi-wa-sallam-square::

; ---- slt: As-Salatu was-Salam ----
; ‘alayhiṣ ṣalātu was salām — عليه الصلاة والسلام
:?o:\sls::﵊
:?o:\slt-alayhi-assalatu-was-salam::﵊
; ‘alayhaṣ ṣalātu was salām — عليها الصلاة والسلام
:?o:\slsa::
:?o:\slt-alayha-assalatu-was-salam::
; ‘alayhi wa ‘alā ālihiṣ ṣalatu was salām — عليه وعلى آله الصلاة والسلام
:?o:\slsal::
:?o:\slt-alayhi-wa-ala-alihi-assalatu-was-salam::
; ‘alayhimuṣ ṣalātu was salām — عليهم الصلاة والسلام
:?o:\slsm::
:?o:\slt-alayhim-assalatu-was-salam::
; ‘alayhimaṣ ṣalātu was salām — عليهما الصلاة والسلام
:?o:\slsma::
:?o:\slt-alayhima-assalatu-was-salam::

; ---- slm: As-Salam ----
; ‘alayhis salām — عليه السلام
:?o:\as::﵇
:?o:\slm-alayhi-assalam::﵇
; ‘alayhas salām — عليها السلام
:?o:\asa::﵍
:?o:\slm-alayha-assalam::﵍
; ‘alayhimus salām — عليهم السلام
:?o:\asm::﵈
:?o:\slm-alayhim-assalam::﵈
; ‘alayhimas salām — عليهما السلام
:?o:\asma::﵉
:?o:\slm-alayhima-assalam::﵉

; ---- slw: Salawatullah ----
; ṣalawātullāhi ‘alayhi — صلوات الله عليه
:?o:\sw::
:?o:\slw-salawatullah-alayhi::
; ṣalawātullāhi ‘alayhā — صلوات الله عليها
:?o:\swa::
:?o:\slw-salawatullah-alayha::
; ṣalawātullāhi ‘alayhim — صلوات الله عليهم
:?o:\swm::
:?o:\slw-salawatullah-alayhim::
; ṣalawātullāhi ‘alayhimā — صلوات الله عليهما
:?o:\swma::
:?o:\slw-salawatullah-alayhima::

; ---- rad: Radiyallahu ----
; raḍiyallāhu ‘anhu — رضي الله عنه
:?o:\ra::﵁
:?o:\rad-radiyallahu-anhu::﵁
; raḍiyallāhu ‘anhā — رضي الله عنها
:?o:\raa::﵂
:?o:\rad-radiyallahu-anha::﵂
; raḍiyallāhu ‘anhum — رضي الله عنهم
:?o:\ram::﵃
:?o:\rad-radiyallahu-anhum::﵃
; raḍiyallāhu ‘anhumā — رضي الله عنهما
:?o:\rama::﵄
:?o:\rad-radiyallahu-anhuma::﵄
; raḍiyallāhu ‘anhunna — رضي الله عنهن
:?o:\ran::﵅
:?o:\rad-radiyallahu-anhunna::﵅
; ‘alayhim riḍwānullāh — عليهم رضوان الله
:?o:\ridwan::
:?o:\rad-alayhim-ridhwanullah::

; ---- rhm: Rahimahullah ----
; raḥimahullāh — رحمه الله
:?o:\rh::﵀
:?o:\rhm-rahimahu-allah::﵀
; raḥimahallāh — رحمها الله
:?o:\rha::
:?o:\rhm-rahimaha-allah::
; raḥimahumullāh — رحمهم الله
:?o:\rhm::﵏
:?o:\rhm-rahimahum-allah::﵏
; raḥimahumallāh — رحمهما الله
:?o:\rhma::
:?o:\rhm-rahimahuma-allah::
; raḥimahunnallāh — رحمهن الله
:?o:\rhn::
:?o:\rhm-rahimahunna-allah::

; ---- rmt: Rahmatullah ----
; raḥmatullāhi ‘alayh — رحمة الله عليه
:?o:\rm::
:?o:\rmt-rahmatullah-alayhi::
; raḥmatullāhi ‘alayhā — رحمة الله عليها
:?o:\rma::
:?o:\rmt-rahmatullah-alayha::
; raḥmatullāhi ‘alayhim — رحمة الله عليهم
:?o:\rmm::
:?o:\rmt-rahmatullah-alayhim::
; raḥmatullāhi ‘alayhimā — رحمة الله عليهما
:?o:\rmma::
:?o:\rmt-rahmatullah-alayhima::
; raḥmatullāhi ‘alayhinna — رحمة الله عليهن
:?o:\rmn::
:?o:\rmt-rahmatullah-alayhinna::
; ‘alayhir raḥmah — عليه الرحمة
:?o:\arr::
:?o:\rmt-alayhir-rahmah::
; ‘alayhar raḥmah — عليها الرحمة
:?o:\arra::
:?o:\rmt-alayhar-rahmah::

; ---- qds: Qaddasa / Quddisa ----
; quddisa sirruhu — قدس سره
:?o:\qs::﵋
:?o:\qds-quddisa-sirrahu::﵋
; qaddasallāhu sirrahu — قدس الله سره
:?o:\qas::
:?o:\qds-qaddasallahu-sirrahu::
; qaddasallāhu sirrahā — قدس الله سرها
:?o:\qasa::
:?o:\qds-qaddasallahu-sirraha::
; qaddasallāhu sirrahum — قدس الله سرهم
:?o:\qasm::
:?o:\qds-qaddasallahu-sirrahum::
; qaddasallāhu sirrahumā — قدس الله سرهما
:?o:\qasma::
:?o:\qds-qaddasallahu-sirrahuma::
; quddisa sirrahumā — قدس سرهما
:?o:\qsma::
:?o:\qds-quddisa-sirrahuma::
; quddisa sirrahum — قدس سرهم
:?o:\qsm::
:?o:\qds-quddisa-sirrahum::
; quddisat asrāruhum — قدست أسرارهم
:?o:\qsasr::
:?o:\qds-quddisat-asrarahum::

; ---- hfz: Hafizahullah ----
; hafiẓahullāh — حفظه الله
:?o:\hf::
:?o:\hfz-hafizahu-allah::
; hafiẓahallāh — حفظها الله
:?o:\hfa::
:?o:\hfz-hafizaha-allah::
; hafiẓahumallāh — حفظهما الله
:?o:\hfma::
:?o:\hfz-hafizahumallah::
; hafiẓahumullāh — حفظهم الله
:?o:\hfm::
:?o:\hfz-hafizahumullah::

; ---- mix: Mixed ----
; ‘ajjalallāhu farajah — عجّل الله فرجه
:?o:\ajjal::
:?o:\mix-ajjalallahu-farajah::
; gafarallāhu lahu — غفر الله له
:?o:\gafar::
:?o:\mix-gafarallahu::
; karamallāhu wajhah — كرم الله وجهه
:?o:\karam::
:?o:\mix-karamallahu-wajhah::
; nafa‘anallāhu bihi — نفعنا الله به
:?o:\nafa::
:?o:\mix-nafaanallahu-bihi::
; nawwarallāhu marqadahu — نوّر الله مرقده
:?o:\nawwar::
:?o:\mix-nawwarallahu-marqadahu::
; dāmat barakātihim — دامت بركاتهم
:?o:\damat::
:?o:\mix-damat-barakatihim::
; ṭāba tharāhu — طاب ثراه
:?o:\taba::
:?o:\mix-thaba-tsarahu::
; dāma ẓilluhu — دام ظله
:?o:\dama::
:?o:\mix-dama-zhilluhu::
