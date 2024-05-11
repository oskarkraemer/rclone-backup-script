@echo off
setlocal enabledelayedexpansion

set RCLONE_PATH=C:\\path\\to\\rclone\\rclone.exe
set SYNC_FILE=C:\\path\\to\\sync_paths.txt

for /f "tokens=*" %%a in (%SYNC_FILE%) do (
    echo Syncing %%a...
    set "folder_name=%%~nxa"
    %RCLONE_PATH% sync "%%a" remote:!folder_name! --backup-dir remote:!folder_name!_old
)

echo All paths synced.
pause