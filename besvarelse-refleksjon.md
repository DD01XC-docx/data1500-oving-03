# Besvarelse av refleksjonsspørsmål - DATA1500 Oppgavesett 1.3

Skriv dine svar på refleksjonsspørsmålene fra hver oppgave her.

---

## Oppgave 1: Docker-oppsett og PostgreSQL-tilkobling

### Spørsmål 1: Hva er fordelen med å bruke Docker i stedet for å installere PostgreSQL direkte på maskinen?

**Ditt svar:**

Det er en stor fordel, fordi vi kan bruke docker-compose for å implementere innstilinger og funksjoner til PostgreSQL fra starten i docker-compose.yml filen, i tillegg kan vi sende og installere databasen vår i annnet systemet uten tillegginstalasjoner. 

---

### Spørsmål 2: Hva betyr "persistent volum" i docker-compose.yml? Hvorfor er det viktig?

**Ditt svar:**

Det betyr en spesiell plass, hvor data lagres, og hvorfa implementeres til og meg hvis databasen blir re-brukt, re-deployt, eller re-installert. Derfra en data lagres der forsvinner ikke, og installeres med en gang databasen går vi gjennom.

---

### Spørsmål 3: Hva skjer når du kjører `docker-compose down`? Mister du dataene?

**Ditt svar:**

Nei, men vi mister container og nettverk som ble brukt for å implementere noe i databasen. Volumen vanligvis mistes ikke på denne måten, og vi kan bruke den igjen når docker-compose og containeren blir installert.

---

### Spørsmål 4: Forklar hva som skjer når du kjører `docker-compose up -d` første gang vs. andre gang.

**Ditt svar:**

På den ene siden når det blir kjørt første gang, da alt som nettverk, volumes, data oprettes og bruker ikke noe mer, alt oprettes på de funksjonene ble beskriv i docker-compose.yml. Fra den andre siden så fra andre, tredje osv. gangene da blir de funsjonene som blir ikke oppdatert fra første kjøring.

---

### Spørsmål 5: Hvordan ville du delt docker-compose.yml-filen med en annen student? Hvilke sikkerhetshensyn må du ta?

**Ditt svar:**

Det kan vi dele med hverandre uten noe problem men det må vi jo passe på de passordene, og personlig data som API-nøkklene vi deler til, fordi det er farlig for Git-repo, og user-names som kunne føre til sikkerhet-trussel.

---

## Oppgave 2: SQL-spørringer og databaseskjema

### Spørsmål 1: Hva er forskjellen mellom INNER JOIN og LEFT JOIN? Når bruker du hver av dem?

**Ditt svar:**

Det som blir visst under LEFT-JOIN, da blir venstre-tabellen tatt og visst til og meg vil det ikke være søke-resutater i denne radene vises. Inner-join viser rader i tabellen som blir relsultativt, det betyr men noe verdi i begge tabbelene som vises.

---

### Spørsmål 2: Hvorfor bruker vi fremmednøkler? Hva skjer hvis du prøver å slette et program som har studenter?

**Ditt svar:**

Det brukes for å hindre at data havner i "ulogisk" eller inkonsistent tilstand, det betyr at alltid alle studenter skal peke bare på de programmene som er gyldige, og at vi ikke kan få studenter uten program.

---

### Spørsmål 3: Forklar hva `GROUP BY` gjør og hvorfor det er nødvendig når du bruker aggregatfunksjoner.

**Ditt svar:**

Dennee kommandoen i SQL brukes for å begrense avgjørende av aggregatfunksjonen. Det betyr at det kommer med den for å samle rader i grupper, basert på kolonner, og beregner verdi per gruppe. 

---

### Spørsmål 4: Hva er en indeks og hvorfor er den viktig for ytelse?

**Ditt svar:**

Det er så viktig fordi indekser bygger opp rakseste mulighet å slå opp rader for tabellen. Den peker på nøkkelverdier til hvor faktiske radele ligger, og hvordan kan vi sende, hvorfra lese, og installere data. Også indekser brukes får å håndheve grenser.

---

### Spørsmål 5: Hvordan ville du optimalisert en spørring som er veldig treg?

**Ditt svar:**

For det førsta vi kan unngå SELECT * spørringer, fordi det bruker masse RAM som bruker tid for å avgjøre spørringer og å vise informasjon, også unngå "tykte" spørringer og arbeid med stor data i prosessen.

---

## Oppgave 3: Brukeradministrasjon og GRANT

### Spørsmål 1: Hva er prinsippet om minste rettighet? Hvorfor er det viktig?

**Ditt svar:**

[Skriv ditt svar her]

---

### Spørsmål 2: Hva er forskjellen mellom en bruker og en rolle i PostgreSQL?

**Ditt svar:**

[Skriv ditt svar her]

---

### Spørsmål 3: Hvorfor er det bedre å bruke roller enn å gi rettigheter direkte til brukere?

**Ditt svar:**

[Skriv ditt svar her]

---

### Spørsmål 4: Hva skjer hvis du gir en bruker `DROP` rettighet? Hvilke sikkerhetsproblemer kan det skape?

**Ditt svar:**

[Skriv ditt svar her]

---

### Spørsmål 5: Hvordan ville du implementert at en student bare kan se sine egne karakterer, ikke andres?

**Ditt svar:**

[Skriv ditt svar her]

---

## Notater og observasjoner

Bruk denne delen til å dokumentere interessante funn, problemer du møtte, eller andre observasjoner:

[Skriv dine notater her]


## Oppgave 4: Brukeradministrasjon og GRANT

1. **Hva er Row-Level Security og hvorfor er det viktig?**
   - Svar her...

2. **Hva er forskjellen mellom RLS og kolonnebegrenset tilgang?**
   - Svar her...

3. **Hvordan ville du implementert at en student bare kan se karakterer for sitt eget program?**
   - Svar her...

4. **Hva er sikkerhetsproblemene ved å bruke views i stedet for RLS?**
   - Svar her...

5. **Hvordan ville du testet at RLS-policyer fungerer korrekt?**
   - Svar her...

---

## Referanser

- PostgreSQL dokumentasjon: https://www.postgresql.org/docs/
- Docker dokumentasjon: https://docs.docker.com/

