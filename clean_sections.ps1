$path = "D:\Antigravity AI agent\index.html"
$content = Get-Content $path -Raw -Encoding UTF8

# 1. Update Hero CTA
$oldCta = '<div class="flex flex-col sm:flex-row gap-4 pt-4"><button class="w-full md:w-auto bg-primary-container text-on-primary-container font-label-md text-label-md uppercase px-8 py-4 rounded-full hover:bg-primary-container/90 transition-colors duration-200 active:scale-95 flex items-center justify-center gap-2 shadow-lg hover:shadow-[0_0_20px_rgba(255,84,75,0.4)] transition-all duration-300 order-1">Get a Quote <span class="material-symbols-outlined text-[20px]">arrow_forward</span></button><button class="w-full md:w-auto bg-transparent border border-white/20 text-on-background font-label-md text-label-md uppercase px-8 py-4 rounded-full hover:bg-white/5 transition-colors duration-200 active:scale-95 flex items-center justify-center hover:shadow-[0_0_15px_rgba(255,255,255,0.1)] transition-all duration-300 order-2">Enquire Now</button></div>'
$newCta = '<div class="flex flex-col sm:flex-row gap-4 pt-4"><button class="w-full md:w-auto bg-primary-container text-on-primary-container font-label-md text-label-md uppercase px-8 py-4 rounded-full hover:bg-primary-container/90 transition-colors duration-200 active:scale-95 flex items-center justify-center gap-2 shadow-lg hover:shadow-[0_0_20px_rgba(255,84,75,0.4)] transition-all duration-300 order-1">Enquire Now <span class="material-symbols-outlined text-[20px]">arrow_forward</span></button></div>'
$content = $content.Replace($oldCta, $newCta)

# 2. Remove OUR PROCESS WEIGHING SOLUTIONS
$pattern1 = '(?s)<!-- Sticky Showcase Section -->.*?<section id="our-process-solutions-section".*?<!-- Product Card 4 -->.*?</div>\s*</section>\s*</div>\s*</div>\s*</section>'
$content = [regex]::Replace($content, $pattern1, '')

# 3. Remove Engineered Ecosystem
$pattern2 = '(?s)<!-- Ecosystem Section -->\s*<!-- Product Ecosystem Section -->\s*<section class="py-24 overflow-hidden bg-surface-container-lowest">.*?</section>'
$content = [regex]::Replace($content, $pattern2, '')

Set-Content $path -Value $content -Encoding UTF8
Write-Host "Modifications applied successfully."
