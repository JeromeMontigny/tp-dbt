WITH statuts_missions_1 AS (
    SELECT
        mission_id,
        horodatage,
        statut
    FROM
        {{ ref('statuts_missions_1') }}
)

SELECT * FROM statuts_missions_1