WITH entreprises AS (
    SELECT
        entreprise_id,
        nom_entreprise
    FROM
        {{ ref('entreprises') }}
)
SELECT
    entreprise_id,
    nom_entreprise
FROM
    entreprises
