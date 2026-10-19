# BUG-09: Буруу JSON хүсэлтэд HTTP 400 биш 200 буцаадаг

Орчин: v2.0, Windows, Node.js v25.5.0, curl.exe, 2026-10-19.
Урьдчилсан нөхцөл: node app.js-ийг шинээр асаасан. PowerShell репозиторийн үндсэн хавтсанд байна.

## Дахин гаргах алхам
1. `docs/requests/malformed.json` файлд `{"title":` гэсэн дутуу JSON байгааг шалгана.
2. PowerShell дээр ажиллуулна:

```powershell
curl.exe -sS -i -X POST 'http://localhost:3000/api/books' -H 'Content-Type: application/json' --data-binary '@docs/requests/malformed.json'
$apiExitCode = $LASTEXITCODE
"curl exit code: $apiExitCode"
```

Хүлээгдсэн: Спецификацийн дагуу буруу JSON биед HTTP 400 буцаана.
Бодит: HTTP 200 OK, {"result":"OK"} буцсан. curl exit code: 0.

Ноцтой байдал: Major — хүчингүй хүсэлтийг амжилттай гэж мэдээлж байна.
Олдсон аялал: Saboteur.

## Нотолгоо
- [Бүтэн HTTP хариу](../evidence/malformed-json-curl.txt)
- [Curl exit code](../evidence/malformed-json-exit.txt)