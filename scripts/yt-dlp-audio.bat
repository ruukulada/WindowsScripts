:: requires choco yt-dlp

:: download audio from youtube
:: square thumbnail album art
:: music metadata if youtube music
:: m4a best audio

@echo off
set /a output=%RANDOM%
cd "%UserProfile%\Downloads"
mkdir "%output%"
cd "%output%"
echo Paste YouTube URL:
set /p url=
yt-dlp -v ^
  %url% ^
  -x ^
  -f bestaudio^
  --audio-format m4a^
  --parse-metadata "%%(playlist_index)s:%%(track_number)s"^
  --parse-metadata "%%(artists.0)s:%%(meta_artist)s"^
  --embed-metadata^
  --embed-thumbnail^
  --convert-thumbnail jpg^
  --ppa "ThumbnailsConvertor+FFmpeg_o:-c:v mjpeg -vf crop=\"'"'"'if(gt(ih,iw),iw,ih)'"'"':'"'"'if(gt(iw,ih),ih,iw)'"'"'\""
