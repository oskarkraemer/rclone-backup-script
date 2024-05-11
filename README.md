# rclone-backup-script
This batch script runs rclone sync on every path listed in the SYNC_FILE file.

### Usage
- Download the `rclone.exe` and [setup a remote origin](https://rclone.org/docs/)
- Set `RCLONE_PATH` in the batch script to the rclone.exe location
- Set `SYNC_FILE` in the batch script to the location of the file containing the paths to be synced.
- Replace `remote:` with the name of your desired remote origin.
- Run the `sync.bat` file, **profit...**
