/*- tícket médio de todas as vendas no dia anterior*/

select valor_total, data_emissao
FROM nf_cabecalho
WHERE DATA_EMISSAO LIKE '%2021-08-01%'
;

select (144.40 + 71.30 + 69.77) / 3 TICKET_MEDIO;


/*tícket médio de todas as vendas na semana corrente (sete dias para trás a partir do dia de ontem)*/



select valor_total, data_emissao
FROM nf_cabecalho
WHERE DATA_EMISSAO 
limit 7
;
select (144.40 + 85.40 + 22 + 54.90 + 46 + 139.50 + 109.40) / 7 TICKET_MEDIO_7_DIAS

/*tícket médio de todas as vendas no mês corrente (do dia 1 do mês corrente até o dia de ontem)*/

select valor_total, data_emissao
FROM nf_cabecalho
WHERE DATA_EMISSAO;


select SUM(VALOR_TOTAL) from nf_cabecalho;

select 2272 / 30;

/* tícket médio das vendas Web no dia anterior */

select valor_total, data_emissao
FROM nf_cabecalho
WHERE DATA_EMISSAO LIKE '%2021-08-01%'
;

select (144.40 + 71.30 + 69.77) / 3 TICKET_MEDIO;


/*tícket médio das vendas Web na semana corrente (sete dias para trás a partir do dia de ontem)*/

select valor_total, data_emissao
FROM nf_cabecalho
WHERE DATA_EMISSAO 
limit 7
;
select (144.40 + 85.40 + 22 + 54.90 + 46 + 139.50 + 109.40) / 7 TICKET_MEDIO_7_DIAS

/*tícket médio das vendas Web no mês corrente (do dia 1 do mês corrente até o dia de ontem)*/

select valor_total, data_emissao
FROM nf_cabecalho
WHERE DATA_EMISSAO;


select SUM(VALOR_TOTAL) from nf_cabecalho;

select 2272 / 30;

/*ranking dos produtos com quantidades mais vendidas no dia anterior*/

select codigo_produto, quantidade, DATA_COMPRA 
FROM nf_item 
WHERE DATA_COMPRA LIKE '%2021-08-01%'
order by quantidade desc 
;

/*ranking dos produtos com quantidades mais vendidas na semana corrente (sete dias para trás a partir do dia de ontem)*/

select codigo_produto, quantidade, data_compra
FROM nf_item 
WHERE DATA_COMPRA 
limit 7
;

/*- ranking dos produtos com quantidades mais vendidas no mês corrente (do dia 1 do mês corrente até o dia de ontem)*/

select codigo_produto, quantidade, data_compra
FROM nf_item 
WHERE DATA_COMPRA 
order by quantidade, CODIGO_PRODUTO desc
;

/*ranking dos produtos com valores mais vendidos no dia anterior */

select CODIGO_PRODUTO, valor_unitario, data_compra, quantidade
FROM nf_item 
WHERE DATA_COMPRA like '%2021-08-01%'
order by quantidade desc
;

/*- ranking dos produtos com valores mais vendidos na semana corrente (sete dias para trás a partir do dia de ontem)*/

select codigo_produto, quantidade, data_compra , VALOR_UNITARIO 
FROM nf_item 
WHERE DATA_COMPRA 
limit 7


/*- ranking dos produtos com valores mais vendidos no mês corrente (do dia 1 do mês corrente até o dia de ontem)*/

select codigo_produto, quantidade, data_compra , VALOR_UNITARIO 
FROM nf_item 
WHERE DATA_COMPRA 
order by VALOR_UNITARIO 


/*- ranking dos clientes que mais compram (valor) no dia anterior*/

select codigo_produto, quantidade, data_compra , VALOR_UNITARIO 
FROM nf_item 
WHERE DATA_COMPRA 
order by VALOR_UNITARIO 

/*- ranking dos clientes que mais compram (valor) no dia anterior*/

select CODIGO_CLIENTE_DESTINATARIO , DATA_EMISSAO, VALOR_TOTAL
FROM nf_cabecalho
WHERE DATA_EMISSAO like '%2021-08-01%'

/*- ranking dos clientes que mais compram (valor) na semana corrente (sete dias para trás a partir do dia de ontem)*/


select codigo_cliente_destinatario, data_emissao, VALOR_TOTAL 
FROM nf_cabecalho nc 
WHERE DATA_EMISSAO 
limit 7

/*- ranking dos clientes que mais compram (valor) no mês corrente (do dia 1 do mês corrente até o dia de ontem)*/


select codigo_cliente_destinatario, data_emissao,VALOR_TOTAL 
FROM nf_cabecalho
WHERE DATA_EMISSAO 
order by VALOR_TOTAL desc















