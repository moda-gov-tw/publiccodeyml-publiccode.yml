\# Country-Specific Sections {#country-section}

While the standard is structured to be meaningful on an international
level, there are additional information that can be added that makes
sense in specific countries, such as declaring compliance with local
laws or regulations. The provided extension mechanism is the usage of
country-specific sections.

All country-specific sections live under a key named after two-letter
lowercase \[ISO 3166-1 alpha-2 country
codes\](\<<https://it.wikipedia.org/wiki/ISO_3166-1_alpha-2>\>). For
instance \[spid\]{.title-ref} is a property for Italian software
declaring whether the software is integrated with the Italian Public
Identification System.

If a software is compliant I will find:

`` ` yaml it:   countryExtensionVersion: "1.0"   piattaforme:    - spid: true ``\`

Notice that country-specific keys within international sections are not
allowed. Countries that want to extend the format should add a
country-specific section instead.

\## Italy {#italian-sections}

All the keys listed below are specific for Italy and, as such, they must
be inserted in a section named with the \[it\]{.title-ref} code. Every
Country is specified using a two letters *country code* following the
ISO 3166-1 alpha-2 standard.

\### Key \[countryExtensionVersion\]{.title-ref}

-   Type: string
-   Presence: mandatory
-   Value: \[\"1.0\"\]{.title-ref}

This key **MUST** always be set to \[1.0\]{.title-ref}.

\### Key \[conforme\]{.title-ref}

This section contains the keys for auto-declaring the compliance with
the current legislation, with respect to the following sections. Not
including these keys implies that the compliance is not known or not
declared.

\#### Key \[conforme/lineeGuidaDesign\]{.title-ref}

-   Type: boolean
-   Presence: optional

If present and set to \[true\]{.title-ref}, the software is compliant
with the Italian accessibility laws (L. 4/2004), as further explained in
the \[linee guida di
design\](\<<https://docs.italia.it/italia/designers-italia/design-linee-guida-docs>\>)
(Italian language).

\#### Key \[conforme/modelloInteroperatibilita\]{.title-ref}

-   Type: boolean
-   Presence: optional

If present and set to \[true\]{.title-ref}, the software is compliant
with the \[linee guida
sull\'interoperabilità\](\<<https://docs.italia.it/italia/piano-triennale-ict/lg-modellointeroperabilita-docs>\>).

Regulatory reference: \[Art. 73 del
CAD\](\<<https://docs.italia.it/italia/piano-triennale-ict/codice-amministrazione-digitale-docs/it/v2017-12-13/_rst/capo8_art73.html>\>)
(Italian language).

\#### Key \[conforme/misureMinimeSicurezza\]{.title-ref}

-   Type: boolean
-   Presence: optional

If present and set to \[true\]{.title-ref}, the software is compliant
with the \[Misure minime di sicurezza ICT per le Pubbliche
amministrazioni\](\<<https://www.agid.gov.it/it/sicurezza/misure-minime-sicurezza-ict>\>)
(Italian language).

\#### Key \[conforme/gdpr\]{.title-ref}

-   Type: boolean
-   Presence: optional

If present and set to \[true\]{.title-ref}, the software respects the
GDPR.

\### Section \[piattaforme\]{.title-ref}

\#### Key \[piattaforme/spid\]{.title-ref}

-   Type: boolean
-   Presence: optional

If present and set to \[true\]{.title-ref}, the software interfaces with
\[SPID - il Sistema Pubblico di Identità
Digitale\](\<<https://developers.italia.it/it/spid>\>).

\#### Key \[piattaforme/cie\]{.title-ref}

-   Type: boolean
-   Presence: optional

If present and set to \[true\]{.title-ref}, the software interfaces with
the Italian electronic ID card (\[Carta di Identità
Elettronica\]{.title-ref}).

\#### Key \[piattaforme/anpr\]{.title-ref}

-   Type: boolean
-   Presence: optional

If present and set to \[true\]{.title-ref}, the software interfaces with
ANPR.

\#### Key \[piattafome/pagopa\]{.title-ref}

-   Type: boolean
-   Presence: optional

If present and set to \[true\]{.title-ref}, the software interfaces with
pagoPA.

\#### Key \[piattaforme/io\]{.title-ref}

-   Type: boolean
-   Presence: optional

If present and set to \[true\]{.title-ref}, the software interfaces with
\[IO - the public services app\](\<<https://io.italia.it/>\>).

\### Section \[riuso\]{.title-ref}

This section contains a set of keys related to the publication of the
software inside the reuse catalog of \[Developers
Italia\](\<<https://developers.italia.it>\>).

\#### Chiave \[riuso/codiceIPA\]{.title-ref}

-   Type: string (iPA code)
-   Presence: mandatory if \[repoOwner\]{.title-ref} is a Public
    Administration
-   Example: \[c_h501\]{.title-ref}

This key represents the administration code inside the Public
Administration index (codice IPA).
