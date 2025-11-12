*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Value becomes 0 when it is reset
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa