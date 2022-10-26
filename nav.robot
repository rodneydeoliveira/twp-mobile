*** Settings ***
Library        AppiumLibrary


*** Test Cases ***
Deve Acessar a Tela Dialogs
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Pixel2
    ...                 app=${EXECDIR}\\app\\twp.apk
    ...                 udid=emulator-5554

    Wait Until Page Contains        Training Wheels Protocol        10
    Wait Until Page Contains        Mobile Version                  10

    Wait Until Page Contains         COMEÇAR                        10
    Click Text                       COMEÇAR
    Wait Until Element Is Visible    xpath=io.qaninja.android.twp:id/toolbarTitle    10

    Click Element                         xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible         id=io.qaninja.android.twp:id/navView        10
    Click Text                            DIALOGS

    Wait Until Element Is Visible         id=io.qaninja.android.twp:id/toolbarTitle            10
    Element Text Should Be                id=io.qaninja.android.twp:id/toolbarTitle            DIALOGS

    Capture Page Screenshot
    Close Application
