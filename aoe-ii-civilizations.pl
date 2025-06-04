/* 
    aoe-ii-civilizations.pl - Jogo de identifica��o de civiliza��es do Age of Empires II.

    Autores: Valdir e Wesley

    Descri��o: Este � um jogo de perguntas e respostas que tenta identificar a civiliza��o do Age of Empires II que o jogador est� pensando.
    O jogo faz perguntas sobre as vantagens e unidades exclusivas de cada civiliza��o, e com base nas respostas do jogador, tenta chegar a uma conclus�o.
    O jogo � baseado nas regras e classifica��es do jogo Age of Empires II: Definitive Edition, dispon�vel no Steam, e no site "https://aoe2techtree.net/".
    Visite o jogo ou o site "https://aoe2techtree.net/" para consultar as civiliza��es e suas vantagens, unidades exclusivas, etc.

    Como jogar:
    1. Abra o terminal e navegue at� o diret�rio onde o arquivo aoe-ii-civilizations.pl est� localizado.
    2. Execute o comando `swipl -s aoe-ii-civilizations.pl` para iniciar o Prolog (caso esteja utilizando a interface SWI Prolog Editor, basta clicar em consultar e continuar no terminal).
    3. MUITO IMPORTANTE: Lembre-se de que as respostas devem ser acompanhadas de um ponto final (.) para serem reconhecidas pelo Prolog, caso contr�rio o jogo n�o funcionar� direito.   
    4. No prompt do Prolog, digite 'iniciar.' e pressione Enter.
    5. Responda �s perguntas com 's.' (sim) ou 'n.' (n�o) e pressione Enter.
    6. O jogo tentar� identificar a civiliza��o que voc� est� pensando e exibir� o resultado.
    7. Se quiser jogar novamente, digite 'iniciar.' novamente.
    8. Para sair do jogo, digite 'halt.' ou feche o terminal.
    9. Divirta-se!
*/

iniciar :- hipotese(Civilizacao),
      write('Eu acho que a sua civiliza��o �: '),
      write(Civilizacao),
      nl,
      undo.
/* hip�teses a serem testadas - Todas as 50 civiliza��es do Age of Empires II (incluindo as expans�es)*/
hipotese(astecas)   :- astecas, !.
hipotese(bengalis)   :- bengalis, !.
hipotese(berberes)   :- berberes, !.
hipotese(birmaneses)   :- birmaneses, !.
hipotese(bizantinos)   :- bizantinos, !.
hipotese(borgonheses)   :- borgonheses, !.
hipotese(boemios)   :- boemios, !.
hipotese(bretoes)   :- bretoes, !.
hipotese(bulgaros)   :- bulgaros, !.
hipotese(celtas)   :- celtas, !.
hipotese(chineses)   :- chineses, !.
hipotese(coreanos)   :- coreanos, !.
hipotese(cumanos)   :- cumanos, !.
hipotese(dravidianos)   :- dravidianos, !.
hipotese(eslavos)   :- eslavos, !.
hipotese(espanhois)   :- espanhois, !.
hipotese(etiopes)   :- etiopes, !.
hipotese(francos)   :- francos, !.
hipotese(godos)   :- godos, !.
hipotese(hindustanis)   :- hindustanis, !.
hipotese(hunos)   :- hunos, !.
hipotese(incas)   :- incas, !.
hipotese(italianos)   :- italianos, !.
hipotese(japoneses)   :- japoneses, !.
hipotese(khmers)   :- khmers, !.
hipotese(lituanos)   :- lituanos, !.
hipotese(magiares)   :- magiares, !.
hipotese(maias)   :- maias, !.
hipotese(malaios)   :- malaios, !.
hipotese(malineses)   :- malineses, !.
hipotese(mongois)   :- mongois, !.
hipotese(gurjares)   :- gurjares, !.
hipotese(persas)   :- persas, !.
hipotese(poloneses)   :- poloneses, !.
hipotese(portugueses)   :- portugueses, !.
hipotese(sarracenos)   :- sarracenos, !.
hipotese(sicilianos)   :- sicilianos, !.
hipotese(teutoes)   :- teutoes, !.
hipotese(turcos)   :- turcos, !.
hipotese(tartaros)   :- tartaros, !.
hipotese(vietnamitas)   :- vietnamitas, !.
hipotese(vikings)   :- vikings, !.
hipotese(armenios)   :- armenios, !.
hipotese(georgianos)   :- georgianos, !.
hipotese(jurchens)   :- jurchens, !.
hipotese(quitais)   :- quitais, !.
hipotese(romanos)   :- romanos, !.
hipotese(shu)   :- shu, !.
hipotese(wei)   :- wei, !.
hipotese(wu)   :- wu, !.
hipotese(desconhecido).

