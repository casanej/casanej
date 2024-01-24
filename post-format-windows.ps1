New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 0 -Type Dword -Force; New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0 -Type Dword -Force
&{$p='HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3';$v=(Get-ItemProperty -Path $p).Settings;$v[8]=3;&Set-ItemProperty -Path $p -Name Settings -Value $v;&Stop-Process -f -ProcessName explorer}

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Start-Process "https://www.nvidia.com/pt-br/geforce/drivers/"
Start-Process "https://github.com/coreybutler/nvm-windows/releases"
Start-Process "https://us.ankerwork.com/pages/download-software"
Start-Process "https://signup.leagueoflegends.com/pt-br/signup/redownload"

choco install googlechrome -y
choco install firefox -y
choco install git -y
choco install vscode -y
choco install openvpn-connect -y
choco install slack -y
choco install authy-desktop -y
choco install dbeaver -y
choco install mongodb-compass -y
choco install mipony -y
choco install postman -y
choco install discord -y

choco install multimc -y
choco install steam -y