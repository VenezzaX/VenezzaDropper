@echo off
powershell -Command "Start-Process powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command irm \"https://get.activated.win\" | iex' -Verb RunAs"