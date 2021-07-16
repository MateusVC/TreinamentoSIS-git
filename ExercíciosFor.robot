*** Variables ***
@{jogos}    SFT     LOL     WOW

*** Keywords ***
Contar de 0 a 10
    FOR     ${valor}    IN RANGE    0   11
        log to console     ${valor}
    END

Listar ordem crescente
    [Arguments]     ${max}
    FOR     ${count}    IN RANGE    0       ${max}
        log to console      ${count}
    END

Imprimir lista
    [Arguments]     @{lista}
    FOR     ${games}    IN      @{lista}
        log to console    ${games}
    END

*** Test Cases ***
Números de 0 a 10
    Contar de 0 a 10

Contar lista crescente
    Listar ordem crescente      11

Lista de jogos
    Imprimir lista  @{jogos}