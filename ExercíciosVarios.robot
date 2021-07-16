*** Variables ***
#lista de números
@{numeros}    6     6       7       2       8       5       2       1       2

*** Keywords ***
Verificar idade
    [arguments]     ${idade}
    IF      '${idade}' >= '18'
        log to console      É maior de idade
    END

Identificar numero 5
    #[arguments]     @{lista}
    FOR     ${contador}       IN      @{numeros}
        IF   '${contador}'=='5'
        
            log to console      Sucess/${contador}
            
        END
    END

*** Test Cases ***
Tentando idade
    verificar idade    18 

Identificar numero
    identificar numero 5