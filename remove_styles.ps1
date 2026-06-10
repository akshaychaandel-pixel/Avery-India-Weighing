$path = 'D:\Antigravity AI agent\index.html'
$content = Get-Content $path -Raw -Encoding UTF8

# Remove grid-pattern, glow-effect, and our-process-solutions-section rules
$patternToRemove = '(?s)\s*\.grid-pattern \{.*?(?=</style>)'
if ($content -match $patternToRemove) {
    $content = $content -replace $patternToRemove, ''
    Set-Content $path -Value $content -Encoding UTF8
    Write-Host "SUCCESS: Removed problematic style block."
} else {
    Write-Host "ERROR: Pattern not found."
}
