@echo off
for /F "tokens=*" %%A in (selection_export.txt) do (
    echo %%A
    adb shell su -c "pm clear %%A"
    adb shell su -c "pm uninstall --user 0 %%A"
)
echo Done!
pause