Desafio SQL Murder Mystery
--------------------------

O desafio "SQL Murder Mystery" é um jogo interativo que desafia os participantes a usar suas habilidades em SQL para solucionar um mistério de assassinato. O jogo simula uma cena de crime e apresenta um conjunto de dados relacionais que os jogadores devem explorar e manipular para encontrar pistas, identificar suspeitos e, finalmente, resolver o mistério.

O jogo foi criado para ajudar as pessoas a aprender SQL e práticas de análise de dados de uma forma divertida e interativa. Para jogar, é necessário ter conhecimentos básicos de SQL e saber como usar um SGBD (Sistema de Gerenciamento de Banco de Dados).

No script que acompanha este repositório, foram utilizadas diversas técnicas de SQL para resolver o mistério. Algumas delas são:

   1. Seleção de colunas específicas: para exibir apenas as colunas necessárias para resolver o mistério
   2. Junções (JOIN): para combinar as tabelas e obter informações relevantes
   3. Cláusula WHERE: para filtrar as informações e encontrar pistas relevantes

Como jogar

Para jogar o desafio "SQL Murder Mystery", basta acessar o site oficial do jogo em https://mystery.knightlab.com/. Lá, você encontrará todas as informações necessárias para começar a jogar, incluindo o conjunto de dados, as instruções e as perguntas que precisam ser respondidas para solucionar o mistério. 

Caso você queira usar uma IDE (nesse exemplo eu vou utilizar o DBeaver) você deve:

    1. Fazer o download e instalar o DBeaver em seu computador. O DBeaver é um software gratuito e pode ser baixado em https://dbeaver.io/download/.

    2. Abra o DBeaver e clique no botão "New Database Connection" na janela principal.

    3. Na janela "New Connection", selecione "SQLite" na lista de tipos de bancos de dados e clique em "Next".

    4. Em "SQLite Settings", clique no botão "Browse" próximo ao campo "Database file". Navegue até o local onde você salvou o arquivo sql-murder-mystery.db e selecione-o. Depois, clique em "OK" para fechar a janela de seleção de arquivo.

    5. Na próxima janela, você pode deixar o campo "Connection name" como está ou digitar um nome mais descritivo para sua conexão. Depois, clique em "Finish" para salvar a nova conexão.

    6. A conexão recém-criada aparecerá na lista de conexões do DBeaver. Para abrir o banco de dados, basta clicar duas vezes na conexão. O banco de dados será aberto na janela principal do DBeaver e você poderá visualizar as tabelas e executar consultas SQL.

Com esses passos, você deve ser capaz de abrir o arquivo sql-murder-mystery.db no DBeaver e começar a explorar os dados do banco de dados SQLite.

Para resolver o mistério, você precisará criar suas próprias consultas SQL para extrair informações do conjunto de dados. O script fornecido neste repositório pode ser usado como um guia ou como uma referência para criar suas próprias consultas.
Créditos

O desafio "SQL Murder Mystery" foi criado pela equipe de engenheiros do site de ensino de programação, Mode Analytics. Agradeço a eles por disponibilizar este jogo incrível e educativo.
Conclusão

O desafio "SQL Murder Mystery" é uma ótima forma de praticar e aprimorar minhas habilidades em SQL e análise de dados. Espero que este repositório possa demonstrar como eu resolvi o mistério e me divertir ao mesmo tempo. Se você tiver alguma dúvida ou sugestão, sinta-se à vontade para entrar em contato.
