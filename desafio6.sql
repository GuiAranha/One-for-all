SELECT
    MIN(plano.valor_plano) AS faturamento_minimo,
    MAX(plano.valor_plano) AS faturamento_maximo,
    ROUND(AVG(plano.valor_plano), 2) AS faturamento_medio,
    SUM(plano.valor_plano) AS faturamento_total
FROM SpotifyClone.planos AS plano
INNER JOIN SpotifyClone.usuarios AS usuario
ON usuario.plano_id = plano.id;
