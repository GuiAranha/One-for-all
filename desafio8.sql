SELECT
    artista.artista AS artista,
    album.album AS album
FROM SpotifyClone.artistas AS artista
INNER JOIN SpotifyClone.albuns AS album
ON album.artista_id = artista.id
WHERE artista.artista = 'Walter Phoenix';