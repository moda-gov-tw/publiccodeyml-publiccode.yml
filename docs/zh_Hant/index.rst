``publiccode.yml``
==================

``publiccode.yml`` 是一個元資料標準，適用於包含由公共行政學院開發或購買的軟體的儲存庫，目標是要方便其他實體找到並且重複利用這些儲存庫。

將 ``publiccode.yml`` 檔案加入儲存庫根目錄，並且在當中加入軟體相關資訊，技術人員與公務人員就能評估。由於人機都可輕鬆判讀此格式，因此也可建立自動索引工具。

根據義大利國家 `指引 <https://docs.italia.it/AgID/linee-guida-riuso-software/lg-acquisizione-e-riuso-software-per-pa-docs/>`_，在義大利開發的所有公共軟體都必須包含 publiccode.yml。這讓 Developers
Italia 能夠利用爬蟲程式建立國家 `軟體目錄 <https://developers.italia.it/>`_。此標準全球通用，因此特定國家的鍵不會放在標準的核心中，而是放在各國專屬的段落，並由各國政府決定。


``publiccode.yml`` 檔案當中的詳細資訊包括：

- 專案或產品的名稱與說明(一或多語言版本);
- 開發狀態(例如 ``concept``、``development``、``beta``、``stable``、``obsolete``;
- 發佈代碼庫的實體的聯絡人;
- 維護人員(若有)的聯絡資訊，包括維護合約到期日;
- 專案或產品設計時的法律背景資訊;
- 相依性

與其他。

請參閱
----------

- `更多有關重複利用軟體的資訊 <https://developers.italia.it/en/reuse>`_
- `publiccode.yml 網路編輯器
  <https://publiccode-editor.developers.italia.it/>`_

目錄
-----------------

.. toctree:: 
   :maxdepth: 2
   :numbered:

   schema.core.rst
   country.rst
   forks.rst
   categories-list.rst
   scope-list.rst
   example.rst
