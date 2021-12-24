REM powershell -ExecutionPolicy ByPass -File .\build\build_windows.ps1

REM set PYTHON=%USERPROFILE%\dev\Python27\python.exe

"C:\Program Files\Git\bin\bash.exe" build/build_windows_eshell.sh

set VSCODE_ARCH=x64


cd vscode
call yarn install
call yarn gulp compile-build
call yarn gulp compile-extension-media
call yarn gulp compile-extensions-build
call yarn gulp minify-vscode
call yarn gulp "vscode-win32-%VSCODE_ARCH%-min-ci"
call yarn gulp "vscode-win32-%VSCODE_ARCH%-inno-updater"
call yarn gulp "vscode-win32-%VSCODE_ARCH%-user-setup"


cd ..

