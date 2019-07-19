*** Settings ***				
Library  RequestsLibrary

*** Test Case ***
Call list of users from jsonplaceholder
    Create Session   api   https://jsonplaceholder.typicode.com
    ${response}=  Get Request  api  /users
    Should Be Equal   ${200}   ${response.status_code}
    ${len}=  Get Length  ${response.json()}
    Should Be Equal   ${10}   ${len}
    Should Be Equal   Bret   ${response.json()[0]["username"]}
