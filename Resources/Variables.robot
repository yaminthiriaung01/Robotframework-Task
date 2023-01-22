*** Variables ***

#    Variables for Login & Logout
${LOGIN_URL}   https://talent-recruitment.test.bluestonepim.com/index.html
${BROWSER}  Chrome
${LOGIN_TITLE}    Login
${LOGIN_HEADER}    Welcome!
${DASHBOARD_TITLE}    Dashboard
${VALID_EMAIL}    admin@email.com
${INVALID_EMAIL}    admin
${PASSWORD}    thisisverysecure
${BLANK}    
${INVALID_EMAIL_ERROR}    Email is not valid
${MANDATORY_ERROR}    Please enter your password

#    Variables for Change Mode
${DARKMODE_BUTTON}    xpath://button/*[@data-testid="LightModeOutlinedIcon"]
${LIGHTMODE_BUTTON}    xpath://button/*[@data-testid="DarkModeOutlinedIcon"]

#    Variables for Search
${FIRSTNAME}    Jon
${LASTNAME}    Clifford
${FULLNAME}    Jaime Lannister
${AGE}    35
${COUNT}    1
${ROW_COUNT}    4