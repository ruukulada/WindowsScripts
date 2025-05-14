:: requires choco yt-dlp

:: download video from youtube

@echo off
cd "%UserProfile%\Downloads"
echo Paste YouTube URL:
set /p url=
yt-dlp %url%
