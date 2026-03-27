select
    TP.sabor,
    sum(INF.quantidade) as quantidade_venda,
    total.total_geral,
    ROUND(sum(INF.quantidade) * 100.0 / total.total_geral, 2) as participacao
from itens_notas_fiscais INF
inner join tabela_de_produtos TP
    on INF.codigo_do_produto = TP.codigo_do_produto
inner join notas_fiscais NF
    on INF.numero = NF.numero
cross join (
    select sum(INF.quantidade) as total_geral
    from itens_notas_fiscais INF
    inner join notas_fiscais NF
        on INF.numero = NF.numero
    where year(NF.data_venda) = 2016
) total
where year(NF.data_venda) = 2016
group by TP.sabor, total.total_geral
order by quantidade_venda desc;