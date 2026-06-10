$path = "D:\Antigravity AI agent\index.html"
$content = Get-Content $path -Raw -Encoding UTF8

$insertionPoint = '<div class="relative z-10 aq-py-24 px-8 md:px-16 max-w-\[1440px\] mx-auto">\s*<div class="aq-mb-12">\s*<h1 class="aq-display-lg-mobile'

$replacement = @"
<style>
    .tech-grid-light {
        background-color: #fff8f7;
        background-image: 
            linear-gradient(to right, rgba(209, 213, 219, 0.4) 1px, transparent 1px),
            linear-gradient(to bottom, rgba(209, 213, 219, 0.4) 1px, transparent 1px);
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

<section class="flex-grow pt-[100px] md:pt-[120px] pb-[80px] px-[32px] max-w-7xl mx-auto w-full relative z-10 flex flex-col gap-[48px] tech-grid-light rounded-xl mt-12 mb-12 shadow-sm border border-[#e6bdb8]/30">
<!-- Header -->
<header class="flex flex-col gap-[12px]">
<div class="flex items-center gap-[12px]">
<div class="h-2 w-2 bg-[#ae0011] rounded-full animate-pulse"></div>
<span class="font-mono text-[14px] leading-[16px] text-[#5b5f62] uppercase tracking-widest font-semibold">Sys_Status: Operational</span>
</div>
<h1 class="font-display-lg text-[48px] leading-[56px] text-[#291715] font-bold tracking-tight">Process Weighing <br/><span class="text-[#ae0011] blinking-cursor">Data Grid</span></h1>
<p class="font-body-lg text-[18px] leading-[28px] text-[#5d3f3c] max-w-3xl">Real-time telemetry and compliance parameters for industrial-grade mass measurement systems. High-density data aggregation for precision engineering applications.</p>
</header>
<!-- Data Grid -->
<div class="grid grid-cols-1 md:grid-cols-2 gap-[24px]">
<!-- Tank & Silo Module -->
<article class="bg-[#ffffff] rounded-xl shadow-[0px_4px_20px_rgba(0,0,0,0.04)] p-[24px] flex flex-col gap-[24px] border border-[#e6bdb8]/50 relative overflow-hidden group hover:shadow-[0px_12px_32px_rgba(0,0,0,0.08)] transition-all duration-300">
<div class="absolute top-0 right-0 w-32 h-32 bg-[#d71920]/10 rounded-bl-full -mr-16 -mt-16 group-hover:scale-110 transition-transform duration-500"></div>
<div class="flex justify-between items-start">
<div>
<h2 class="font-title-lg text-[20px] leading-[28px] text-[#291715] font-semibold">Tank/Vessel Weighing Systems</h2>
</div>
<span class="material-symbols-outlined text-[#926f6b]" data-icon="storage">storage</span>
</div>
<div class="grid grid-cols-2 gap-[12px] font-mono text-sm"><div class="col-span-2 flex flex-col bg-[#fff0ee] p-[12px] rounded-lg mb-2"><span class="text-[#5b5f62] text-xs uppercase">Description</span><span class="text-[#291715] font-bold">Accurate weight measurement for storage tanks, vessels, and reactors.</span></div><div class="flex flex-col bg-[#fff0ee] p-[12px] rounded-lg"><span class="text-[#5b5f62] text-xs uppercase">Feature</span><span class="text-[#291715] font-bold">High-load capacity sensors</span></div><div class="flex flex-col bg-[#fff0ee] p-[12px] rounded-lg"><span class="text-[#5b5f62] text-xs uppercase">Feature</span><span class="text-[#291715] font-bold">Ideal for liquid, chemical, and bulk materials</span></div><div class="col-span-2 flex flex-col bg-[#fff0ee] p-[12px] rounded-lg"><span class="text-[#5b5f62] text-xs uppercase">Feature</span><span class="text-[#291715] font-bold">Safe installation with minimal downtime</span></div></div>
<button class="w-full border border-[#ae0011] text-[#ae0011] font-label-lg text-[14px] leading-[20px] py-[12px] rounded-lg uppercase tracking-widest font-bold mt-[12px] transition-all duration-300 hover:bg-[#ae0011] hover:text-[#ffffff] hover:shadow-md">View Specifications</button></article>
<!-- Sheet & Web Module -->
<article class="bg-[#ffffff] rounded-xl shadow-[0px_4px_20px_rgba(0,0,0,0.04)] p-[24px] flex flex-col gap-[24px] border border-[#e6bdb8]/50 relative overflow-hidden group hover:shadow-[0px_12px_32px_rgba(0,0,0,0.08)] transition-all duration-300">
<div class="absolute top-0 right-0 w-32 h-32 bg-[#d71920]/10 rounded-bl-full -mr-16 -mt-16 group-hover:scale-110 transition-transform duration-500"></div>
<div class="flex justify-between items-start">
<div>
<h2 class="font-title-lg text-[20px] leading-[28px] text-[#291715] font-semibold">Sheet Weighing Systems</h2>
</div>
<span class="material-symbols-outlined text-[#926f6b]" data-icon="conveyor_belt">conveyor_belt</span>
</div>
<div class="grid grid-cols-2 gap-[12px] font-mono text-sm"><div class="col-span-2 flex flex-col bg-[#fff0ee] p-[12px] rounded-lg mb-2"><span class="text-[#5b5f62] text-xs uppercase">Description</span><span class="text-[#291715] font-bold">Optimized for precise measurement of sheets and flat materials.</span></div><div class="flex flex-col bg-[#fff0ee] p-[12px] rounded-lg"><span class="text-[#5b5f62] text-xs uppercase">Feature</span><span class="text-[#291715] font-bold">High-speed and accurate weighing</span></div><div class="flex flex-col bg-[#fff0ee] p-[12px] rounded-lg"><span class="text-[#5b5f62] text-xs uppercase">Feature</span><span class="text-[#291715] font-bold">Suitable for metal, plastic, and paper processing</span></div><div class="col-span-2 flex flex-col bg-[#fff0ee] p-[12px] rounded-lg"><span class="text-[#5b5f62] text-xs uppercase">Feature</span><span class="text-[#291715] font-bold">Seamless integration with conveyors</span></div></div>
<button class="w-full border border-[#ae0011] text-[#ae0011] font-label-lg text-[14px] leading-[20px] py-[12px] rounded-lg uppercase tracking-widest font-bold mt-[12px] transition-all duration-300 hover:bg-[#ae0011] hover:text-[#ffffff] hover:shadow-md">View Specifications</button></article>
<!-- Ladle Module -->
<article class="bg-[#ffffff] rounded-xl shadow-[0px_4px_20px_rgba(0,0,0,0.04)] p-[24px] flex flex-col gap-[24px] border border-[#e6bdb8]/50 relative overflow-hidden group hover:shadow-[0px_12px_32px_rgba(0,0,0,0.08)] transition-all duration-300">
<div class="absolute top-0 right-0 w-32 h-32 bg-[#d71920]/10 rounded-bl-full -mr-16 -mt-16 group-hover:scale-110 transition-transform duration-500"></div>
<div class="flex justify-between items-start">
<div>
<h2 class="font-title-lg text-[20px] leading-[28px] text-[#291715] font-semibold">Ladle Weighing Systems</h2>
</div>
<span class="material-symbols-outlined text-[#926f6b]" data-icon="factory">factory</span>
</div>
<div class="grid grid-cols-2 gap-[12px] font-mono text-sm"><div class="col-span-2 flex flex-col bg-[#fff0ee] p-[12px] rounded-lg mb-2"><span class="text-[#5b5f62] text-xs uppercase">Description</span><span class="text-[#291715] font-bold">Designed for high-temperature and heavy industrial applications.</span></div><div class="flex flex-col bg-[#fff0ee] p-[12px] rounded-lg"><span class="text-[#5b5f62] text-xs uppercase">Feature</span><span class="text-[#291715] font-bold">Heat-resistant load cells</span></div><div class="flex flex-col bg-[#fff0ee] p-[12px] rounded-lg"><span class="text-[#5b5f62] text-xs uppercase">Feature</span><span class="text-[#291715] font-bold">Real-time monitoring in harsh environments</span></div><div class="col-span-2 flex flex-col bg-[#fff0ee] p-[12px] rounded-lg"><span class="text-[#5b5f62] text-xs uppercase">Feature</span><span class="text-[#291715] font-bold">Improved safety and operational control</span></div></div>
<button class="w-full border border-[#ae0011] text-[#ae0011] font-label-lg text-[14px] leading-[20px] py-[12px] rounded-lg uppercase tracking-widest font-bold mt-[12px] transition-all duration-300 hover:bg-[#ae0011] hover:text-[#ffffff] hover:shadow-md">View Specifications</button></article>
<!-- Bar Module -->
<article class="bg-[#ffffff] rounded-xl shadow-[0px_4px_20px_rgba(0,0,0,0.04)] p-[24px] flex flex-col gap-[24px] border border-[#e6bdb8]/50 relative overflow-hidden group hover:shadow-[0px_12px_32px_rgba(0,0,0,0.08)] transition-all duration-300">
<div class="absolute top-0 right-0 w-32 h-32 bg-[#d71920]/10 rounded-bl-full -mr-16 -mt-16 group-hover:scale-110 transition-transform duration-500"></div>
<div class="flex justify-between items-start">
<div>
<h2 class="font-title-lg text-[20px] leading-[28px] text-[#291715] font-semibold">Bar Weighing Systems</h2>
</div>
<span class="material-symbols-outlined text-[#926f6b]" data-icon="linear_scale">linear_scale</span>
</div>
<div class="grid grid-cols-2 gap-[12px] font-mono text-sm"><div class="col-span-2 flex flex-col bg-[#fff0ee] p-[12px] rounded-lg mb-2"><span class="text-[#5b5f62] text-xs uppercase">Description</span><span class="text-[#291715] font-bold">Reliable weighing solutions for rod, bar, and structural materials.</span></div><div class="flex flex-col bg-[#fff0ee] p-[12px] rounded-lg"><span class="text-[#5b5f62] text-xs uppercase">Feature</span><span class="text-[#291715] font-bold">Accurate weight per length measurement</span></div><div class="flex flex-col bg-[#fff0ee] p-[12px] rounded-lg"><span class="text-[#5b5f62] text-xs uppercase">Feature</span><span class="text-[#291715] font-bold">Ideal for steel and manufacturing industries</span></div><div class="col-span-2 flex flex-col bg-[#fff0ee] p-[12px] rounded-lg"><span class="text-[#5b5f62] text-xs uppercase">Feature</span><span class="text-[#291715] font-bold">Durable construction for heavy-duty use</span></div></div>
<button class="w-full border border-[#ae0011] text-[#ae0011] font-label-lg text-[14px] leading-[20px] py-[12px] rounded-lg uppercase tracking-widest font-bold mt-[12px] transition-all duration-300 hover:bg-[#ae0011] hover:text-[#ffffff] hover:shadow-md">View Specifications</button></article>
</div><section class="bg-[#d71920] text-[#ffece9] p-[48px] rounded-xl flex flex-col md:flex-row items-center justify-between gap-[48px] shadow-lg mt-8">
<div class="flex flex-col gap-2">
<h2 class="font-headline-md text-[24px] leading-[32px] font-bold">Ready to optimize your process?</h2>
<p class="font-body-lg text-[18px] leading-[28px] opacity-90">Our engineers are ready to help you design the perfect weighing solution for your facility.</p>
</div>
<button class="bg-[#ffece9] text-[#d71920] font-label-lg text-[14px] leading-[20px] px-[80px] py-[24px] rounded-full hover:bg-[#ffffff] transition-colors font-bold uppercase tracking-widest whitespace-nowrap">Request Technical Consultation</button>
</section>
</section>

<div class="relative z-10 aq-py-24 px-8 md:px-16 max-w-[1440px] mx-auto">
    <div class="aq-mb-12">
        <h1 class="aq-display-lg-mobile
"@

$content = [regex]::Replace($content, $insertionPoint, $replacement)
Set-Content $path -Value $content -Encoding UTF8
Write-Host "Modifications applied successfully."
