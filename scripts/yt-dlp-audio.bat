:: download audio from youtube
:: square thumbnail album art
:: music metadata if youtube music
:: m4a best audio

@echo off
cd "%UserProfile%\Downloads"
echo Paste YouTube URL:
set /p url=
yt-dlp^
  --embed-thumbnail^
  --convert-thumbnail jpg^
  --ppa "ThumbnailsConvertor+FFmpeg_o:-c:v mjpeg -vf crop=\"'"'"'if(gt(ih,iw),iw,ih)'"'"':'"'"'if(gt(iw,ih),ih,iw)'"'"'\""^
  --embed-metadata^
  -f ba[ext=m4a]^
  -x %url%