/* 
    Regras de identifica��o das civiliza��es:
    - As regras de cada civiliza��o s�o baseadas nas vantagens e unidades exclusivas que elas possuem.
    - As regras s�o divididas em categorias, como infantaria, cavalaria, naval, etc.
    - A fonte dos dados foi o pr�prio jogo Age of Empires II: Definitive Edition, dispon�vel no Steam, juntamente com o site "https://aoe2techtree.net/",
      onde � poss�vel consultar estas informa��es mesmo que n�o possua o jogo.
    - Caso voc� seja um jogador de AoE II, ir� perceber que algumas civiliza��es tem vantagens n�o listadas, ou diferentes. Por isso ressalto que nossa
      base de dados se baseou na classifica��o disponibilizada pela produtora do jogo, como por exemplo os Borgonheses, que possuem a mil�cia flamenga (infantaria) 
      como uma de suas unidades exclusivas, mas s�o classificados somente como cavalaria.
*/
astecas :- monges,
           infantaria,
           uma_unidade,
           verificar(tem_como_unidade_exlusiva_o_guerreiro_jaguar).

bengalis :- naval,
            elefantes,
            uma_unidade,
            verificar(tem_como_unidade_exlusiva_o_ratha).
            
berberes :- cavalaria,
            naval,
            duas_unidades,
            verificar(tem_como_unidade_exlusiva_o_arqueiro_a_camelo_e_o_jinete).
            
birmaneses :- infantaria,
              cavalaria,
              uma_unidade,
              verificar(tem_como_unidade_exlusiva_o_arambai).
              
bizantinos :- defensiva,
              uma_unidade,
              verificar(tem_como_unidade_exlusiva_o_catafractario).
              
borgonheses :- cavalaria,
               duas_unidades,
               verificar(tem_como_unidade_exlusiva_o_coustillier_e_a_milicia_flamenga).
               
boemios :- monges,
           polvora,
           duas_unidades,
           verificar(tem_como_unidade_exlusiva_a_carroca_hussita_e_o_obuseiro).
           
bretoes :- arquearia,
           uma_unidade,
           verificar(tem_como_unidade_exlusiva_o_arqueiro_de_arco_longo).
           
bulgaros :- infantaria,
            cavalaria,
            uma_unidade,
            verificar(tem_como_unidade_exlusiva_o_konnik).
            
celtas :- infantaria,
          cerco,
          uma_unidade,
          verificar(tem_como_unidade_exlusiva_o_saqueador_azul).
          
chineses :- arquearia,
            polvora,
            duas_unidades,
            verificar(tem_como_unidade_exlusiva_o_chu_ko_nu_e_o_barco_dragao).
            
coreanos :- naval,
            defensiva,
            duas_unidades,
            verificar(tem_como_unidade_exlusiva_a_carroca_de_guerra_e_o_navio_tartaruga).
            
cumanos :- cavalaria,
           uma_unidade,
           verificar(tem_como_unidade_exlusiva_o_quipchacos).

dravidianos :- infantaria,
               naval,
               duas_unidades,
               verificar(tem_como_unidade_exlusiva_o_espadachim_urumi_e_o_thirisadai).

