@echo off
REM Double-click to install the Arabic Honorifics task pane into Word.
REM It will ask for administrator rights: sharing a folder requires them.
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0Install-WordAddin.ps1" %*
