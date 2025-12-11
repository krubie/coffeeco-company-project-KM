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


Az adattisztításhoz, részben formázáshoz használt általam írt SQL Queryk az alábbi linken érhetők el : __

Az elemzés megtekintéséhez a következő linken keresztül le lehet tölteni az általam készített power BI dashboardot : [itt](https://github.com/krubie/coffeeco-company-project-KM/blob/main/CoffeecoProject.pbix) 

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
A vállalat teljesítménye javítható a marketingköltségvetés célzott átcsoportosításával a megfelelő szezononok, csatonák felé, az Accessories kategória erősítésével diverzifikáció miatt, hogy ne csak egy kategórián múljon a cég mutatóinak nagyrésze. Esetleg cross-sell és bundle ajánlatok, valamint Budapest szezonális promócióinak fejlesztése, hogy jobban igazodjon a piaci potenciáljához.

------------------------------------------------------------
Deepdive : 
--
**A legnagyobb visszaesés : 2025.01 (-20.37%)**

1. A vállalat legnagyobb profitja az Equipment kategóriából származik, amiből a Budapesti üzlet kivételével, Januárban minden üzlet visszaesést mutatott.
<img width="1929" height="909" alt="image" src="https://github.com/user-attachments/assets/c7a4e51e-3073-4256-92c5-ebfee76e3154" />


2. Az Espresso Machine (és részben a Grinder) termékek decemberben szinte minden város extrém kiugrást ért el, amit a promóciók is részben támogattak. A kereslet év végére telítődött, így januárban természetes visszaesés következett be.
<img width="1689" height="445" alt="image" src="https://github.com/user-attachments/assets/5cf9b2cf-656a-4909-9560-b61ea251aa22" />


3. Budapesten azonban gyenge volt a promóció mértéke - hatékonysága, ezért decemberben nem produkált semmilyen kategóriában kiugró értéket, így januárban kisebb visszaesést mutatott csak.
<img width="1694" height="923" alt="image" src="https://github.com/user-attachments/assets/a81a11c5-9080-4e03-9093-5e2fe7208342" />


**Az elmúlt év második legnagyobb csökkenése : 2025.05 (-18.95%):**

1. A cég legnagyobb profitja az Equipment kategóriából származik, amely májusban jelentős visszaesést mutatott.
 Ezért a teljes vállalati profit is aránytalanul nagy mértékben csökkent, a legtöbb üzleti mutatóval.
<img width="1941" height="597" alt="image" src="https://github.com/user-attachments/assets/36de70e4-16f4-483a-881d-a757997b3c66" />


2. A csökkenés minden városban ugyanazt a két terméktípust érintette (Grinder és Kettle), így a probléma globális,
feltehetően termék eredetű.
<img width="1670" height="428" alt="image" src="https://github.com/user-attachments/assets/86335ac4-426f-4daa-9d77-c2654294e176" />


3. A marketingbevétel minden csatornán és minden városban visszaesett, különösen az egyik legjövedelmezőbb értékesítési útvonalon, az „Affiliate” programban.
 Ez jelentősen csökkenthette a keresletet a kritikus termékkategóriákban.

<img width="824" height="497" alt="image" src="https://github.com/user-attachments/assets/0d0a857c-8d71-4c50-9292-680ee1361592" />


Itt látható az Affiliate kategória : 
<img width="826" height="480" alt="image" src="https://github.com/user-attachments/assets/8b5191a6-0a29-46d0-b17d-bca86752800c" />


A kevésbé aktív promóció, illetve a termékekkel kapcsolatos potenciális ellátási vagy minőségi problémák, vagy akár erősödő verseny együttesen magyarázhatják a visszaesést.


**Az elmúlt egy év legnagyobb növekedése : 2025.06 (16.8%)**

1. 2025.06 kiugró növekedését a májusi visszaesést követően elsősorban Budapest kiemelkedő teljesítménye okozta, ahol a Social és Influencer marketing kampányok – különösen a BF25 kód – rendkívül hatékonyak voltak.

<img width="763" height="508" alt="image" src="https://github.com/user-attachments/assets/44f58ac4-4779-41c0-a10b-9d50741c5fe9" />


2. A kampányok nagy arányban az Equipment kategóriára terelték a vásárlókat, amely amúgy is a vállalat legprofitabilisabb termékcsoportja, így a bevétel és a profit egyaránt éves rekordot ért el.
A kisebb városok visszaesése(Pécs, Miskolc – gyenge promóció) nem befolyásolta jelentősen az összképet.

3. Kiemelkedően magas profitabilitású termékek lettek promóciózva, így a profitabilitásban, és az éves profitban is rekordot döntöttek az eladások.
