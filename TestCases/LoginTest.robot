*** Settings ***

Library  SeleniumLibrary
Library    SeleniumLibrary


*** Variables ***
${url}  https://parabank.parasoft.com/parabank/admin.htm(opens%20in%20a%20new%20tab)
${browser}     chrome
${balance}  xpath = /html[1]/body[1]/div[1]/div[3]/div[2]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/a[1]
${SLOW_TIME}        2


*** Test Cases ***
LoginTest


    open browser    ${url}   ${browser}
    Log

NewAccTest

    OpenNewAccount
    close browser



*** Keywords ***
Log

    maximize browser window
    sleep    ${SLOW_TIME}
    input text    name = username    najeeb23
    sleep    ${SLOW_TIME}
    input text    name = password    imtheking23
    sleep    ${SLOW_TIME}
    click element    xpath = /html[1]/body[1]/div[1]/div[3]/div[1]/div[1]/form[1]/div[3]/input[1]
    sleep    ${SLOW_TIME}
    wait until element is visible    ${balance}
    click element    ${balance}
    sleep    ${SLOW_TIME}
    click element    xpath = /html[1]/body[1]/div[1]/div[3]/div[2]/div[1]/div[2]/form[1]/table[1]/tbody[1]/tr[1]/td[2]/select[1]
    sleep    ${SLOW_TIME}
    select from list by label    xpath = /html[1]/body[1]/div[1]/div[3]/div[2]/div[1]/div[2]/form[1]/table[1]/tbody[1]/tr[1]/td[2]/select[1]    January
    sleep    ${SLOW_TIME}
    click element    xpath = /html[1]/body[1]/div[1]/div[3]/div[2]/div[1]/div[2]/form[1]/table[1]/tbody[1]/tr[2]/td[2]/select[1]
    sleep    ${SLOW_TIME}
    select from list by label    xpath = /html[1]/body[1]/div[1]/div[3]/div[2]/div[1]/div[2]/form[1]/table[1]/tbody[1]/tr[2]/td[2]/select[1]    Credit
    sleep    ${SLOW_TIME}
    click element    xpath = /html[1]/body[1]/div[1]/div[3]/div[2]/div[1]/div[2]/form[1]/table[1]/tbody[1]/tr[3]/td[2]/input[1]

OpenNewAccount

    sleep    ${SLOW_TIME}
    click element    xpath = /html[1]/body[1]/div[1]/div[3]/div[1]/ul[1]/li[1]/a[1]
