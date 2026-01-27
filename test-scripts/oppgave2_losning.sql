SELECT
    s.student_id,
    s.fornavn,
    s.etternavn,
    s.epost
FROM studenter s
LEFT JOIN emneregistreringer er
    ON s.student_id = er.student_id
WHERE er.registrering_id IS NULL;

SELECT
    e.emne_id,
    e.emne_kode,
    e.emne_navn,
    e.studiepoeng
FROM emner e
LEFT JOIN emneregistreringer er
    ON e.emne_id = er.emne_id
WHERE er.registrering_id IS NULL;

SELECT
    e.emne_id,
    e.emne_kode,
    e.emne_navn,
    s.student_id,
    s.fornavn,
    s.etternavn,
    er.karakter
FROM emneregistreringer er
JOIN emner e
    ON er.emne_id = e.emne_id
JOIN studenter s
    ON er.student_id = s.student_id
WHERE er.karakter IS NOT NULL
  AND CAST(SUBSTRING(er.karakter, 1, 1) AS INT) = (
        SELECT MAX(
                   CAST(SUBSTRING(er2.karakter, 1, 1) AS INT)
               )
        FROM emneregistreringer er2
        WHERE er2.emne_id = er.emne_id
          AND er2.karakter IS NOT NULL
  )
ORDER BY e.emne_kode, s.etternavn, s.fornavn;

SELECT
    s.student_id,
    s.fornavn,
    s.etternavn,
    p.program_navn,
    COUNT(er.registrering_id) AS antall_emner
FROM studenter s
LEFT JOIN programmer p
    ON s.program_id = p.program_id
LEFT JOIN emneregistreringer er
    ON s.student_id = er.student_id
GROUP BY
    s.student_id,
    s.fornavn,
    s.etternavn,
    p.program_navn
ORDER BY
    p.program_navn,
    s.etternavn,
    s.fornavn;

SELECT
    s.student_id,
    s.fornavn,
    s.etternavn,
    s.epost
FROM studenter s
JOIN emneregistreringer er
    ON s.student_id = er.student_id
JOIN emner e
    ON er.emne_id = e.emne_id
WHERE e.emne_kode IN ('DATA1500', 'DATA1100')
GROUP BY
    s.student_id,
    s.fornavn,
    s.etternavn,
    s.epost
HAVING
    COUNT(DISTINCT e.emne_kode) = 2
ORDER BY
    s.etternavn,
    s.fornavn;

