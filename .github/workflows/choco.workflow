workflow "Create Choco Package" {
    on = "push"
    resolves = ["steviecoaster/ChocoActions/chocolatey@master"]
}