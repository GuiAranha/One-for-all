SELECT COUNT(musica_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_reproducao AS hist_rep
INNER JOIN SpotifyClone.usuarios AS usuario
ON hist_rep.usuario_id = usuario.id
WHERE usuario.usuario = 'Bill';