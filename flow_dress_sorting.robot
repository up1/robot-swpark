*** Settings ***
Resource        ./pages/welcome.robot
Resource        ./pages/catalog.robot
Suite Setup     เข้า web หน้าแรก
Suite Teardown  Close Browser
Test Teardown   welcome.Home

*** Test Cases ***
Sorting by price 01
    [Tags]  done  sprint1
    เข้าไปยังหน้า summer dress
    ทำการเลือก sort ด้วย price จากแพงไปถูก

Sorting by price 02
    [Tags]  done  sprint1
    เข้าไปยังหน้า summer dress
    ทำการเลือก sort ด้วย price จากแพงไปถูก

*** Keywords ***
เข้า web หน้าแรก
    welcome.Open
    # welcome.Open with selenium grid

ผลการทำงานต้องแสดงผลจากแพงไปถูก
    catalog.Check sorted by high price

ทำการเลือก sort ด้วย price จากแพงไปถูก
    catalog.Sort by high price

เข้าไปยังหน้า summer dress
    welcome.Choose menu Dresses
    catalog.Choose Summer Dresses
    