*** Settings ***
Suite Setup  Open Browser To Counter Page
Suite Teardown  Close Browser
Test Setup  Reset And Go To Counter Page
Resource  resource.robot

*** Test Cases ***
Decrease Counter Value
    Counter Page Should Be Open
    Counter Value Should Be  500
    Click Button  Decrease
    Counter Value Should Be  -1
