# Trabalho Prolog - Jogo de identificação de civilizações do Age of Empires II #

## Alunos: Valdir R. Jr. e Wesley R. Lamb ##

### Vídeo demontrativo no Youtube ###

"https://youtu.be/USOk5dZG-Yw"

### Descrição: ###

  Este é um jogo de perguntas e respostas que tenta identificar a civilização do Age of Empires II que o jogador está pensando.
  O jogo faz perguntas sobre as vantagens e unidades exclusivas de cada civilização, e com base nas respostas do jogador, tenta chegar a uma conclusão.
  O jogo é baseado nas regras e classificações do jogo Age of Empires II: Definitive Edition, disponível no Steam, e no site "https://aoe2techtree.net/".

### Informações sobre as perguntas: ###

  As regras de cada uma das 50 civilizações foram baseadas nas vantagens e unidades exclusivas que elas possuem. A fonte dos dados foi o próprio jogo Age of Empires II: Definitive Edition, disponível no Steam, juntamente com o site https://aoe2techtree.net/", onde é possível consultar estas informações mesmo que não possua o jogo. 
  Ao pesquisar nessas fontes, encontramos diversas informações e focamos em algumas mais simples e facilmente encontradas ao realizar uma busca.
  
  Para exemplo, a civilização Italiana:
  
  ![italianos](https://github.com/user-attachments/assets/5c7803cf-4e4d-446b-8bdd-3b598bf32c66)

  Podemos facilmente encontrar as informações que o jogo perguntará, que são:
  1. Categoria ou vantagens (monges, infantaria, cavalaria, naval, arquearia, elefantes, defensiva, pólvora, cerco e camelos).
  2. Quantas unidades exclusivas possui (1, 2 ou 3).

  Até aqui já seria possível deduzir algumas das civilizações, porém várias possuem categorias iguais e o mesmo número de unidades exclusivas, portanto, para desempate:
  
  3. Perguntará pelo nome das unidades exclusivas.

  No exemplo da imagem, será:
  1. Arquearia e Naval.
  2. 2 unidades exclusivas.
  3. Besteiro Genovês e Condotiero.

  No código, são definidas as civilizações como hipóteses, em seguida dadas as características de cada uma.

  O código base foi o animais.pl que o professor nos disponibilizou.

## Atenção ##
  Caso você seja um jogador mais experiente de AoE II, irá perceber que algumas civilizações tem vantagens não listadas, ou diferentes. Por isso ressalto que nossos dados são baseados na classificação disponibilizada pela produtora do jogo, como por exemplo os Borgonheses, que possuem a Milícia Flamenga (infantaria) como uma de suas unidades exclusivas, mas são classificados somente como cavalaria.

      
### Como jogar: ###

  1. Visite o jogo ou o site para consultar as civilizações, suas vantagens, unidades exclusivas e toda a sua árvore de tecnologias.
  2. Abra o terminal e navegue até o diretório onde o arquivo aoe-ii-civilizations.pl está localizado.
  3. Execute o comando `swipl -s aoe-ii-civilizations.pl` para iniciar o Prolog (caso esteja utilizando a interface SWI Prolog Editor, basta clicar em consultar e continuar no terminal).
  4. MUITO IMPORTANTE: Lembre-se de que as respostas devem ser acompanhadas de um ponto final (.) para serem reconhecidas pelo Prolog, caso contrário o jogo não funcionará direito.   
  5. No prompt do Prolog, digite 'iniciar.' e pressione Enter.
  6. Responda às perguntas com 's.' (sim) ou 'n.' (não) e pressione Enter.
  7. O jogo tentará identificar a civilização que você está pensando e exibirá o resultado.
  8. Se quiser jogar novamente, digite 'iniciar.' novamente.
  9. Para sair do jogo, digite 'halt.' ou feche o terminal.
  10. Divirta-se!!
