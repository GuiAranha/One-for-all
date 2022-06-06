SELECT
    COUNT(DISTINCT (musica.id)) AS cancoes,
    COUNT(DISTINCT (artista.id)) AS artistas,
    COUNT(DISTINCT (album.id)) AS albuns
FROM
    SpotifyClone.musicas AS musica,
    SpotifyClone.artistas AS artista,
    SpotifyClone.albuns AS album;