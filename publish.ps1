. ./helpers.ps1

choco source Add --name="'GitHub'" --source="'https://nuget.pkg.github.com/steviecoaster/ActionsTest/index.json'" -UserName="'steviecoaster'" --Password="'$env:TOKEN'"

Publish-ChocoPackage