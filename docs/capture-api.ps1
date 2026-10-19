$repoRoot = Split-Path -Parent $PSScriptRoot
$bodyPath = Join-Path $PSScriptRoot 'requests\malformed.json'
$evidenceDir = Join-Path $repoRoot 'evidence'
New-Item -ItemType Directory -Force -Path $evidenceDir | Out-Null

$responsePath = Join-Path $evidenceDir 'malformed-json-curl.txt'
$exitPath = Join-Path $evidenceDir 'malformed-json-exit.txt'

if (Test-Path -LiteralPath $responsePath) {
    throw 'Evidence already exists. Preserve it before repeating this test.'
}

$response = curl.exe -sS -i --connect-timeout 5 --max-time 15 -X POST 'http://localhost:3000/api/books' -H 'Content-Type: application/json' --data-binary "@$bodyPath" 2>&1
$curlExitCode = $LASTEXITCODE

$response | Set-Content -LiteralPath $responsePath -Encoding utf8
"curl exit code: $curlExitCode" | Set-Content -LiteralPath $exitPath -Encoding utf8

$response
"curl exit code: $curlExitCode"