eslavos :- infantaria,
           cerco,
           uma_unidade,
           verificar(tem_como_unidade_exlusiva_o_boiardo).

espanhois :- monges,
             polvora,
             duas_unidades,
             verificar(tem_como_unidade_exlusiva_o_conquistador_e_o_missionario).

etiopes :- arquearia,
           uma_unidade,
           verificar(tem_como_unidade_exlusiva_o_guerreiro_de_shotel).

francos :- cavalaria,
           uma_unidade,
           verificar(tem_como_unidade_exlusiva_o_lancador_de_machado).
           
godos :- infantaria,
         uma_unidade,
         verificar(tem_como_unidade_exlusiva_o_huscarl).
         
hindustanis :- polvora,
               camelos,
               duas_unidades,
               verificar(tem_como_unidade_exlusiva_o_ghulam_e_o_cameleiro_imperial).

hunos :- cavalaria,
         uma_unidade,
         verificar(tem_como_unidade_exlusiva_o_tarkan).
         
incas :- infantaria,
         duas_unidades,
         verificar(tem_como_unidade_exlusiva_o_kamayuk_e_o_fundeiro).

italianos :- naval,
             arquearia,
             duas_unidades,
             verificar(tem_como_unidade_exlusiva_o_besteiro_genoves_e_o_condotiero).

japoneses :- infantaria,
             uma_unidade,
             verificar(tem_como_unidade_exlusiva_o_samurai).
             
khmers :- elefantes,
          cerco,
          uma_unidade,
          verificar(tem_como_unidade_exlusiva_o_elefante_de_balista).
          
lituanos :- monges,
            cavalaria,
            duas_unidades,
            verificar(tem_como_unidade_exlusiva_o_leitis_e_o_hussardo_alado).

magiares :- cavalaria,
            uma_unidade,
            verificar(tem_como_unidade_exlusiva_o_hussardo_magiar).
            
maias :- arquearia,
         uma_unidade,
         verificar(tem_como_unidade_exlusiva_o_arqueiro_emplumado).

malaios :- naval,
           uma_unidade,
           verificar(tem_como_unidade_exlusiva_o_guerreiro_de_karambit).

malineses :- infantaria,
             uma_unidade,
             verificar(tem_como_unidade_exlusiva_o_gbeto).

mongois :- arquearia,
           uma_unidade,
           verificar(tem_como_unidade_exlusiva_o_mangudai).

gurjares :- cavalaria,
            camelos,
            tres_unidades,
            verificar(tem_como_unidade_exlusiva_o_atirador_chakram_e_o_cavaleiro_shrivamsha_e_o_explorador_de_camelo).

persas :- cavalaria,
          duas_unidades,
          verificar(tem_como_unidade_exlusiva_o_elefante_de_guerra_e_o_savar).

poloneses :- cavalaria,
             duas_unidades,
             verificar(tem_como_unidade_exlusiva_o_obuch_e_o_hussardo_alado).

portugueses :- naval,
               polvora,
               duas_unidades,
               verificar(tem_como_unidade_exlusiva_o_rabadoquim_e_a_caravela).

sarracenos :- naval,
              camelos,
              uma_unidade,
              verificar(tem_como_unidade_exlusiva_o_mameluco).
              
sicilianos :- infantaria,
              cavalaria,
              uma_unidade,
              verificar(tem_como_unidade_exlusiva_o_sargento).

teutoes :- infantaria,
           uma_unidade,
           verificar(tem_como_unidade_exlusiva_o_cavaleiro_teutao).

turcos :- polvora,
          uma_unidade,
          verificar(tem_como_unidade_exlusiva_o_janizaro).

tartaros :- arquearia,
            duas_unidades,
            verificar(tem_como_unidade_exlusiva_o_keshik_e_o_camelo_flamejante).

vietnamitas :- arquearia,
               duas_unidades,
               verificar(tem_como_unidade_exlusiva_o_arqueiro_rattan_e_o_escaramucador_imperial).

