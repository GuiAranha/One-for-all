SELECT
    usuario.usuario AS usuario,
    COUNT(hist_rep.musica_id) AS qtde_musicas_ouvidas,
    ROUND((SUM(musica.duracao_segundos) / 60), 2) AS total_minutos
FROM SpotifyClone.usuarios AS usuario

INNER JOIN SpotifyClone.historico_reproducao AS hist_rep
ON usuario.id = hist_rep.usuario_id

INNER JOIN SpotifyClone.musicas AS musica
ON musica.id = hist_rep.musica_id

GROUP BY usuario.id ORDER BY usuario.usuario;