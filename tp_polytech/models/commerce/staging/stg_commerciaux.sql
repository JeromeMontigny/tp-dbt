WITH commerciaux AS (
    SELECT
        commercial_id,
        nom_commercial
    FROM
        {{ ref('commerciaux') }}
)
SELECT
    commercial_id,
    nom_commercial
FROM
    commerciaux