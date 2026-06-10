$path = "D:\Antigravity AI agent\index.html"
$content = Get-Content $path -Raw -Encoding UTF8

# Insert before the footer
$marker = '(?=<footer)'

$newSection = @"
<!-- Industries We Serve Section Start -->
<div class="max-w-3xl mb-16">
  <h1 class="font-display-lg text-display-lg text-on-background mb-4 tracking-tight">Industries We Serve</h1>
  <p class="font-body-lg text-body-lg text-on-surface-variant leading-relaxed">We proudly serve a wide range of industries, including:</p>
  <div class="h-1 w-16 bg-primary mt-8"></div>
</div>

<div class="space-y-12">
  <div class="grid grid-cols-1 md:grid-cols-12 gap-gutter auto-rows-[300px]" id="industry-grid">
    <a class="group relative col-span-1 md:col-span-8 row-span-2 rounded-xl overflow-hidden shadow-[0_4px_20px_rgba(0,0,0,0.04)] hover:shadow-[0_12px_32px_rgba(0,0,0,0.08)] transition-all duration-300 bg-surface-container-lowest block" href="#">
      <div class="absolute inset-0 bg-secondary-fixed-dim opacity-20 group-hover:opacity-10 transition-opacity z-10"></div>
      <img alt="Steel and metal processing facility" class="absolute inset-0 w-full h-full object-cover z-0 transform group-hover:scale-105 transition-transform duration-700 ease-in-out" src="https://lh3.googleusercontent.com/aida/AP1WRLtVFSDpLqcrCpW5QrCuZQfDAeUu8vzemh0TTQVEZFP6tnP7NQzO7lxF8kozrjWILUDH8b1BmCdX8IcFKa_wEjz1xLWsk4DTD_-EzINNTjzdWjiob5IiOygjDJRlAoB43hEv1LVp1EzOjZ5oiSP2YsAEA3_ROt45eF11IHEPAoo-w3sDwFfQpPyiX0B6HrJsh9Kk_b2tbS02YWco0-TbGsfOGbD1GLiNGXCHxEc8JfkVQYQEeVOB6LfziA" />
      <div class="absolute inset-0 bg-gradient-to-t from-black/80 via-black/20 to-transparent z-10"></div>
      <div class="absolute bottom-0 left-0 p-8 z-20 w-full">
        <h2 class="font-headline-lg text-headline-lg text-on-primary mb-2">Steel &amp; Metal Processing</h2>
        <div class="flex items-center text-primary-fixed-dim font-label-lg group-hover:text-primary-fixed transition-colors"><span class="uppercase tracking-wider">View Solutions</span><span class="material-symbols-outlined ml-2 transform group-hover:translate-x-1 transition-transform">arrow_forward</span></div>
      </div>
    </a>
    <a class="group relative col-span-1 md:col-span-4 row-span-1 rounded-xl overflow-hidden shadow-[0_4px_20px_rgba(0,0,0,0.04)] hover:shadow-[0_12px_32px_rgba(0,0,0,0.08)] transition-all duration-300 bg-surface-container-lowest block" href="#">
      <div class="absolute inset-0 bg-secondary-fixed-dim opacity-20 group-hover:opacity-10 transition-opacity z-10"></div>
      <img alt="Pharmaceutical cleanroom" class="absolute inset-0 w-full h-full object-cover z-0 transform group-hover:scale-105 transition-transform duration-700 ease-in-out" src="https://lh3.googleusercontent.com/aida/AP1WRLsiEjilQ_AFatkY9DT9M2zd6si2E8gTNnNX3cyrxhjaQQTzrdVkwv9lnfgubDGC9Itg-aA_EJT8LUHhvKQImcouAO-6--0jNxa2DJNW5t-dP4Na5-gjBV1eOM-KwDHQ8nr7SkpymHT2lY49HJlnXwcjozZZM4JSB7UrsMwNnkeAybxIs5Uk_MMKs_TBOBBnZcLNBhjOj-zg7Xcv8IH0R5PhHtVmq9dAfaHHjbpot2V6Vr7_FVVSmJVaPQ" />
      <div class="absolute inset-0 bg-gradient-to-t from-black/70 to-transparent z-10"></div>
      <div class="absolute bottom-0 left-0 p-6 z-20 w-full">
        <h3 class="font-headline-md text-headline-md text-on-primary mb-2">Chemical &amp; Pharmaceutical</h3>
        <div class="flex items-center text-primary-fixed-dim font-label-md group-hover:text-primary-fixed transition-colors"><span class="uppercase tracking-wider">View Solutions</span><span class="material-symbols-outlined ml-1 text-sm transform group-hover:translate-x-1 transition-transform">arrow_forward</span></div>
      </div>
    </a>
    <a class="group relative col-span-1 md:col-span-4 row-span-1 rounded-xl overflow-hidden shadow-[0_4px_20px_rgba(0,0,0,0.04)] hover:shadow-[0_12px_32px_rgba(0,0,0,0.08)] transition-all duration-300 bg-surface-container-lowest hidden md:block" href="#">
      <div class="absolute inset-0 bg-secondary-fixed-dim opacity-20 group-hover:opacity-10 transition-opacity z-10"></div>
      <img alt="Cement plant silos" class="absolute inset-0 w-full h-full object-cover z-0 transform group-hover:scale-105 transition-transform duration-700 ease-in-out" src="https://lh3.googleusercontent.com/aida/AP1WRLs7Lo2dMGFejhzQl3ZmtA90fvT9HNp24p--NonE28lmj2GqEf6_NXWtG9G4NExtL6ty0tdQ4Wj9mYcZ02xsuDOGjR9-hz4-NyMI0yaLJixV3QRilPVct7QY7fHWiQQYf_uiVck2jAFgINZhLvKBGR6dm_gr43YOUvkkOuziZyaDiiXZJhxmPpDiiTLsblFk_n8ZofRekL8xz2loNY8u4QQtIYaSGHqffEeEOHv3r2WdTJSkCvCuDbEkKA" />
      <div class="absolute inset-0 bg-gradient-to-t from-black/70 to-transparent z-10"></div>
      <div class="absolute bottom-0 left-0 p-6 z-20 w-full">
        <h3 class="font-headline-md text-headline-md text-on-primary mb-2">Cement &amp; Construction</h3>
        <div class="flex items-center text-primary-fixed-dim font-label-md group-hover:text-primary-fixed transition-colors"><span class="uppercase tracking-wider">View Solutions</span><span class="material-symbols-outlined ml-1 text-sm transform group-hover:translate-x-1 transition-transform">arrow_forward</span></div>
      </div>
    </a>
    <a class="group relative col-span-1 md:col-span-6 row-span-1 rounded-xl overflow-hidden shadow-[0_4px_20px_rgba(0,0,0,0.04)] hover:shadow-[0_12_32px_rgba(0,0,0,0.08)] transition-all duration-300 bg-surface-container-lowest hidden md:block" href="#">
      <div class="absolute inset-0 bg-secondary-fixed-dim opacity-20 group-hover:opacity-10 transition-opacity z-10"></div>
      <img alt="Food production line" class="absolute inset-0 w-full h-full object-cover z-0 transform group-hover:scale-105 transition-transform duration-700 ease-in-out" src="https://lh3.googleusercontent.com/aida/AP1WRLuids03h2i0uWHdxPVnY6ycoDEk35quRr2Uxd-78Q5liAbJQ_JoRcb5jwcmMQzgoNv0OdpkxJRf0e0uR_YhpkxlRMffQf0pnCL-6qvYvhC6KqWEedutJLaoGDKgY71H5k9ahil42fSnfbJ2VeKkTKawAZpgfUF6tEJ6JBkEbWSpgYuaCkGVyMhrHOpz2JbRZExJlC91M6CBBZnCS4Co7UTOcHaofMcJEG8hDGblbveJxN-fJK7dzQB18Q" />
      <div class="absolute inset-0 bg-gradient-to-t from-black/70 to-transparent z-10"></div>
      <div class="absolute bottom-0 left-0 p-6 z-20 w-full">
        <h3 class="font-headline-md text-headline-md text-on-primary mb-2">Food &amp; Beverage</h3>
        <div class="flex items-center text-primary-fixed-dim font-label-md group-hover:text-primary-fixed transition-colors"><span class="uppercase tracking-wider">View Solutions</span><span class="material-symbols-outlined ml-1 text-sm transform group-hover:translate-x-1 transition-transform">arrow_forward</span></div>
      </div>
    </a>
    <a class="group relative col-span-1 md:col-span-6 row-span-1 rounded-xl overflow-hidden shadow-[0_4px_20px_rgba(0,0,0,0.04)] hover:shadow-[0_12px_32px_rgba(0,0,0,0.08)] transition-all duration-300 bg-surface-container-lowest hidden md:block" href="#">
      <div class="absolute inset-0 bg-secondary-fixed-dim opacity-20 group-hover:opacity-10 transition-opacity z-10"></div>
      <img alt="Manufacturing automation" class="absolute inset-0 w-full h-full object-cover z-0 transform group-hover:scale-105 transition-transform duration-700 ease-in-out" src="https://lh3.googleusercontent.com/aida/AP1WRLskCFrKP2CeQItrrBDy2AWobiZLpUdIwBuI7CUppZojgLKdClmE4uh2r-cDTmte5vBbdcMIDyxZyKeGsVqZS5VFfA7qKcAvQsmw9dbNZhA1hCiahj06if_N4sPhNvHAsNyQWu6_6LIgOBdPaM4uibOunECfy6dasy-rGQeWqQKnqOyA1AwfzslAjwA-Erh-ZfHs72WiQpuUldEiMzk4ZC78yPJwS4wu1r30SCGKS9vRr5YkNH37x3yh6A" />
      <div class="absolute inset-0 bg-gradient-to-t from-black/70 to-transparent z-10"></div>
      <div class="absolute bottom-0 left-0 p-6 z-20 w-full">
        <h3 class="font-headline-md text-headline-md text-on-primary mb-2">Manufacturing &amp; Automation</h3>
        <div class="flex items-center text-primary-fixed-dim font-label-md group-hover:text-primary-fixed transition-colors"><span class="uppercase tracking-wider">View Solutions</span><span class="material-symbols-outlined ml-1 text-sm transform group-hover:translate-x-1 transition-transform">arrow_forward</span></div>
      </div>
    </a>
  </div>
  <div class="md:hidden flex justify-center">
    <button class="border border-primary text-primary font-label-lg px-8 py-3 rounded uppercase tracking-wide hover:bg-primary hover:text-on-primary transition-all" onclick="document.querySelectorAll('#industry-grid > a.hidden').forEach(el => el.classList.remove('hidden')); this.parentElement.classList.add('hidden')">See More Industries</button>
  </div>
  <div class="bg-inverse-surface text-on-primary px-8 py-4 rounded-lg flex flex-col md:flex-row items-center justify-between gap-4 shadow-lg border border-on-tertiary-fixed-variant">
    <div class="flex items-center gap-4"><span class="material-symbols-outlined text-primary-fixed-dim">settings_suggest</span><p class="font-label-lg uppercase tracking-widest opacity-90">Ready to Optimize Your Operations?</p></div>
    <button class="bg-primary hover:bg-on-primary-fixed-variant text-on-primary font-label-md px-6 py-2 rounded transition-all uppercase tracking-wide shadow-md">Request Technical Consultation</button>
  </div>
</div>
<!-- Industries We Serve Section End -->
"@

$content = [regex]::Replace($content, $marker, "$newSection`n", "IgnoreCase")
Set-Content $path -Value $content -Encoding UTF8
Write-Host "Industries We Serve section inserted correctly."
