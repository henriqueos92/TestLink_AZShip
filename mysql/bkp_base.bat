@echo off
REM Define the database credentials
set DB_HOST=localhost
set DB_USER=henriqueazship
set DB_PASS=15@d13pxhE01
set DB_NAME=testlink

REM Define the output file name with the current date
set OUTPUT_DIR=C:\xampp\htdocs\Testlink\backup\db_testlink
set OUTPUT_FILE=%OUTPUT_DIR%\testlink_backup_%date:~-4,4%%date:~-10,2%%date:~-7,2%.sql

REM Create the output directory if it doesn't exist
if not exist %OUTPUT_DIR% (
    mkdir %OUTPUT_DIR%
)

REM Run the mysqldump command to export the database
"C:\xampp\mysql\bin\mysqldump.exe" -h %DB_HOST% -u %DB_USER% -p%DB_PASS% %DB_NAME% > %OUTPUT_FILE%

REM Check if the command was successful
if %ERRORLEVEL% equ 0 (
    echo Backup completed successfully.
    echo Backup file: %OUTPUT_FILE%
) else (
    echo Backup failed.
)