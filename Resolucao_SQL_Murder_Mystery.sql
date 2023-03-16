--SQL MURDER MYSTERY - Danilo Acosta - 16/01/2023 - Solucionado 100%

--checando o relatorio de crimes por tipo e cidade
SELECT * from crime_scene_report
where type = 'murder'
and city = 'SQL City';

--baseado em um resultado da tabela de relatorio de crime, vou checar a tabela de entrevista e de pessoas com um join para com os filtros certos e achar a entrevista desejada.
--procurar a entrevista de quem mora na ultima casa da rua 'Northwestern Dr'
select * from person p
join interview i on p.id = i.person_id
where address_street_name = 'Northwestern Dr'
order by address_number DESC ;

-- Resultado: Morty Schapiro - id: 144887 - Northwestern Dr - The man got into a car with a plate that included "H42W". - The Gym membership number on the bag started with "48Z".
-- Annabel - Franklin Ave
select * from person p
join interview i on p.id = i.person_id
where address_street_name = 'Franklin Ave'
and LOWER(p.name) like '%annabel%';
--Resultado: Annabel Miller - id: 16371 - Franklin Ave - I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th.

--checando quem na academia tem o numero de membro que começa com 48Z
SELECT DISTINCT * FROM get_fit_now_member gf1
join get_fit_now_check_in gf2 on gf2.membership_id = gf1.id
where gf1.membership_status = 'gold'
and id like '48Z%'
--Resultado: os suspeitos são Joe Germuska e Jeremy Bowers

--vendo quem estava na academia ao mesmo tempo que Annabel
SELECT DISTINCT * FROM get_fit_now_member gf1
join get_fit_now_check_in gf2 on gf2.membership_id = gf1.id
where gf1.name in ('Annabel Miller', 'Joe Germuska', 'Jeremy Bowers')
--Resultado: Ambos estavam ao mesmo tempo que ela na academia


--checando a placa do carro
SELECT * from person p 
join drivers_license dl on dl.id = p.license_id 
where dl.plate_number like '%H42W%'
--Resultado: 3 carros com 'H42W' na placa, porém a licensa de motorista que bate com a placa e o suspeito seria Jeremy Bowers

/*
Suspeito: Jeremy Bowers 
Id pessoa: 67318
Id academia: 48Z55
Id motorista: 423327 
Carro: Chevrolet Spark LS 
Placa: 0H42W2
Estava ao mesmo tempo que Annabel na academia
Matricula da academia e placa do carro batem com o que Morty diz na entrevista
*/


--Inserindo o nome do suspeito na tabela e checando a solução
INSERT INTO solution VALUES (1, 'Jeremy Bowers');
SELECT value FROM solution;
--Correto! Jeremy Bowers era o Assassino.

/*Bonus:
Tente consultar a transcrição da entrevista do assassino para encontrar o verdadeiro vilão por trás desse crime.
Se você se sentir especialmente confiante em suas habilidades de SQL, tente concluir esta etapa final com no
máximo 2 consultas. Use a mesma declaração INSERT com seu novo suspeito para verificar sua resposta.
*/

--Checando a entrevista com o assassino 
SELECT * from interview i 
where person_id = 67318
/*Resultado:
Fui contratado por uma mulher com muito dinheiro.
Eu não sei o nome dela, mas sei que ela tem cerca de 1,65m (65") ou 1,67m (67").
Ela tem cabelos vermelhos e dirige um Tesla Model S. Eu sei que ela frequentou
o Concerto de Sinfonia SQL três vezes em dezembro de 2017.
*/

--Descobrindo quem é o verdadeiro vilão
SELECT * from person p 
join facebook_event_checkin fec on fec.person_id = p.id 
join income i on i.ssn = p.ssn 
join drivers_license dl on dl.id = p.license_id 
WHERE dl.gender = 'female' and dl.hair_color = 'red' and dl.car_make = 'Tesla' and dl.car_model = 'Model S' 

/* O verdadeiro Vilão é:
 * 	Nome: Miranda Priestly
 * 	Id pessoa: 99716
 * 	Id motorista: 202298
 * 	SSN: 987756388
 * 	Evento: compareceu 3x ao evento 'SQL Symphony Concert' em dezembro de 2017
 * 	Altura: 66"
 * 	Cor do cabelo: Vermelho
 * 	Gênero: Feminino
 * 	Carro: Tesla Model S
 * 	Placa: 500123
 * 	Salário Anual: $310.000 
 */

--Inserindo o nome do vilão na tabela e checando a solução
INSERT INTO solution VALUES (1, 'Miranda Priestly');
SELECT value FROM solution;
/*Resultado final:
 * Parabéns, você encontrou o cérebro por trás do assassinato! Todos na cidade SQL o aclamam como o maior detetive SQL de todos os tempos. É hora de abrir o champanhe!
 * Danilo Acosta - 16/01/2023
*/ 
