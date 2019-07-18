*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}      http://automationpractice.com
${BROWSER}  gc

*** Keywords ***
Open with selenium grid
    Open Browser   ${URL}  
    ...  browser=${BROWSER}
    ...  remote_url=http://localhost:4444/wd/hub
    ...  desired_capabilities=browserName=chrome

Open
    Open Browser   ${URL}  
    ...  browser=${BROWSER}

Choose menu Dresses
    Click Element  xpath://*[@id="block_top_menu"]/ul/li[2]/a