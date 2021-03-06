
/********* Casamento de padrôes entre estimulo/pergunta e resposta ******************/
/***********************************************************************************/

padrao([bom, dia]['Bom dia!']).
padrao([bom, dia, _]['Bom dia!']).

padrao([como, vai, voce],[eu, 'Eu estou otimo, obrigado!']).
padrao([como, vai, voce, _|_],[eu, 'Eu estou otimo, obrigado!']).

padrao([eu, gostaria, que, voce, falasse, sobre, o, meio, ambiente],
		['O meio ambiente é sem dúvida nenhuma uma ameaça ao desenvolvimento sustentável.']).
padrao([eu, gostaria, que, voce, falasse, sobre, o, meio, ambiente, _|_],
		['O meio ambiente é sem dúvida nenhuma uma ameaça ao desenvolvimento sustentável.']).).

padrao([o, que, voce, acha, de, mulheres, gerindo, negocios],
		['A mulher abre o negócio, tem seus filhos, cria os filhos e se sustenta, tudo isso abrindo o negócio']).
padrao([o, que, voce, acha, de, mulheres, gerindo, negocios, _|_],
		['A mulher abre o negócio, tem seus filhos, cria os filhos e se sustenta, tudo isso abrindo o negócio']).

padrao([o, quao, importante, e, o, dia, das, criancas],
		['Se hoje e o dia das criancas, ontem eu disse que criancas o dia da criança e dia da mae,
		do pai e das professoras, mas tambem e o dia dos animais, sempre que você olha uma crianca,
		há sempre uma figura oculta, que e um cachorro atras.']).
padrao([o, quao, importante, e, o, dia, das, criancas, _|_],
		['Se hoje e o dia das criancas, ontem eu disse que criancas o dia da criança e dia da mae,
		do pai e das professoras, mas tambem e o dia dos animais, sempre que você olha uma crianca,
		há sempre uma figura oculta, que e um cachorro atras.']).

padrao([qual, o, seu, relacionamento, com, os prefeitos, das, cidades, brasileiras],
		['Eu sempre escuto os prefeitos. Por que é que eu escuto os prefeitos?
		Porque é lá que está a população do país, ninguém mora na União, ninguém mora']).
padrao([qual, o, seu, relacionamento, com, os prefeitos, das, cidades, brasileiras, _|_],
		['Eu sempre escuto os prefeitos. Por que é que eu escuto os prefeitos?
		Porque é lá que está a população do país, ninguém mora na União, ninguém mora']).

padrao([voce, acredita, mesmo, no, et, de, varginha],
		['Primeiro, eu queria te dizer que eu tenho muito respeito pelo ET de Varginha.
		E eu sei que aqui, quem não viu conhece alguém que viu, ou tem alguém na família que viu,
		mas de qualquer jeito eu começo dizendo que esse respeito pelo ET de Varginha está garantido.']).
padrao([voce, acredita, mesmo, no, et, de, varginha, _|_],
		['Primeiro, eu queria te dizer que eu tenho muito respeito pelo ET de Varginha.
		E eu sei que aqui, quem não viu conhece alguém que viu, ou tem alguém na família que viu,
		mas de qualquer jeito eu começo dizendo que esse respeito pelo ET de Varginha está garantido.']).

padrao([me, fala, sobre, a, autossuficiencia, do, brasil],
		['A autossuficiencia do Brasil sempre foi insuficiente.']).
padrao([me, fala, sobre, a, autossuficiencia, do, brasil, _|_],
		['A autossuficiencia do Brasil sempre foi insuficiente.']).

padrao([me, fala, sobre, a, importancia, dos, aeroportos, no, brasil],
		['O aeroporto que é uma outra forma de transporte. Aliás, outra infraestrutura, me desculpe,
		outra infraestrutura de transporte, para uma outra forma que é a forma dos aviões que são essenciais
		nesse país continental.']).
padrao([me, fala, sobre, a, importancia, dos, aeroportos, no, brasil, _|_],
		['O aeroporto que é uma outra forma de transporte. Aliás, outra infraestrutura, me desculpe,
		outra infraestrutura de transporte, para uma outra forma que é a forma dos aviões que são essenciais
		nesse país continental.']).

/* Os "Voce sabia" servem como forma de aprendizado
        guardando informação no banco de padroes. */
padrao([candidato, voce,sabia, que, Artigo, Substantivo, Verbo, _|_],['E mesmo? Nao sabia.']) :- artigo(Artigo),
																			substantivo(Substantivo),
																			verbo(Verbo).

padrao([o, voce, planeja, fazer, para, reduzir, a, emissao, de, co2, na, atmosfera, _|_],[]).
padrao([como, o, seu, governo, trata, a, questao, da, legalização, da, maconha, _|_],[]).
padrao([o, que, voce, tem, a, falar, sobre, a, legalizacao, do, aborto, _|_],[]).
padrao([como, sua, administracao, planeja, atrair, investimentos, _|_],[]).
padrao([como, seu, governo, pretende, acabar, com, o, apoio, politico, em, troca, de, favores, _|_],[]).
padrao([qual, e, a, sua, opiniao, sobre, a, participacao, popular, no, governo, _|_][]).
padrao([qual, e, a, sua, opiniao, sobre, a, obrigatoriedade, do, voto, _|_][]).
padrao([voce, e, contra, ou, favor, da, reducao, da, maioridade, penal, _|_][]).

padrao([voce,sabia, que, _|_],['Sabia nao.']).
padrao([ _,qual, sua, opiniao, sobre, a, maconha, ?],['Segundo minha memória, eu acho quesabia,que,a,maconha,faz,mal,para,a,saude.']).