*** Settings ***
Library    Collections


*** Keywords ***
Random Generator
   VAR    @{generateList}    @{EMPTY}
   FOR     ${index}    IN RANGE    0    25
       Append To List    ${generateList}    ${index}
   END

   Evaluate    random.shuffle($generateList)  random
   RETURN    ${generateList}
