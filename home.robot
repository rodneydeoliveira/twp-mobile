*** Settings ***
Library        AppiumLibrary


*** Test Cases ***
Deve Abrir o App
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Pixel2
    ...                 app=${EXECDIR}\\app\\twp.apk
    ...                 udid=emulator-5554

    Wait Until Page Contains        Training Wheels Protocol        5
    Close Application