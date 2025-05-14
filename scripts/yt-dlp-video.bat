:: download video from youtube
:: mp4 recode

@echo off
cd "%UserProfile%\Downloads"
echo Paste YouTube URL:
set /p url=
yt-dlp %url% --recode-video mp4
