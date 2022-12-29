.. _`country-section`:

特定國家段落
=========================

雖然分類標準應該是要國際通用，有些額外資訊卻僅適用於特定國家，像是聲明符合當地法規等。因此這裡使用的擴充欄位就是特定國家的段落。

All country-specific sections live under a key named after two-letter
lowercase `ISO 3166-1 alpha-2 country
codes <https://it.wikipedia.org/wiki/ISO_3166-1_alpha-2>`__. For instance
``spid`` is a property for Italian software declaring whether the
software is integrated with the Italian Public Identification System.

特定國家的段落，都標示在以兩個小寫英文字母命名的鍵之下 `ISO 3166-1 alpha-2 國家代碼 <https://it.wikipedia.org/wiki/ISO_3166-1_alpha-2>`__。舉例來說，``spid`` 就是義大利文軟體的屬性，顯示該軟體是否納入義大利公共身份識別系統中。

若軟體符合規定，就會有：

.. code:: yaml

   it:
     countryExtensionVersion: "1.0"
     piattaforme:
      - spid: true

請注意：國際通用的程式碼段落中，不允許使用特定國家的鍵。想要擴充資訊的國家，可以加入國家專屬段落。

.. include:: schema.it.rst
