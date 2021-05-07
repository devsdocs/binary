#!/bin/bash
rclone version
rclone config create 'HerokuDriveRclone' 'drive' 'scope' drive 'root_folder_id' $FolderID 'service_account_file' acc.json
rclone version
rclone serve http HerokuDriveRclone: --addr :$PORT --buffer-size 256M --dir-cache-time 5s --vfs-read-chunk-size 256M --vfs-read-chunk-size-limit 2G --vfs-cache-mode writes
