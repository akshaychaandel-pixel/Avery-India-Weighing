$path = "D:\Antigravity AI agent\index.html"
$content = Get-Content $path -Raw -Encoding UTF8

# Marker: before the footer tag
$marker = '(?=<footer)'

$newSection = @"
<!-- Avery New Section Start -->
<section class=\"relative py-unit-16 md:py-unit-24 border-b border-surface-container-highest\">
  <div class=\"max-w-7xl mx-auto px-margin-mobile md:px-margin-desktop\">
    <div class=\"flex flex-col lg:flex-row gap-unit-12 lg:items-center mb-unit-16\">
      <div class=\"lg:w-1/2\"><span class=\"font-label-caps text-label-caps text-primary uppercase tracking-widest mb-unit-2 block\">Why Customers Trust Us</span><h2 class=\"font-display-lg-mobile md:font-display-lg text-display-lg-mobile md:text-display-lg text-on-background mb-unit-4\">What Differentiates Us</h2><p class=\"font-body-lg text-body-lg text-secondary mb-unit-6\">Avery India stands as a pillar of reliability in heavy industry. Our custom-engineered solutions are built on decades of expertise, ensuring flawless operation in the most demanding environments.</p></div>
      <div class=\"lg:w-1/2 rounded-xl overflow-hidden shadow-lg border border-surface-container-highest\"><img alt=\"Professional industrial engineering team reviewing technical blueprints in a modern factory setting\" class=\"w-full h-auto object-cover\" src=\"https://lh3.googleusercontent.com/aida-public/AB6AXuA4r83zDEr9W4vURdBnm_C09dYyv53OoNRc8dm-ohQGaR1drvHd7DJWWycbR8guC4I-LyapUMZ6J3eMFQ9rMMhBWX3-aHy7BE9xLNdAOBM5FSNKL4x4crrmiuEyN6bKYXTkOl1MzLQSObdRft6iFLIPeCWnX-j-RDD3lBPHwd-lUbBxkkyO1i23Ix1DBemKXTRpsNANKl0x9eqFD59_N33ioJrebeXcCdxbo3Ye4aIA5iQjzMejL18MHP_v2kc36LUlN-nvcSlGew\"/></div>
    </div>
    <div class=\"grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-unit-6\">
      <!-- Proven Industry Expertise Card -->
      <div class=\"bg-surface-bright border border-surface-container-highest rounded premium-card p-unit-6 flex flex-col h-full relative overflow-hidden group\"><div class=\"w-10 h-10 rounded bg-surface-container flex items-center justify-center mb-unit-4 border border-surface-container-highest group-hover:border-primary transition-colors\"><span class=\"material-symbols-outlined text-primary\" style=\"font-variation-settings: 'FILL' 1;\">precision_manufacturing</span></div><h3 class=\"font-headline-sm text-headline-sm text-on-background mb-unit-2\">Proven Industry Expertise</h3><p class=\"font-body-sm text-body-md text-secondary\">Decades of specialized knowledge in heavy industrial weighing and metrology standards.</p></div>
      <!-- Custom Design Solutions Card -->
      <div class=\"bg-surface-bright border border-surface-container-highest rounded premium-card p-unit-6 flex flex-col h-full relative overflow-hidden group\"><div class=\"w-10 h-10 rounded bg-surface-container flex items-center justify-center mb-unit-4 border border-surface-container-highest group-hover:border-primary transition-colors\"><span class=\"material-symbols-outlined text-primary\" style=\"font-variation-settings: 'FILL' 1;\">architecture</span></div><h3 class=\"font-headline-sm text-headline-sm text-on-background mb-unit-2\">Custom Design Solutions</h3><p class=\"font-body-sm text-body-md text-secondary\">Tailored engineering for unique operational requirements and challenging environments.</p></div>
      <!-- End-to-End Support Card -->
      <div class=\"bg-surface-bright border border-surface-container-highest rounded premium-card p-unit-6 flex flex-col h-full relative overflow-hidden group\"><div class=\"w-10 h-10 rounded bg-surface-container flex items-center justify-center mb-unit-4 border border-surface-container-highest group-hover:border-primary transition-colors\"><span class=\"material-symbols-outlined text-primary\" style=\"font-variation-settings: 'FILL' 1;\">handshake</span></div><h3 class=\"font-headline-sm text-headline-sm text-on-background mb-unit-2\">End-to-End Support</h3><p class=\"font-body-sm text-body-md text-secondary\">Comprehensive lifecycle management from initial consultation to nationwide field maintenance.</p></div>
      <!-- Advanced Technology Card -->
      <div class=\"bg-surface-bright border border-surface-container-highest rounded premium-card p-unit-6 flex flex-col h-full relative overflow-hidden group\"><div class=\"w-10 h-10 rounded bg-surface-container flex items-center justify-center mb-unit-4 border border-surface-container-highest group-hover:border-primary transition-colors\"><span class=\"material-symbols-outlined text-primary\" style=\"font-variation-settings: 'FILL' 1;\">settings_input_component</span></div><h3 class=\"font-headline-sm text-headline-sm text-on-background mb-unit-2\">Advanced Technology</h3><p class=\"font-body-sm text-body-md text-secondary\">Industry 4.0 ready systems featuring high-precision sensors and seamless digital integration.</p></div>
    </div>
  </div>
</section>

