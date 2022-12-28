特定國家段落 {#country-section}

雖然分類標準應該是要國際通用，有些額外資訊卻僅適用於特定國家，像是聲明符合當地法規等。因此這裡使用的擴充欄位就是特定國家的段落。

特定國家的段落，都標示在以兩個小寫英文字母命名的鍵之下 [ISO 3166-1 alpha-2 國家代碼]( <<https://it.wikipedia.org/wiki/ISO_3166-1_alpha-2>>)。舉例來說，[spid]{.title-ref}就是義大利文軟體的屬性，顯示該軟體是否納入義大利公共身份識別系統中。

若軟體符合規定，就會有：

``` yaml it: countryExtensionVersion: "1.0" piattaforme: - spid: true``\`

請注意：國際通用的程式碼段落中，不允許使用特定國家的鍵。想要擴充資訊的國家，可以加入國家專屬段落。

義大利 {#italian-sections}

以下列出的鍵僅適用於義大利，因此只能插入在具有[it]{.title-ref}的程式碼。每個國家的代碼都是兩個英文字母，並遵守ISO
3166-1二位字母代碼標準。

鍵 [countryExtensionVersion]{.title-ref}

- 類型：string
- 是否必要：必要
- 值：["1.0"]{.title-ref}

此鍵**必須**隨時保持在[1.0]{.title-ref}。

鍵 [conforme]{.title-ref}

本章節包含用於宣告符合目前法規的鍵，這些鍵也同樣適用於之後的段落。沒有這些鍵，代表沒有符合法規或是沒有宣告合規。

鍵 [conforme/lineeGuidaDesign]{.title-ref}

- 類型：布林
- 是否必要：非必要

如果程式碼包含此鍵並且為[true]{.title-ref}，代表該軟體符合義大利無障礙法規(L. 4/2004)，詳細資訊請參閱[linee guida di
design]( <<https://docs.italia.it/italia/designers-italia/design-linee-guida-docs>>)
(義大利文)。

鍵 [conforme/modelloInteroperatibilita]{.title-ref}

- 類型：布林
- 是否必要：非必要

如果程式碼包含此鍵並且為[true]{.title-ref}，代表該軟體符合[linee guida sull'interoperabilità]( <<https://docs.italia.it/italia/piano-triennale-ict/lg-modellointeroperabilita-docs>>)。

法規參考資料：[Art. 73 del CAD]( <<https://docs.italia.it/italia/piano-triennale-ict/codice-amministrazione-digitale-docs/it/v2017-12-13/_rst/capo8_art73.html>>)
(義大利文)。

鍵 [conforme/misureMinimeSicurezza]{.title-ref}

- 類型：布林
- 是否必要：非必要

如果程式碼包含此鍵並且為[true]{.title-ref}，代表該軟體符合[Misure minime di sicurezza ICT per le
Pubbliche amministrazioni]( <<https://www.agid.gov.it/it/sicurezza/misure-minime-sicurezza-ict>>)
(義大利文)。

鍵 [conforme/gdpr]{.title-ref}

- 類型：布林
- 是否必要：非必要

如果程式碼包含此鍵並且為[true]{.title-ref}，代表該軟體符合歐盟一般資料保護規範。

段落 [piattaforme]{.title-ref}

鍵 [piattaforme/spid]{.title-ref}

- 類型：布林
- 是否必要：非必要

如果程式碼包含此鍵並且為[true]{.title-ref}，代表該軟體配合[SPID - il Sistema Pubblico di Identità
Digitale]( <<https://developers.italia.it/it/spid>>)。

鍵 [piattaforme/cie]{.title-ref}

- 類型：布林
- 是否必要：非必要

如果程式碼包含此鍵並且為[true]{.title-ref}，代表該軟體配合義大利電子身分證使用([Carta di Identità
Elettronica]{.title-ref})。

鍵 [piattaforme/anpr]{.title-ref}

- 類型：布林
- 是否必要：非必要

如果程式碼包含此鍵並且為[true]{.title-ref}，代表該軟體配合ANPR。

鍵 [piattafome/pagopa]{.title-ref}

- 類型：布林
- 是否必要：非必要

如果程式碼包含此鍵並且為[true]{.title-ref}，代表該軟體配合pagoPA。

鍵 [piattaforme/io]{.title-ref}

- 類型：布林
- 是否必要：非必要

如果程式碼包含此鍵並且為[true]{.title-ref}，代表該軟體配合[IO - 義大利公共服務應用程式]( <<https://io.italia.it/>>)。

段落 [riuso]{.title-ref}

本段落包含與[Developers Italia]( <<https://developers.italia.it>>)重複利用目錄當中，軟體發行相關的多個鍵。

鍵 [riuso/codiceIPA]{.title-ref}

- 類型：string (iPA代碼)
- 是否必要：若[repoOwner]{.title-ref}為公共行政機關，則有必要
- 範例：[c_h501]{.title-ref}

此鍵代表公共行政索引(codice IPA)當中的行政機關代碼。
