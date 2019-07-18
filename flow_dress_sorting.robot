*** Settings ***
Resource  ./pages/welcome.robot
Resource  ./pages/catalog.robot

*** Test Cases ***
Sorting by price
    [Tags]  done  sprint1
    เข้า web หน้าแรก
    เข้าไปยังหน้า summer dress
    ทำการเลือก sort ด้วย price จากแพงไปถูก

*** Keywords ***
เข้า web หน้าแรก
    welcome.Open with selenium grid

ผลการทำงานต้องแสดงผลจากแพงไปถูก
    catalog.Choose Summer Dresses

ทำการเลือก sort ด้วย price จากแพงไปถูก
    catalog.Choose Summer Dresses

เข้าไปยังหน้า summer dress
    welcome.Choose menu Dresses
    catalog.Choose Summer Dresses
    