param([string] $commitMessage)

[string]$sourceDirectory  = "C:\Users\knguyen\AppData\Local\nvim\*"
[string]$destinationDirectory = "C:\repos\lazy-vim\"

Remove-Item -recurse "$($destinationDirectory)\*" -exclude ".git", "uploadLazyvimConfig.ps1"
Copy-item -Force -Recurse -Verbose $sourceDirectory -Destination $destinationDirectory

cd $destinationDirectory
git add *
git commit -a -m $commitMessage 
git push