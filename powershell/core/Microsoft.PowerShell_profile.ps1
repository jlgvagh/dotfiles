  # PROMPT
function prompt {
  $loc = Split-Path -leaf -path (pwd)

  $git = ""
  if (Test-Path .git) {
    $git = git branch --show-current
    $git = "($git)"
  }

  $p = $('>' * ($nestedPromptLevel + 1))
  
  Write-Host "PSC " -nonewline -foregroundcolor Green
  Write-Host "..\$loc\ " -nonewline -foregroundcolor Yellow
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
New-Alias grep sls
New-Alias touch New-Item
New-Alias gh Get-Help