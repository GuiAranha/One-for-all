SELECT
    artista.artista AS artista,
    album.album AS album,
    COUNT(artista_seg.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS artista
INNER JOIN SpotifyClone.albuns AS album
ON album.artista_id = artista.id
INNER JOIN SpotifyClone.artistas_seguidos AS artista_seg
ON artista_seg.artista_id = artista.id
GROUP BY artista.artista, album.album ORDER BY seguidores DESC, artista, album;