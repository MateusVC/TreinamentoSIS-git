*** Variables ***
#lista de números
@{numeros}    1     2       3       4       5       6       7       8       9       10      

*** Keywords ***
Verificar idade
    [arguments]     ${idade}
    IF      '${idade}'>='18'
        log to console      É maior de idade!
    ELSE
        log to console      É menor de idade!
    END

Identificar numero 5
    [arguments]     @{lista}
    FOR     ${contador}       IN      @{lista}
        IF   '${contador}'=='5'
        
            log to console      Sucess/${contador}
            
        END
    END

Identificar números pares
    
    [Arguments]     @{lista}
    FOR     ${contador}       IN      @{lista}
    ${numero}=      evaluate    ${contador}%2
        IF   '${numero}'=='0'
            log to console      O número ${contador} é um número par!
        ELSE
            log to console     O número ${contador} é um número ímpar!
        END
    END

Mensagem para número 5 e 8
    
    [Arguments]     @{lista}
    FOR     ${numero}       IN      @{lista}
        IF   '${numero}'=='5'
            log to console      Estou no número: ${numero}
        ELSE IF      '${numero}'=='8'
            log to console      Estou no número: ${numero}
        ELSE
            log to console      Os números não foram encontrados.
        END
    END


*** Test Cases ***
Tentando idade
    verificar idade     10 

Identificar numero
    identificar numero 5    @{numeros}

Testar numeros pares
    Identificar números pares       @{numeros}

Identificar número 5 e 8
    Mensagem para número 5 e 8      @{numeros}


    