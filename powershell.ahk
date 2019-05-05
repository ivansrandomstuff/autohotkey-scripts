; Runs the function WinShortcut when Ctrl + Alt + t is pressed.
^!t::WinShortcut("C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe", "Windows PowerShell") 

; Multipurpose function. In case the Window is already opened it will create a new instance of it.
; Otherwise, if the Window is opened but minimized it will activate it. In case none of the above are
; true it will create a new instance of the application.
; @param path Path pointing the location of the .exe
; @param app  Name of the Window when the program is opened.
WinShortcut(path, app)
{
    if WinActive(app)
    {
        Run %path%
        return 1
    }

    if WinExist(app)
    {
        WinActivate
        return 1
    }

    
    Run %path%
    return 0
}

