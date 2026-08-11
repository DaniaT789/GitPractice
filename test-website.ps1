Write-Host "Starting website tests..."

$files = @(
    "index.html",
    "style.css"
)

$failed = $false

foreach ($file in $files) {
    if (Test-Path $file) {
        Write-Host "PASS: $file exists"
    }
    else {
        Write-Host "FAIL: $file is missing"
        $failed = $true
    }
}

if ($failed) {
    Write-Host "Website tests FAILED"
    exit 1
}

Write-Host "All website tests PASSED"
