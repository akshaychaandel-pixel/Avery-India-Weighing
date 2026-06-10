$path = "D:\Antigravity AI agent\index.html"
$content = Get-Content $path -Raw -Encoding UTF8

$oldWrapper = '<section class="flex-grow pt-\[100px\] md:pt-\[120px\] pb-\[80px\] px-\[32px\] max-w-7xl mx-auto w-full relative z-10 flex flex-col gap-\[48px\] tech-grid-light rounded-xl mt-12 mb-12 shadow-sm border border-\[#e6bdb8\]/30">'
$newWrapper = '<section class="w-full relative z-10 tech-grid-light border-y border-[#e6bdb8]/30 overflow-hidden bg-[#fff8f7]">
<div class="flex-grow pt-[100px] md:pt-[120px] pb-[80px] px-[32px] max-w-7xl mx-auto w-full flex flex-col gap-[48px]">'

$content = [regex]::Replace($content, $oldWrapper, $newWrapper)

$oldEnd = '</section>\s*<div class="relative z-10 aq-py-24 px-8 md:px-16 max-w-\[1440px\] mx-auto">'
$newEnd = '</div>
</section>

<div class="relative z-10 aq-py-24 px-8 md:px-16 max-w-[1440px] mx-auto">'

$content = [regex]::Replace($content, $oldEnd, $newEnd)

Set-Content $path -Value $content -Encoding UTF8
Write-Host "Modifications applied successfully."