vikings :- infantaria,
           naval,
           duas_unidades,
           verificar(tem_como_unidade_exlusiva_o_berserker_e_o_dracar).

armenios :- infantaria,
            naval,
            duas_unidades,
            verificar(tem_como_unidade_exlusiva_o_arqueiro_de_arco_composto_e_o_sacertote_guerreiro).

georgianos :- cavalaria,
              defensiva,
              uma_unidade,
              verificar(tem_como_unidade_exlusiva_o_monaspa).

jurchens :- cavalaria,
            polvora,
            duas_unidades,
            verificar(tem_como_unidade_exlusiva_o_pagode_de_ferro_e_o_granadeiro).

quitais :- infantaria,
           cavalaria,
           duas_unidades,
           verificar(tem_como_unidade_exlusiva_o_liao_dao_e_o_trabuco_montado).

romanos :- infantaria,
           duas_unidades,
           verificar(tem_como_unidade_exlusiva_o_centuriao_e_o_legionario).

shu :- arquearia,
       cerco,
       tres_unidades,
       verificar(tem_como_unidade_exlusiva_o_guarda_da_pluma_branca_e_a_carruagem_de_guerra_e_o_liu_bei).

wei :- cavalaria,
       tres_unidades,
       verificar(tem_como_unidade_exlusiva_o_cavalaria_tigre_e_o_invasor_xianbei_e_o_cao_cao).

wu :- infantaria,
      naval,
      tres_unidades,
      verificar(tem_como_unidade_exlusiva_o_arqueiro_de_fogo_e_o_espadachim_de_jian_e_o_sun_jian).

/* regras de classifica��o - definidas as fun��es que categorizam as civiliza��es */

    /* as perguntas a seguir se baseiam na classifica��o disponibilizada no jogo */
monges :- verificar(tem_vantagens_com_monges).
infantaria :- verificar(tem_vantagens_com_infantaria).
cavalaria :- verificar(tem_vantagens_com_cavalaria).
naval :- verificar(tem_vantagens_com_navios).
arquearia :- verificar(tem_vantagens_com_arqueiros).
elefantes :- verificar(tem_vantagens_com_elefantes).
defensiva :- verificar(tem_vantagens_com_defesas).
polvora :- verificar(tem_vantagens_com_polvora).
cerco :- verificar(tem_vantagens_com_armas_de_cerco).
camelos :- verificar(tem_vantagens_com_camelos).
    /* as perguntas a seguir s�o para diferenciar sobre a quantidade de unidades exclusivas de cada civiliza��o*/
uma_unidade :- verificar(tem_1_unidade_exclusiva).
duas_unidades :- verificar(tem_2_unidades_exclusivas).
tres_unidades :- verificar(tem_3_unidades_exclusivas).

/* Como fazer perguntas - consulte o jogo ou o site "https://aoe2techtree.net/" e escolha uma civiliza��o do seu agrado antes de jogar */

/* fun��es baseadas no arquivo animais.pl disponibilizado pelo professor */
perguntar(Questao) :-
    write('A sua civiliza��o '),
    write(Questao),
    write(' (s/n) ? '),
    read(Resposta),
    nl,
    ( (Resposta == sim ; Resposta == s)
      ->
       assert(yes(Questao)) ;
       assert(no(Questao)), fail).

:- dynamic yes/1,no/1.

/*
    (Condi��o -> A��o_se_verdadeira ; A��o_se_falsa)

    (8 =:= 4*2? -> write("sim") ; write("n�o")).
*/

/* Como verificar algo */
verificar(S) :-
   (yes(S) % tem yes?
    ->
    true ;  % se sim: retorna true
    (no(S) % n�o tem yes. Verifica tem no?
     ->
     fail ; % se sim:  para o fluxo de execu��o
     perguntar(S)% se n�o tem yes e nem no, deve perguntar
    )
   ).

/* Desfaz todas as afirma��es sim ou n�o */
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.