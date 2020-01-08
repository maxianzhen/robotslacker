*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      http://new.sina.com
${BROWSER}        Firefox

*** Test Cases ***
Valid Login
    Open Browser    ${LOGIN URL}    ${BROWSER}
