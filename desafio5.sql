SELECT musica.cancoes AS cancao,
COUNT (hist_rep.musica_id) AS reproducoes
FROM SpotifyClone.musicas AS musica
INNER JOIN SpotifyClone.historico_reproducao AS hist_rep
ON musica.id = hist_rep.musica_id
GROUP BY musica.cancoes ORDER BY reproducoes DESC, cancao LIMIT 2;