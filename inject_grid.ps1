$path = "D:\Antigravity AI agent\index.html"
$content = Get-Content $path -Raw -Encoding UTF8

$pattern = '(?s)<section class="bg-primary-container text-on-primary-container p-lg rounded-xl flex flex-col md:flex-row items-center justify-between gap-lg shadow-lg">.*?</article>\s*</div>'

$replacement = @"
<style>
    .tech-grid {
        background-image: 
            linear-gradient(to right, rgba(209, 213, 219, 0.2) 1px, transparent 1px),
            linear-gradient(to bottom, rgba(209, 213, 219, 0.2) 1px, transparent 1px);
        background-size: 24px 24px;
    }
    .data-wave {
        stroke-dasharray: 1000;
        stroke-dashoffset: 1000;
        animation: dash 5s linear infinite;
    }
    @keyframes dash {
        to {
            stroke-dashoffset: 0;
        }
    }
    .blinking-cursor::after {
        content: '_';
        animation: blink 1s step-end infinite;
    }
    @keyframes blink {
        0%, 100% { opacity: 1; }
        50% { opacity: 0; }
    }
</style>

<section class="flex-grow pt-[100px] md:pt-[120px] pb-xl px-margin max-w-7xl mx-auto w-full relative z-10 flex flex-col gap-lg">
<!-- Header -->
<header class="flex flex-col gap-sm">
<div class="flex items-center gap-sm">
<div class="h-2 w-2 bg-primary rounded-full animate-pulse"></div>
<span class="font-mono text-label-md text-secondary uppercase tracking-widest">Sys_Status: Operational</span>
</div>
<h1 class="font-display-lg text-display-lg text-on-background font-bold tracking-tight" style="color: #ffffff;">Process Weighing <br/><span class="text-primary blinking-cursor">Data Grid</span></h1>
<p class="font-body-lg text-body-lg text-on-surface-variant max-w-3xl" style="color: #c6c6c9;">Real-time telemetry and compliance parameters for industrial-grade mass measurement systems. High-density data aggregation for precision engineering applications.</p>
</header>
<!-- Data Grid -->
<div class="grid grid-cols-1 md:grid-cols-2 gap-gutter">
<!-- Tank & Silo Module -->
<article class="bg-[#0c0e10] rounded-xl shadow-[0px_4px_20px_rgba(0,0,0,0.04)] p-md flex flex-col gap-md border border-white/10 relative overflow-hidden group hover:shadow-[0px_12px_32px_rgba(0,0,0,0.08)] transition-all duration-300">
<div class="absolute top-0 right-0 w-32 h-32 bg-primary-container/10 rounded-bl-full -mr-16 -mt-16 group-hover:scale-110 transition-transform duration-500"></div>
<div class="flex justify-between items-start">
<div>
<h2 class="font-title-lg text-title-lg text-white font-semibold">Tank/Vessel Weighing Systems</h2>
</div>
<span class="material-symbols-outlined text-outline" data-icon="storage">storage</span>
</div>
<div class="grid grid-cols-2 gap-sm font-mono text-sm"><div class="col-span-2 flex flex-col bg-[#1a1c1e] p-sm rounded-lg mb-2"><span class="text-secondary text-xs uppercase">Description</span><span class="text-white font-bold">Accurate weight measurement for storage tanks, vessels, and reactors.</span></div><div class="flex flex-col bg-[#1a1c1e] p-sm rounded-lg"><span class="text-secondary text-xs uppercase">Feature</span><span class="text-white font-bold">High-load capacity sensors</span></div><div class="flex flex-col bg-[#1a1c1e] p-sm rounded-lg"><span class="text-secondary text-xs uppercase">Feature</span><span class="text-white font-bold">Ideal for liquid, chemical, and bulk materials</span></div><div class="col-span-2 flex flex-col bg-[#1a1c1e] p-sm rounded-lg"><span class="text-secondary text-xs uppercase">Feature</span><span class="text-white font-bold">Safe installation with minimal downtime</span></div></div>
<button class="w-full border border-primary text-primary font-label-lg text-label-lg py-sm rounded-lg uppercase tracking-widest font-bold mt-sm transition-all duration-300 hover:bg-primary hover:text-on-primary hover:shadow-md">View Specifications</button></article>
<!-- Sheet & Web Module -->
<article class="bg-[#0c0e10] rounded-xl shadow-[0px_4px_20px_rgba(0,0,0,0.04)] p-md flex flex-col gap-md border border-white/10 relative overflow-hidden group hover:shadow-[0px_12px_32px_rgba(0,0,0,0.08)] transition-all duration-300">
<div class="absolute top-0 right-0 w-32 h-32 bg-primary-container/10 rounded-bl-full -mr-16 -mt-16 group-hover:scale-110 transition-transform duration-500"></div>
<div class="flex justify-between items-start">
<div>
<h2 class="font-title-lg text-title-lg text-white font-semibold">Sheet Weighing Systems</h2>
</div>
<span class="material-symbols-outlined text-outline" data-icon="conveyor_belt">conveyor_belt</span>
</div>
<div class="grid grid-cols-2 gap-sm font-mono text-sm"><div class="col-span-2 flex flex-col bg-[#1a1c1e] p-sm rounded-lg mb-2"><span class="text-secondary text-xs uppercase">Description</span><span class="text-white font-bold">Optimized for precise measurement of sheets and flat materials.</span></div><div class="flex flex-col bg-[#1a1c1e] p-sm rounded-lg"><span class="text-secondary text-xs uppercase">Feature</span><span class="text-white font-bold">High-speed and accurate weighing</span></div><div class="flex flex-col bg-[#1a1c1e] p-sm rounded-lg"><span class="text-secondary text-xs uppercase">Feature</span><span class="text-white font-bold">Suitable for metal, plastic, and paper processing</span></div><div class="col-span-2 flex flex-col bg-[#1a1c1e] p-sm rounded-lg"><span class="text-secondary text-xs uppercase">Feature</span><span class="text-white font-bold">Seamless integration with conveyors</span></div></div>
<button class="w-full border border-primary text-primary font-label-lg text-label-lg py-sm rounded-lg uppercase tracking-widest font-bold mt-sm transition-all duration-300 hover:bg-primary hover:text-on-primary hover:shadow-md">View Specifications</button></article>
<!-- Ladle Module -->
<article class="bg-[#0c0e10] rounded-xl shadow-[0px_4px_20px_rgba(0,0,0,0.04)] p-md flex flex-col gap-md border border-white/10 relative overflow-hidden group hover:shadow-[0px_12px_32px_rgba(0,0,0,0.08)] transition-all duration-300">
<div class="absolute top-0 right-0 w-32 h-32 bg-primary-container/10 rounded-bl-full -mr-16 -mt-16 group-hover:scale-110 transition-transform duration-500"></div>
<div class="flex justify-between items-start">
<div>
<h2 class="font-title-lg text-title-lg text-white font-semibold">Ladle Weighing Systems</h2>
</div>
<span class="material-symbols-outlined text-outline" data-icon="factory">factory</span>
</div>
<div class="grid grid-cols-2 gap-sm font-mono text-sm"><div class="col-span-2 flex flex-col bg-[#1a1c1e] p-sm rounded-lg mb-2"><span class="text-secondary text-xs uppercase">Description</span><span class="text-white font-bold">Designed for high-temperature and heavy industrial applications.</span></div><div class="flex flex-col bg-[#1a1c1e] p-sm rounded-lg"><span class="text-secondary text-xs uppercase">Feature</span><span class="text-white font-bold">Heat-resistant load cells</span></div><div class="flex flex-col bg-[#1a1c1e] p-sm rounded-lg"><span class="text-secondary text-xs uppercase">Feature</span><span class="text-white font-bold">Real-time monitoring in harsh environments</span></div><div class="col-span-2 flex flex-col bg-[#1a1c1e] p-sm rounded-lg"><span class="text-secondary text-xs uppercase">Feature</span><span class="text-white font-bold">Improved safety and operational control</span></div></div>
<button class="w-full border border-primary text-primary font-label-lg text-label-lg py-sm rounded-lg uppercase tracking-widest font-bold mt-sm transition-all duration-300 hover:bg-primary hover:text-on-primary hover:shadow-md">View Specifications</button></article>
<!-- Bar Module -->
<article class="bg-[#0c0e10] rounded-xl shadow-[0px_4px_20px_rgba(0,0,0,0.04)] p-md flex flex-col gap-md border border-white/10 relative overflow-hidden group hover:shadow-[0px_12px_32px_rgba(0,0,0,0.08)] transition-all duration-300">
<div class="absolute top-0 right-0 w-32 h-32 bg-primary-container/10 rounded-bl-full -mr-16 -mt-16 group-hover:scale-110 transition-transform duration-500"></div>
<div class="flex justify-between items-start">
<div>
<h2 class="font-title-lg text-title-lg text-white font-semibold">Bar Weighing Systems</h2>
</div>
<span class="material-symbols-outlined text-outline" data-icon="linear_scale">linear_scale</span>
</div>
<div class="grid grid-cols-2 gap-sm font-mono text-sm"><div class="col-span-2 flex flex-col bg-[#1a1c1e] p-sm rounded-lg mb-2"><span class="text-secondary text-xs uppercase">Description</span><span class="text-white font-bold">Reliable weighing solutions for rod, bar, and structural materials.</span></div><div class="flex flex-col bg-[#1a1c1e] p-sm rounded-lg"><span class="text-secondary text-xs uppercase">Feature</span><span class="text-white font-bold">Accurate weight per length measurement</span></div><div class="flex flex-col bg-[#1a1c1e] p-sm rounded-lg"><span class="text-secondary text-xs uppercase">Feature</span><span class="text-white font-bold">Ideal for steel and manufacturing industries</span></div><div class="col-span-2 flex flex-col bg-[#1a1c1e] p-sm rounded-lg"><span class="text-secondary text-xs uppercase">Feature</span><span class="text-white font-bold">Durable construction for heavy-duty use</span></div></div>
<button class="w-full border border-primary text-primary font-label-lg text-label-lg py-sm rounded-lg uppercase tracking-widest font-bold mt-sm transition-all duration-300 hover:bg-primary hover:text-on-primary hover:shadow-md">View Specifications</button></article>
</div><section class="bg-primary-container text-on-primary-container p-lg rounded-xl flex flex-col md:flex-row items-center justify-between gap-lg shadow-lg mt-12">
<div class="flex flex-col gap-2">
<h2 class="font-headline-md text-headline-md font-bold text-white">Ready to optimize your process?</h2>
<p class="font-body-lg text-body-lg opacity-90 text-white">Our engineers are ready to help you design the perfect weighing solution for your facility.</p>
</div>
<button class="bg-[#5c0005] text-[#e63946] font-label-lg text-label-lg px-[80px] py-[24px] rounded-full hover:bg-surface-container-lowest transition-colors font-bold uppercase tracking-widest whitespace-nowrap">Request Technical Consultation</button>
</section>
</section>
"@

$content = [regex]::Replace($content, $pattern, $replacement)
Set-Content $path -Value $content -Encoding UTF8
Write-Host "Modifications applied successfully."
