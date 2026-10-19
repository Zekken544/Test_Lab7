# Session report

Тестер: М. Билгүүн-Эрдэнэ  
Оюутны код: B222270046  
Огноо: 2026-10-19, 21:44:05–22:44:41 (+08:00)  
Үргэлжилсэн хугацаа: 60 минут 36 секунд  
Mission: Уншлагын жагсаалт аппын чанарыг шинжлэх.

## Charter

[charter.md](charter.md)-ийн дагуу интерфейс, ном нэмэх, хайлт болон API-ийн алдаа боловсруулах зан төлөвийг судлав. Supermodel, Couch Potato, Saboteur аялалуудыг ашиглав. Charter нь session-ээс өмнө `6d3a893` commit-оор GitHub-д байршсан.

## Саадууд

Тестийг зогсоох хэмжээний техникийн саад тохиолдоогүй. AI туслахаас чиглүүлэг авч, апп дээрх үйлдэл болон ажиглалтыг өөрөө хийсэн.

## Цагийн задаргаа

- Setup: ойролцоогоор 0%.
- Тест дизайн ба гүйцэтгэл: ойролцоогоор 67%.
- Согог судлах: ойролцоогоор 33% буюу 20 минут.

Эдгээр хувь нь session-ийн дараах дурсамжид тулгуурласан тооцоо. Үйл ажиллагааны төрөл солигдсон цагуудыг тусад нь хэмжиж тэмдэглээгүй. Үндсэн орчны бэлтгэлийг session-ээс өмнө хийсэн.

## Тэмдэглэлийн тайлбар

- 21:12:17 дахь мөр нь тэмдэглэл оруулах дадлага; session-д хамаарахгүй.
- Түүхий тэмдэглэл дэх API-ийн BUG-08 дугаарыг эцсийн тайланд BUG-09 гэж хэрэглэнэ. Хуучин хувилбарын холбоосын алдаа BUG-08 байна.
- Давхардсан номын тэмдэглэл дэх `screenshots/` замын зөв байрлал нь `docs/screenshots/`.
- Доорх түүхий тэмдэглэлийг засварлалгүй хадгалав.

## Raw Notes

~~~text
21:12:17 | 9:12
2026-10-19 21:44:05 +08:00 | REAL SESSION START — earlier entries are practice
21:48:28 | Niit nom 3 baihad 4 gj zuun door haruulj baina.
21:48:40 | On bicdeg format buruu bn.
21:49:25 | Ustgah button nogoon ungutei bh n buruu.
21:51:13 | Nom nemehed required fields bhgu bn.
21:52:18 | Davhardsan nom huleen avsan
21:53:29 | On deer bolomjgui jil huleen avsan
21:55:41 | Search n case sensitive bn
21:59:22 | BUG-08: POST /api/books ruu buruu JSON ilgeehed HTTP 200 {"result":"OK"} butssan. Huleegdsen: HTTP 400. curl exit code: 0.
22:01:18 | API huseltiin daraa browser refresh hiihed huudas hewiin bsn. Uurclult ugui
22:04:20 | Search: Robert gj haihad Clean Code garc irsn. "robert" gj hahiad oldoogui. Zohiolchoor hailt ajillaj bga c case sensitive tul tom jijig useg ylgaj baina.
22:05:37 | "Хуучин хувилбар” holboosiig darahad “Internal Server Error” haragdav. Huleegdsen: holboos aldaagui huudas neeh.
22:10:32 | BUG-06 Garchig: Year Boundary Check Zohiolc: Lab7 On: 999 oruulaad nemeh darav. Nom jagsaaltad nemegdsen. Huleegdsen: On 1000-2100 hyzgaaraas gaduur tul neamegdehgui baih. Notolgoo: docs/screenshots/bug-06-year-999.png
22:12:38 | Year Lower Boundary, Lab7, 1000 nemehed nom amjilttai nemegdev. Hucintei dood hyzgaariig zuw huleen avsan
22:16:07 | BUG-06: Year Above Upper Boundary, Lab7, 2101 gj oruulaad nemehed amjilttai nemegdsen. Huleegdsen: 2100-s ih on tul nemehees tatgalzah. Notolgoo: docs/screenshots/bug-06-year-2101.png
22:19:09 | BUG-05: Duplicate Check, Lab7, 2000 gsn ijil medeelleer 2 udaa nemev. 2 ijil mur uussen. Huleegdsen: 2 dahi nemeltiig huleen avahgui baih. Notolgoo: screenshots/bug-05-duplicate-confirmed.png
22:24:59 | BUG-04: Missing Author Check, , 2000 gj oruulaad nemeh darahad amjilttai nemegdsen. Huleegdsen: Author zaaval buglugdsun bh ystoi tul nemegdehgui bh. Notogloo: docs/screenshots/bug-04-missing-author.png
22:27:20 | BUG-04: Missin Year Check, Lab7, on hooson. Nemeh darahad nom nemegdej on deer 0 gj zaasan. Huleegdsen: on zaaval bugluh ystoi tul nemegdehgui baih Notolgoo: docs/screenshots/bug-04-missing-year.png
22:29:28 | Garcig deer urt text uguhud nom heviin nemegdej ustgah tovc amjilttai ajillasan
22:31:02 | Nom nemehdee on deer text bicihed nomiig nemeh bolomjgui baih ystoi baital nom nemegdsen.
22:35:07 | BUG-01: Ogt bhgui nom haihad husnegted 0 nom haragdsan bolov "Niit nom: 12" gj uzuulsen. Huleegdsen: haragdaj bui muriin tootoi taarch 0 baih ystoi. Notolgoo: docs/screenshots/bug-01-empty-search.png
22:44:41 | REAL SESSION END
~~~
