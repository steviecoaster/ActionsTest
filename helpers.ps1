function Get-WorkingPackage {
    
    $commit = git log -1 --pretty=%B
    $null = $commit[0] -match '(?<package>(?<=\[).+?(?=\]))'

    return $matches.package

}

function Initialize-ChocoPackage {
    
    $package = Get-WorkingPackage
    $nuspec = Get-ChildItem $env:GITHUB_WORKSPACE -Recurse -Filter '*.nuspec' | Where-Object { $_.BaseName -eq $package }
    choco pack $nuspec.FullName --output-directory="'$($env:GITHUB_WORKSPACE)'"

}

Function Publish-ChocoPackage {

    $package = Get-WorkingPackage
    $nupkg = Get-ChildItem $env:GITHUB_WORKSPACE -Recurse -Filter '*.nupkg' | Where-Object { $_.Basename -eq $package }
    choco push $nupkg.FullName -s Github
}