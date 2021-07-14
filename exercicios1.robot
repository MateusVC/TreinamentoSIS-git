*** Settings ***
Documentation           Ativadade variáveis Robotframework

*** Variable ***
&{pessoa}   nome=Mateus     idade=28        altura=186      filhos=3        corCabelo=Castanho      esportes=Lutas
#Lista
@{celular}      Samsung     Iphone     Motorola      Xiaomi       Nokia
#Dicionario Notas
&{notas}      b1=7      b2=6    b3=9
#Lista notas
@{nota}      7   6   9

*** Test Case ***
Dicionário Pessoa Todas
    Log TO Console      ${pessoa}
    Log     ${pessoa}

Dicionário Pessoa Um Por vez
    Log TO Console      ${pessoa.nome}
    Log TO Console      ${pessoa.idade}
    Log TO Console      ${pessoa.altura}
    Log TO Console      ${pessoa.filhos}
    Log TO Console      ${pessoa.corCabelo}
    Log TO Console      ${pessoa.esportes}

Lista Celular Todas
    Log TO Console      ${celular}
    Log TO Console      ${celular}

Lista celular Um Por vez
    Log TO Console      ${celular[0]}
    Log TO Console      ${celular[1]}
    Log TO Console      ${celular[2]}
    Log TO Console      ${celular[3]}
    Log TO Console      ${celular[4]}

Dicionario notas media
    ${media}    evaluate    (${notas.b1} + ${notas.b2} + ${notas.b3})/3
    Log TO Console      ${media}

Lista notas media
    ${medial}    evaluate    (${nota[0]} + ${nota[1]} + ${nota[2]})/3
    Log TO Console      ${medial}
   