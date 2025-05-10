WITH missions AS (
    SELECT
        mission_id,
        entreprise_id,
        commercial_id,
        libelle_mission
    FROM
        {{ ref('missions') }}
)
SELECT
    mission_id,
    entreprise_id,
    commercial_id,
    libelle_mission
FROM
    missions