*** Settings ***
*** Variables ***

@{pres}      CONT     INFO    CONH    REDE    LOCA
@{areas}    Contabilidade    Tecnologia da Informação    Area de Conhecimento    Rede Social    Localização
@{tipos}    Radio Button    Text Area    Input    Select
@{select}   No    Yes  
@{selecionar}    Não    Sim


&{q06}    pergunta=Como ficou sabendo da nossa vaga?
...      resposta=LinkedIn
&{q07}    pergunta=Qual o seu nível de inglês?
...      resposta=Intermediário
&{q08}    pergunta=Você possui algum familiar (como pais, irmãos, sogros, cunhados, cônjuges, ou filhos, enteados, padrasto/madrasta, genro/ nora, amigo íntimo ou pessoa próxima (com quem você tem um relacionamento significativo e contínuo) que atualmente trabalha na CI&T?
...      resposta=Não
&{q09}    pergunta=Você possui alguma deficiência?
...      resposta=Não
&{q10}   pergunta=Qual sua pretensão salarial?
...      resposta=4000.00 
&{q10a}   pergunta=Pretensão salarial?
...      resposta=${q10['resposta']}
&{q11}   pergunta=Você tem disponibilidade para trabalhar em horários flexíveis?
...      resposta=Sim
&{q12}   pergunta=Você possui alguma experiência anterior na área?
...      resposta=Não
&{q13}   pergunta=Você possui experiência em testes manuais?
...      resposta=Yes
&{q10b}   pergunta=Qual seria sua pretensão salarial para uma vaga CLT? Só contratamos nessa modalidade. 
...       resposta=${q10['resposta']}
