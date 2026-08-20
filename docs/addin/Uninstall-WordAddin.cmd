@echo off
REM Double-click to remove the add-in again.
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0Install-WordAddin.ps1" -Uninstall
