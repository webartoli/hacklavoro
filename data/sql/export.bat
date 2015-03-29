@echo off

echo password: sod_hacklavoro

"C:\Program Files\PostgreSQL\9.4\bin\pg_dump.exe" -d sod_hacklavoro -U sod_hacklavoro > sod_hacklavoro.sql

pause