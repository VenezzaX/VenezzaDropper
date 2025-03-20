@echo off
powershell -Command "Start-Process powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command irm \"https://christitus.com/win\" | iex' -Verb RunAs"