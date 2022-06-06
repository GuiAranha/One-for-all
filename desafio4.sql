SELECT usuario.usuario AS usuario,
IF((MAX(YEAR(hist_rep.data_reproducao))=2021), 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuarios AS usuario
INNER JOIN SpotifyClone.historico_reproducao AS hist_rep
ON usuario.id = hist_rep.usuario_id
GROUP BY usuario.id ORDER BY usuario.usuario;