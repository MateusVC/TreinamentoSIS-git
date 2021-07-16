*** Keywords ***
somar numeros 
    [Arguments]     ${num_1}    ${num_2}
    ${soma}    evaluate    ${num_1} + ${num_2}
    [Return]    ${soma}

somar numeros embutido "${num_1}" e "${num_2}"
    ${soma}    evaluate    ${num_1} + ${num_2}
    [Return]    ${soma}

subtrair numeros 
    [Arguments]     ${num_1}    ${num_2}
    ${soma}    evaluate    ${num_1} - ${num_2}
    [Return]    ${soma}

dividir numeros 
    [Arguments]     ${num_1}    ${num_2}
    ${soma}    evaluate    ${num_1} / ${num_2}
    [Return]    ${soma}

multiplicar numeros 
    [Arguments]     ${num_1}    ${num_2}
    ${soma}    evaluate    ${num_1} * ${num_2}
    [Return]    ${soma}

Nome para e-email
    [arguments]     ${nome}
    [Return]        ${nome}@email.com.br

*** Test Case ***
Somando numeros
    ${resultado}    somar numeros   1   2
    log to console      ${resultado}

Somando numeros imbutidos
    ${resultado}    somar numeros embutido "1" e "2"
    log to console      ${resultado}

Subtraindo numeros
    ${resultado}    subtrair numeros   1   2
    log to console      ${resultado}

Dividindo numeros
    ${resultado}    dividir numeros   1   2
    log to console      ${resultado}

Multiplicando numeros
    ${resultado}    multiplicar numeros   1   2
    log to console      ${resultado}

Retornando Nome para e-mail
    ${e-mail}   Nome para e-email   Mateus
    log to console      ${e-mail}