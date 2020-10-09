  # PROMPT
function prompt {
  $loc = (pwd).ToString()
  $locarr = $loc.split('\')
  if ($locarr[1] -and ($locarr.Length -gt 2)) { # not in root (C:\) and > 2 folders
    $loc = $loc.split('\')[-2..-1] -join '\'
    $loc = "..\" + $loc + '\'
  }

  $git = $(git branch --show-current 2>$null)
  if ($git) {
    $git = "($git)"
  }

  $p = $('>' * ($nestedPromptLevel + 1))
  
  Write-Host "PSC " -nonewline -foregroundcolor Green
  Write-Host "$loc " -nonewline -foregroundcolor Yellow
  Write-Host "$git" -nonewline -foregroundcolor Cyan
  Write-Host " >> " -nonewline -foregroundcolor Green
  return " "
}

  # prevent color problem in VSCode
[console]::ResetColor()
#Remove-Module PSReadline

  # parameter color
Set-PSReadLineOption -Colors @{ "Parameter"="Blue" }

  # ALIASES
Set-Alias grep sls
Set-Alias touch New-Item
Set-Alias gh Get-Help