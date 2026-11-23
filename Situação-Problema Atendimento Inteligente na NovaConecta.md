# Situação-Problema: Atendimento Inteligente na NovaConecta

## Contexto da empresa

A **NovaConecta Telecom** é uma provedora de internet fibra óptica e TV por assinatura que atende cerca de 120 mil clientes na região Sudeste do Brasil. Fundada há 9 anos, a empresa cresceu rapidamente, mas sua estrutura de atendimento não acompanhou esse crescimento.

Hoje, os clientes entram em contato principalmente por WhatsApp, e-mail e pelo chat do aplicativo. Juntos, esses canais geram uma média de **540 mensagens por dia**, com picos de **900 mensagens** nas segundas-feiras e logo após o fechamento das faturas (dias 5 e 20 de cada mês).

## Como o atendimento funciona hoje

A empresa mantém **uma única atendente de triagem**, Marlene, responsável por:

1. Ler todas as mensagens recebidas ao longo do dia.
2. Decidir manualmente a qual departamento cada mensagem pertence.
3. Encaminhar por e-mail ou planilha compartilhada ao setor responsável.
4. Escrever uma resposta inicial ao cliente, geralmente copiada de modelos antigos.

Não existe registro estruturado dessas decisões. Tudo é feito em uma planilha do Excel e em conversas de WhatsApp, sem histórico confiável e sem padronização.

## Os problemas enfrentados

**1. Lentidão na triagem.** Uma pessoa não consegue ler e classificar 500 mensagens por dia. O tempo médio entre o cliente enviar a mensagem e ela chegar ao departamento correto é de **7 horas**, chegando a **2 dias** em períodos de pico.

**2. Erros de direcionamento.** Cerca de **18% das mensagens** são enviadas ao setor errado. Um cliente que reclama de cobrança indevida acaba no suporte técnico, que devolve o caso, que passa por mais um setor, e o cliente espera dias.

**3. Falta de priorização.** Todas as mensagens entram na mesma fila, na ordem de chegada. Um cliente ameaçando cancelar o contrato ou sem internet há três dias espera o mesmo tempo que alguém perguntando sobre a segunda via do boleto.

**4. Perda de mensagens.** Em semanas de alto volume, a equipe já identificou mensagens que ficaram sem resposta porque se perderam na planilha ou foram sobrescritas por outra pessoa. Em um episódio recente, **23 mensagens** de clientes ficaram sem retorno por quase uma semana.

**5. Respostas inconsistentes.** Cada atendente responde de um jeito. Clientes com o mesmo problema recebem orientações diferentes, e a empresa já teve reclamações no Procon por informações contraditórias sobre multa de cancelamento.

**6. Ausência de dados para decisão.** A diretoria não sabe quais são os assuntos mais frequentes, quais departamentos são mais sobrecarregados, nem quantos clientes reclamam de cobrança por mês. Sem esses números, não consegue agir sobre as causas.

## Tipos de demanda recebidos

Analisando uma amostra de 3 mil mensagens, a empresa identificou os seguintes grupos:

| Tipo de demanda | Participação aproximada | Exemplo de mensagem |
| --- | --- | --- |
| Cobrança indevida | 24% | "Fui cobrado duas vezes na fatura deste mês, quero o estorno." |
| Problemas de acesso | 28% | "Minha internet caiu ontem e não volta, já reiniciei o roteador." |
| Reclamações | 17% | "Já é a terceira vez que ligo e ninguém resolve meu problema." |
| Cancelamento | 12% | "Quero cancelar meu plano, encontrei uma oferta melhor." |
| Dúvidas comerciais e contratuais | 11% | "Como faço para mudar para o plano de 500 megas?" |
| Elogios e outros | 8% | "Parabéns ao técnico que veio hoje, foi muito atencioso." |

## Departamentos da empresa

- **Financeiro:** cobranças, estornos, segunda via, negociação de débitos.
- **Suporte Técnico:** quedas de conexão, lentidão, equipamentos, visita técnica.
- **Retenção:** clientes que pedem cancelamento ou ameaçam sair.
- **Comercial:** troca de plano, novas contratações, mudança de endereço.
- **Ouvidoria:** reclamações formais, casos recorrentes, risco jurídico.

## Um dia típico do problema

Em uma segunda-feira de fechamento de fatura, a NovaConecta recebeu 870 mensagens. Marlene conseguiu classificar 310 antes do fim do expediente. As demais ficaram para o dia seguinte. Entre as mensagens paradas estava a de um cliente empresarial que relatava internet fora do ar há 36 horas e mencionava que acionaria o Procon. A mensagem só foi lida na quarta-feira, quando o cliente já havia registrado a reclamação em um órgão de defesa do consumidor e solicitado o cancelamento.

Esse tipo de situação gerou, no último trimestre, um aumento de **22% no churn** (cancelamento de clientes) e **61 reclamações** em órgãos de defesa do consumidor.

## O desafio da diretoria

A diretoria da NovaConecta quer automatizar a triagem, mas impôs algumas condições:

- A solução deve **ler cada mensagem**, identificar o assunto, classificar o tipo de atendimento e definir o nível de urgência (baixo, médio, alto ou crítico).
- A mensagem deve ser **direcionada automaticamente** ao departamento correto.
- O sistema deve **sugerir uma resposta** ao cliente, mas um atendente humano precisa **revisar antes do envio**.
- Os dados dos clientes **não podem sair da infraestrutura da empresa**, por conta da LGPD. Por isso, o modelo de IA precisa rodar localmente.
- **Nenhuma mensagem pode ser perdida**, mesmo que o servidor ou a IA falhe no meio do processamento.
- A empresa precisa de um **painel** que mostre volume por assunto, tempo de atendimento, distribuição por departamento e a taxa de acerto do modelo.
- A IA vai errar às vezes. Por isso, os atendentes devem poder **corrigir a classificação**, e essas correções precisam ser registradas para medir a qualidade do modelo ao longo do tempo.

## Meta do projeto

| Indicador | Hoje | Meta |
| --- | --- | --- |
| Tempo de triagem | 7 horas (média) | Menos de 1 minuto |
| Erros de direcionamento | 18% | Abaixo de 5% |
| Mensagens perdidas | Dezenas por mês | Zero |
| Casos críticos identificados em até 15 min | Não medido | 95% |
| Respostas padronizadas | Não | Sim, com revisão humana |

## Pergunta central

> Como construir um sistema que receba centenas de mensagens por dia, classifique cada uma com apoio de IA local, encaminhe ao departamento certo, sugira uma resposta, nunca perca dados e permita que a empresa meça se a IA está acertando?
