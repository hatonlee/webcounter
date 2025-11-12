*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Value becomes 10 when the counter is set to 10
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Input Text  set_value   10
    Click Button  Aseta
    Page Should Contain  nappia painettu 10 kertaa