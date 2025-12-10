**Coffeeco Sales Analytics – BI Project (Kristóf Márk, 2025)**

**A projekt háttere ☕**
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
A Coffeeco Company egy kávé - és annak készítéséhez egyéb elektronikai eszközöket - tartozékokat értékesítő e-commerce/retail vállalat.
Jelenleg csak Magyarország-on vannak jelen, több nagyvárosban, illetve online.
A vállalatnak kb 8000 rendelése van, azonban ezek alatt is vannak marketing, vásárlói, regionális és egyéb informatív adatok.
Az elemzéssel olyan kritikus pontokat, információkat / adatokat találunk, amire támasztva a vállalat döntéseket bír hozni a jövőre nézve, illetve növelni tudja majd a hatékonyságát.


**A következő kulcsterületekkel foglalkozik az elemzés** :


- Sales Trend Analízis : Hisztorikális eladási adatok, trendek vizsgálata, regionális és termékszinten, a profitra (Margin), vásárlási volumenre (Order Count) fókuszálva. 

- Termék szintű teljesítmény analízis : Legjobban teljesító termékek illetve termékkategóriák időbeli, regionális illetve profitabilitási és trend elemzése.

- Marketing teljesítmény analízis : A legsikeresebb, legprofitabilisebb marketingprogramok feltérképezése, elemzése illetve befolyása az eladásokra, a vásárlói élettartam érték (CLV), illetve regionális marketing profit alapján.

- Regionális összehasonlítás : Az eládások területi bontása, profit, és eladott termékek alapján.


Az elemzés megtekintéséhez a következő linken keresztül le lehet tölteni az általam készített power BI dashboardot : __

Az adattisztításhoz, részben formázáshoz használt általam írt SQL Queryk az alábbi linken érhetők el : __  
( ami nincs benne, ott egy basic select from volt csak és nem mentettem el )

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Adatstruktúra 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
<img width="1730" height="1016" alt="image" src="https://github.com/user-attachments/assets/8fbc0e3d-c431-4d1f-80eb-858bd445b70e" />

Az analízis, illetve adattisztítást az adatok ellenőrzése előzte meg, illetve a kapcsolatok keresése amiket SQL-ben optimalizáltam.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Projektösszefoglaló
---
Az egyéves értékesítési adat elemzése azt mutatja, hogy a bevételi ingadozások legfőbb mozgatórugója az Equipment kategória teljesítménye, amely a vállalat profitjának legnagyobb részét adja. A legjelentősebb visszaesések januárban (-20.37%) és májusban (-18.95%) következtek be, elsősorban a kategória gyengülése és a promóciós aktivitás csökkenése miatt. Budapest több szezonális csúcsidőszakban is alulteljesített a korlátozott és rosszul időzített marketingbefektetések miatt, míg az Espresso Machine és Grinder termékek kereslete telítődött a decemberi kiugró teljesítményt követően. A legerősebb növekedést június (+18.9%) hozta, amelyet kiemelkedően hatékony Social és Influencer kampányok — különösen a BF25 kedvezmény — vezettek.
A vállalat teljesítménye javítható a marketingköltségvetés célzott átcsoportosításával a megfelelő szezononok, csatonák felé, az Accessories kategória erősítésével diverzifikáció miatt, hogy ne csak egy kategórián múljon a cég mutatóinak nagyrésze. Esetleg cross-sell és bundle ajánlatok, valamint Budapest szezonális promócióinak fejlesztése, hogy jobban igazodjona piaci potenciáljához.

------------------------------------------------------------


