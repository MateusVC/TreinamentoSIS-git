
#Lista
@{celular}     Samsung     Iphone     Motorola      Xiaomi       Nokia
#Dicionario Notas
&{notas}      b1=7      b2=6    b3=9
#Lista notas
@{notas} 7   6   9


Dicionário Um Por vez
    Log TO Console      ${pessoa.nome}
    Log     ${pessoa.nome}
    Log     ${pessoa.idade}
    Log     ${pessoa.altura}
    Log     ${pessoa.filhos}
    Log     ${pessoa.corCabelo}
    Log     ${pessoa.esportes}

Lista Todas
    Log TO Console      ${celular}
    Log      ${celular}

Lista um por vez
    Log TO Console      ${celular.[0]}
    Log      ${celular[0]}
    Log      ${celular[1]}
    Log      ${celular[2]}
    Log      ${celular[3]}
    Log      ${celular[4]}

Media notas dicionario
${media}=   evaluate (${notas.b1} + {notas.b2} + {notas.b3=9})/3
    Log TO Console  ${media}
    log     ${media}

Media notas lista
${media}   evaluate (${notas.[0] + {notas.[1]} + {notas[2]})/3
    Log TO Console  ${media}
    log     ${media}