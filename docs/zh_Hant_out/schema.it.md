義大利 {#italian-sections}

以下列出的鍵僅適用於義大利，因此只能插入在具有[it]{.title-ref}的程式碼。每個國家的代碼都是兩個英文字母，並遵守ISO
3166-1二位字母代碼標準。

[countryExtensionVersion]{.title-ref}鍵

- 類型：string
- 是否必要：必要
- 值：["1.0"]{.title-ref}

此鍵**必須**隨時保持在[1.0]{.title-ref}。

[conforme]{.title-ref}鍵

本章節包含用於宣告符合目前法規的鍵，這些鍵也同樣適用於之後的段落。沒有這些鍵，代表沒有符合法規或是沒有宣告合規。

[conforme/lineeGuidaDesign]{.title-ref}鍵

- 類型：布林
- 是否必要：非必要

如果程式碼包含此鍵並且為[true]{.title-ref}，代表該軟體符合義大利無障礙法規(L. 4/2004)，詳細資訊請參閱[linee guida di
design]( <<https://docs.italia.it/italia/designers-italia/design-linee-guida-docs>>)
(義大利文)。

[conforme/modelloInteroperatibilita]{.title-ref}鍵

- 類型：布林
- 是否必要：非必要

如果程式碼包含此鍵並且為[true]{.title-ref}，代表該軟體符合[linee guida sull'interoperabilità]( <<https://docs.italia.it/italia/piano-triennale-ict/lg-modellointeroperabilita-docs>>)。

法規參考資料：[Art. 73 del CAD]( <<https://docs.italia.it/italia/piano-triennale-ict/codice-amministrazione-digitale-docs/it/v2017-12-13/_rst/capo8_art73.html>>)
(義大利文)。

[conforme/misureMinimeSicurezza]{.title-ref}鍵

- 類型：布林
- 是否必要：非必要

如果程式碼包含此鍵並且為[true]{.title-ref}，代表該軟體符合[Misure minime di sicurezza ICT per le
Pubbliche amministrazioni]( <<https://www.agid.gov.it/it/sicurezza/misure-minime-sicurezza-ict>>)
(義大利文)。

[conforme/gdpr]{.title-ref}鍵

- 類型：布林
- 是否必要：非必要

如果程式碼包含此鍵並且為[true]{.title-ref}，代表該軟體符合歐盟一般資料保護規範。

[piattaforme]{.title-ref}段落

[piattaforme/spid]{.title-ref}鍵

- 類型：布林
- 是否必要：非必要

如果程式碼包含此鍵並且為[true]{.title-ref}，代表該軟體配合[SPID - il Sistema Pubblico di Identità
Digitale]( <<https://developers.italia.it/it/spid>>)。

[piattaforme/cie]{.title-ref}鍵

- 類型：布林
- 是否必要：非必要

如果程式碼包含此鍵並且為[true]{.title-ref}，代表該軟體配合義大利電子身分證使用([Carta di Identità
Elettronica]{.title-ref})。

[piattaforme/anpr]{.title-ref}鍵

- 類型：布林
- 是否必要：非必要

如果程式碼包含此鍵並且為[true]{.title-ref}，代表該軟體配合ANPR。

[piattafome/pagopa]{.title-ref}鍵

- 類型：布林
- 是否必要：非必要

如果程式碼包含此鍵並且為[true]{.title-ref}，代表該軟體配合pagoPA。

[piattaforme/io]{.title-ref}鍵

- 類型：布林
- 是否必要：非必要

如果程式碼包含此鍵並且為[true]{.title-ref}，代表該軟體配合[IO - 義大利公共服務應用程式]( <<https://io.italia.it/>>)。

[riuso]{.title-ref}段落

本段落包含與[Developers Italia]( <<https://developers.italia.it>>)重複利用目錄當中，軟體發行相關的多個鍵。

[riuso/codiceIPA]{.title-ref}註冊碼

- 類型：string (iPA代碼)
- 是否必要：若[repoOwner]{.title-ref}為公共行政機關，則有必要
- 範例：[c_h501]{.title-ref}

此鍵代表公共行政索引(codice IPA)當中的行政機關代碼。
