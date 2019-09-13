workflow "Create Choco Package" {
    on = "push"
    resolves = ["steviecoaster/ActionsTest/chocolatey@master"]
}