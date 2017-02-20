Enable-PSRemoting -Force
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force
# Disable-ComputerRestore c:
Get-AppxPackage -AllUsers | Remove-AppxPackage