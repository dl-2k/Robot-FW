*** Test Cases ***

ForLoop1
    FOR    ${counter}    IN RANGE    1    10    
        Log    ${counter}
        
    END

ForLoop2
    FOR    ${counter}    IN  1  2  3  4  5  6  7  8  9  10
        Log    ${counter}
        
    END

ForLoop3
    @{items}    Create List    1    2    3    4    5    6    7    8    9    10
    FOR    ${element}    IN    @{items}
        Log    ${element}
        
    END

ForLoop4
    @{items}    Create List    1    2    3    4    5    6    7    8    9    10
    FOR    ${index}    IN  @{items}
        Log To Console    ${index}
        Exit For Loop If    ${index} == 5
    END
    

