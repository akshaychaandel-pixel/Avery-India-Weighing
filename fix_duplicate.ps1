$path = 'D:\Antigravity AI agent\index.html'
$lines = Get-Content $path -Encoding UTF8

# The duplicate block runs from line 424 to 675 (0-indexed: 423 to 674)
# Line 424 = </head>  (first duplicate close head)
# Line 675 = </section> (end of duplicate hero)
# We remove lines 424..675 inclusive (1-indexed)
$start = 424 - 1  # 0-indexed = 423
$end   = 675 - 1  # 0-indexed = 674

$cleaned = @()
for ($i = 0; $i -lt $lines.Count; $i++) {
    if ($i -lt $start -or $i -gt $end) {
        $cleaned += $lines[$i]
    }
}

Set-Content $path -Value $cleaned -Encoding UTF8
Write-Host "Done. Removed $($end - $start + 1) duplicate lines. New total: $($cleaned.Count)"
