. ./helpers.ps1

choco source Add --name="'GitHub'" --source="'https://nuget.pkg.github.com/steviecoaster/ActionsTest/index.json'" -UserName="'steviecoaster'" --Password="'$env:TOKEN'"
choco apikey -k "steviecoaster:$($env:TOKEN)" -s https://nuget.pkg.github.com/steviecoaster/ActionsTest/index.json
Publish-ChocoPackage