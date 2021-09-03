# --include=<tag name> : inlcude specific tag
# -i <tag name> -i <tag name> : inlcude multiple tags
# -e <tag name> : Exclude specific tag
# -e <tag name> -i <tag name> : exclude and include specified tag names respectively

*** Settings ***

*** Test Cases ***
TC-1 Smoke Test
    [Tags]  smoke
    log to console  Smoke Test is Being Run
TC-2 Regression Test
    [Tags]  regression
    log to console  Regression Test is Being Run
TC-3 Sanity Test
    [Tags]  sanity
    log to console  Sanity Test is Being Run
