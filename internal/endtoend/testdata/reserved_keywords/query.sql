-- name: CreateItem :one
INSERT INTO items (class, import, def, pass, yield)
VALUES ($1, $2, $3, $4, $5)
RETURNING *;

-- name: GetItemByClass :one
SELECT * FROM items WHERE class = $1;
