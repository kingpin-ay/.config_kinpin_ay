# this is to set up the prompt for the cmd to work with
(@(& 'C:/Users/Ayush/AppData/Local/Programs/oh-my-posh/bin/oh-my-posh.exe' init pwsh --config='C:\Users\Ayush\AppData\Local\Programs\oh-my-posh\themes\clean-detailed.omp.json' --print) -join "`n") | Invoke-Expression

# this is to set terminal icons
Import-Module -Name Terminal-Icons



# adding PSFzf for the fuzzy finding of files and selecting previous commands

# replace 'Ctrl+q' and 'Ctrl+u' with your preferred bindings:
# 'Ctrl+q' will provide command based on the folder structure and stuffs and 'Ctrl+u' will suggest previous commands
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+q' -PSReadlineChordReverseHistory 'Ctrl+u'
# Tab completion
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }




# setting alias for command 
Set-Alias -Name ll -Value ls
Set-Alias -Name vim -Value nvim
Set-Alias -Name 'Ctrl+l' -Value 'C:\Program Files\Git\usr\bin\clear.exe' 
Set-Alias -Name less -Value 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias -Name mcp -Value 'C:\Program Files\Git\usr\bin\cp.exe'
Set-Alias -Name mmv -Value 'C:\Program Files\Git\usr\bin\mv.exe'
Set-Alias -Name grep -Value 'C:\Program Files\Git\usr\bin\grep.exe'
Set-Alias -Name mrm -Value 'C:\Program Files\Git\usr\bin\rm.exe'
Set-Alias -Name mrmdir -Value 'C:\Program Files\Git\usr\bin\rmdir.exe'