<!-- Partner Ecosystem Section -->
<section class=\"py-unit-16 md:py-unit-24 bg-surface-bright border-b border-surface-container-highest\">
  <div class=\"max-w-7xl mx-auto px-margin-mobile md:px-margin-desktop text-center\">
    <span class=\"font-label-caps text-label-caps text-primary uppercase tracking-widest mb-unit-4 block\">Trusted By Industry Leaders</span>
    <h2 class=\"font-headline-md text-headline-md text-on-background mb-unit-12 max-w-2xl mx-auto\">Powering operations for the world's most demanding enterprises.</h2>
    <div class=\"overflow-hidden mb-unit-12 py-unit-4\"><div class=\"mobile-scroll-container flex md:grid md:grid-cols-3 lg:grid-cols-6 gap-x-unit-4 gap-y-unit-8 items-center\">
      <!-- Logos (shortened for brevity) -->
      <div class=\"flex-shrink-0 w-[160px] md:w-full flex justify-center p-4 bg-surface-container-lowest border border-surface-container-highest rounded-lg logo-filter cursor-pointer hover:border-surface-variant transition-colors\"><img alt=\"Tata Logo\" class=\"max-h-12 object-contain\" src=\"https://example.com/tata.png\"/></div>
      <div class=\"flex-shrink-0 w-[160px] md:w-full flex justify-center p-4 bg-surface-container-lowest border border-surface-container-highest rounded-lg logo-filter cursor-pointer hover:border-surface-variant transition-colors\"><img alt=\"L&T Logo\" class=\"max-h-10 object-contain\" src=\"https://example.com/lt.png\"/></div>
      <div class=\"flex-shrink-0 w-[160px] md:w-full flex justify-center p-4 bg-surface-container-lowest border border-surface-container-highest rounded-lg logo-filter cursor-pointer hover:border-surface-variant transition-colors\"><img alt=\"Reliance Logo\" class=\"max-h-14 object-contain\" src=\"https://example.com/reliance.png\"/></div>
      <div class=\"flex-shrink-0 w-[160px] md:w-full flex justify-center p-4 bg-surface-container-lowest border border-surface-container-highest rounded-lg logo-filter cursor-pointer hover:border-surface-variant transition-colors\"><img alt=\"Siemens Logo\" class=\"max-h-8 object-contain\" src=\"https://example.com/siemens.png\"/></div>
      <div class=\"flex-shrink-0 w-[160px] md:w-full flex justify-center p-4 bg-surface-container-lowest border border-surface-container-highest rounded-lg logo-filter cursor-pointer hover:border-surface-variant transition-colors\"><img alt=\"JSW Logo\" class=\"max-h-12 object-contain\" src=\"https://example.com/jsw.png\"/></div>
      <div class=\"flex-shrink-0 w-[160px] md:w-full flex justify-center p-4 bg-surface-container-lowest border border-surface-container-highest rounded-lg logo-filter cursor-pointer hover:border-surface-variant transition-colors\"><img alt=\"Adani Logo\" class=\"max-h-12 object-contain\" src=\"https://example.com/adani.png\"/></div>
    </div></div>
    <!-- Industry Chips Mobile Scroller -->
    <div class=\"pt-unit-8 border-t border-surface-container-highest\"><div class=\"flex flex-wrap gap-unit-4 justify-center\">
      <span class=\"bg-surface-container-highest text-on-background px-unit-6 py-unit-2 rounded-full font-label-caps text-label-caps uppercase hover:bg-primary-container hover:text-on-primary transition-colors cursor-pointer border border-transparent flex items-center gap-2\"><span class=\"material-symbols-outlined text-[16px]\">factory</span> Steel Manufacturing</span>
      <span class=\"bg-surface-container-highest text-on-background px-unit-6 py-unit-2 rounded-full font-label-caps text-label-caps uppercase hover:bg-primary-container hover:text-on-primary transition-colors cursor-pointer border border-transparent flex items-center gap-2\"><span class=\"material-symbols-outlined text-[16px]\">bolt</span> Power Generation</span>
      <span class=\"bg-surface-container-highest text-on-background px-unit-6 py-unit-2 rounded-full font-label-caps text-label-caps uppercase hover:bg-primary-container hover:text-on-primary transition-colors cursor-pointer border border-transparent flex items-center gap-2\"><span class=\"material-symbols-outlined text-[16px]\">terrain</span> Mining</span>
      <span class=\"bg-surface-container-highest text-on-background px-unit-6 py-unit-2 rounded-full font-label-caps text-label-caps uppercase hover:bg-primary-container hover:text-on-primary transition-colors cursor-pointer border border-transparent flex items-center gap-2\"><span class=\"material-symbols-outlined text-[16px]\">architecture</span> Cement &amp; Infrastructure</span>
    </div></div>
  </div>
</section>

<!-- CTA Section -->
<section class=\"py-unit-16 md:py-unit-24 bg-background\">
  <div class=\"max-w-7xl mx-auto px-margin-mobile md:px-margin-desktop flex justify-center\">
    <div class=\"bg-surface-container-low border border-surface-container-highest rounded-full px-unit-8 py-unit-6 flex flex-col md:flex-row items-center gap-unit-6 shadow-lg max-w-4xl w-full justify-between\">
      <div class=\"text-center md:text-left\"><p class=\"font-headline-sm text-headline-sm text-on-background\">Need a customized engineering solution?</p><p class=\"font-body-md text-body-md text-secondary\">Our team is ready to assist.</p></div>
      <button class=\"bg-primary text-on-primary px-unit-8 py-unit-4 rounded-full font-semibold hover:bg-primary-container transition-colors flex items-center gap-2 whitespace-nowrap\"><span>Request Consultation</span><span class=\"material-symbols-outlined\">arrow_forward</span></button>
    </div>
  </div>
</section>
<!-- Avery New Section End -->
"@

# Insert the new sections before the footer
$content = [regex]::Replace($content, $marker, "$newSection\n", "IgnoreCase")

Set-Content $path -Value $content -Encoding UTF8
Write-Host "Avery sections inserted successfully."
