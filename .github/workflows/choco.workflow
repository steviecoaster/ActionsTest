workflow "Create Choco Package" {
    on = "push"
    resolves = ["Publish New Chocolatey Package"]
}

action "Publish New Chocolatey Package" {
    uses "./.github/chocolatey"
    secrets = ["NUGET_APIKEY"]
    
}