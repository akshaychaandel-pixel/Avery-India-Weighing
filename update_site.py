import re

with open("D:/Antigravity AI agent/index.html", "r", encoding="utf-8") as f:
    html = f.read()

new_section = """
<!-- Tank Weighing Deep-Dive Section -->
<section id="tank-weighing-section" class="max-w-[1280px] mx-auto px-8 py-20 w-full relative">
<style>
    #tank-weighing-section {
        background-image: radial-gradient(#c3c7ca 1px, transparent 1px) !important;
        background-size: 24px 24px !important;
        background-color: #fff8f7 !important;
        color: #291715 !important;
    }
    #tank-weighing-section .bg-surface-container-high { background-color: #ffe2de !important; }
    #tank-weighing-section .text-primary { color: #ae0011 !important; }
    #tank-weighing-section .bg-primary { background-color: #ae0011 !important; }
    #tank-weighing-section .text-on-primary { color: #ffffff !important; }
    #tank-weighing-section .bg-secondary-container { background-color: #dde0e3 !important; }
    #tank-weighing-section .text-on-secondary-fixed-variant { color: #43474a !important; }
    #tank-weighing-section .bg-surface-container-lowest { background-color: #ffffff !important; }
    #tank-weighing-section .bg-surface-variant { background-color: #fcdbd7 !important; }
    #tank-weighing-section .text-secondary { color: #5b5f62 !important; }
    #tank-weighing-section .bg-surface-container-low { background-color: #fff0ee !important; }
    #tank-weighing-section .text-on-surface-variant { color: #5d3f3c !important; }
    #tank-weighing-section .text-on-background { color: #291715 !important; }
    #tank-weighing-section .bg-primary-container { background-color: #d71920 !important; }
    #tank-weighing-section .bg-tertiary-container { background-color: #0071b6 !important; }
    #tank-weighing-section .border-outline-variant { border-color: #e6bdb8 !important; }
    
    #tank-weighing-section .shadow-ambient-1 { box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.04) !important; }
    #tank-weighing-section .shadow-ambient-2 { box-shadow: 0px 12px 32px rgba(0, 0, 0, 0.08) !important; }
</style>

<!-- Hero Section -->
<div class="flex flex-col lg:flex-row items-center gap-12 mb-20">
<div class="flex-1 space-y-6">
<div class="inline-flex items-center gap-2 bg-surface-container-high px-3 py-1 rounded-lg">
<span class="w-2 h-2 rounded-full bg-primary"></span>
<span class="text-primary text-[12px] font-medium uppercase tracking-widest">Enterprise Solution</span>
</div>
<h1 class="text-[32px] md:text-[48px] font-bold text-on-background leading-tight">
                    Mastering Industrial <br/>
<span class="text-primary">Tank Weighing</span>
</h1>
<p class="text-[18px] text-on-surface-variant max-w-2xl">High-precision load cell integration for critical inventory management. Engineered for absolute accuracy in complex manufacturing environments.</p>
<div class="pt-2 flex flex-wrap gap-6">
<button class="bg-primary text-on-primary px-[24px] py-[12px] rounded font-semibold hover:opacity-90 transition-colors flex items-center gap-2 shadow-ambient-1">
                        Explore Systems
                        <span class="material-symbols-outlined text-[18px]">arrow_forward</span>
</button>
<button class="bg-secondary-container text-on-secondary-fixed-variant px-[24px] py-[12px] rounded font-semibold hover:opacity-90 transition-colors">
                        View Specifications
                    </button>
</div>
</div>
<div class="flex-1 relative w-full aspect-[1.79] rounded-xl overflow-hidden shadow-ambient-2 bg-surface-container-lowest">
<img alt="Industrial tank weighing system" class="w-full h-full object-cover" src="https://lh3.googleusercontent.com/aida/AP1WRLskTMhETHpP-fWZzcWhoTqqiHD24zwBQuPX0IDmP8uskc4kUeGcMOUV7kSelC7hDYWyRUzh35UW1ddZFdVf7HKv5nQAQlWKs97H7dQ4_rP5X05m6RCY48d6c8X1xJjcaM79B5ll5hAE03jwLBKEgX8j7RlqZlFXY5lubV-uzeO_zw099mZLPWDICZh_bEYjQPiT2qTTQ1387SSCFNUHGUJyDwhTubFsMS1ro5XVPZcH8S-ZYKLb2h63pQ"/>
</div>
</div>

<!-- Features Bento Grid -->
<div class="mb-20">
<div class="mb-12">
<h2 class="text-[32px] font-semibold text-on-background mb-1">Technical Superiority</h2>
<p class="text-[16px] text-secondary max-w-3xl">Engineered with absolute precision. Our load cells provide unparalleled accuracy in dynamic industrial environments.</p>
</div>
<div class="grid grid-cols-1 md:grid-cols-3 gap-6">
<!-- Feature 1 -->
<div class="bg-surface-container-lowest rounded-[24px] p-8 shadow-ambient-1 flex flex-col gap-3">
<div class="w-12 h-12 rounded-lg bg-surface-container-high flex items-center justify-center mb-3 text-primary">
<span class="material-symbols-outlined" style="font-variation-settings: 'FILL' 1;">analytics</span>
</div>
<h3 class="text-[20px] font-medium text-on-background">Micro-Precision Analytics</h3>
<p class="text-[16px] text-secondary">Real-time 0.01% precision data. Seamless SCADA and ERP integration.</p>
</div>
<!-- Feature 2 -->
<div class="bg-surface-container-lowest rounded-[24px] p-8 shadow-ambient-1 flex flex-col gap-3">
<div class="w-12 h-12 rounded-lg bg-surface-container-high flex items-center justify-center mb-3 text-primary">
<span class="material-symbols-outlined" style="font-variation-settings: 'FILL' 1;">shield_with_heart</span>
</div>
<h3 class="text-[20px] font-medium text-on-background">Harsh Environment Rated</h3>
<p class="text-[16px] text-secondary">IP69K stainless steel. Built for high-pressure washdowns and extreme heat.</p>
</div>
<!-- Feature 3 -->
<div class="bg-surface-container-lowest rounded-[24px] p-8 shadow-ambient-1 flex flex-col gap-3 md:col-span-1 md:row-span-1">
<div class="w-12 h-12 rounded-lg bg-surface-container-high flex items-center justify-center mb-3 text-primary">
<span class="material-symbols-outlined" style="font-variation-settings: 'FILL' 1;">cable</span>
</div>
<h3 class="text-[20px] font-medium text-on-background">Smart Junction Technology</h3>
<p class="text-[16px] text-secondary">Instant fault detection and isolation to prevent catastrophic batch loss.</p>
</div>
</div>
</div>

<!-- Industry Grid -->
<div class="mb-20">
<div class="flex justify-between items-end mb-12">
<div>
<h2 class="text-[32px] font-semibold text-on-background mb-1">Industry Applications</h2>
<p class="text-[16px] text-secondary">Tailored measurement solutions across critical sectors.</p>
</div>
</div>
<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6" id="industryGrid">
<!-- Industry 1 -->
<div class="group bg-surface-container-lowest rounded-[24px] overflow-hidden shadow-ambient-1 hover:shadow-ambient-2 transition-shadow duration-300">
<div class="aspect-square overflow-hidden bg-surface-variant">
<img alt="Chemical processing" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500" src="https://lh3.googleusercontent.com/aida/AP1WRLvMzYZjUoReFVty2QoQGIOt6A7aMBe5ZJGS0suEPZYZqDylRDXaJLgt7fUU_0J6-i72kyv-7EVHouBsCnWcREk0w_JbuD3hAJ0mrZFggA1zG-vboDW-8Fi0lQ_FqYdgBi4_-d_TCsZFNVLW9BKjw8AxAHmlBLrb50Xy6w7zHSJmPLdhewSBAWUcOuWIItoas_ivwMvJ7WEEi1yu82ES7sSl0Qp6weIUj2ke8-aBm0ApowigbRT66tWyBQ"/>
</div>
<div class="p-6">
<h3 class="text-[20px] font-medium text-on-background mb-1">Chemical Processing</h3>
<p class="text-[16px] text-secondary">Corrosion-resistant systems.</p>
</div>
</div>
<!-- Industry 2 -->
<div class="group bg-surface-container-lowest rounded-[24px] overflow-hidden shadow-ambient-1 hover:shadow-ambient-2 transition-shadow duration-300">
<div class="aspect-square overflow-hidden bg-surface-variant">
<img alt="Pharmaceutical manufacturing" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500" src="https://lh3.googleusercontent.com/aida/AP1WRLsiEjilQ_AFatkY9DT9M2zd6si2E8gTNnNX3cyrxhjaQQTzrdVkwv9lnfgubDGC9Itg-aA_EJT8LUHhvKQImcouAO-6--0jNxa2DJNW5t-dP4Na5-gjBV1eOM-KwDHQ8nr7SkpymHT2lY49HJlnXwcjozZZM4JSB7UrsMwNnkeAybxIs5Uk_MMKs_TBOBBnZcLNBhjOj-zg7Xcv8IH0R5PhHtVmq9dAfaHHjbpot2V6Vr7_FVVSmJVaPQ"/>
</div>
<div class="p-6">
<h3 class="text-[20px] font-medium text-on-background mb-1">Pharmaceuticals</h3>
<p class="text-[16px] text-secondary">FDA &amp; GMP compliant designs.</p>
</div>
</div>
<!-- Industry 3 -->
<div class="industry-card hidden md:block group bg-surface-container-lowest rounded-[24px] overflow-hidden shadow-ambient-1 hover:shadow-ambient-2 transition-shadow duration-300">
<div class="aspect-square overflow-hidden bg-surface-variant">
<img alt="Food and beverage" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500" src="https://lh3.googleusercontent.com/aida/AP1WRLuids03h2i0uWHdxPVnY6ycoDEk35quRr2Uxd-78Q5liAbJQ_JoRcb5jwcmMQzgoNv0OdpkxJRf0e0uR_YhpkxlRMffQf0pnCL-6qvYvhC6KqWEedutJLaoGDKgY71H5k9ahil42fSnfbJ2VeKkTKawAZpgfUF6tEJ6JBkEbWSpgYuaCkGVyMhrHOpz2JbRZExJlC91M6CBBZnCS4Co7UTOcHaofMcJEG8hDGblbveJxN-fJK7dzQB18Q"/>
</div>
<div class="p-6">
<h3 class="text-[20px] font-medium text-on-background mb-1">Food &amp; Beverage</h3>
<p class="text-[16px] text-secondary">Sanitary batching &amp; mixing.</p>
</div>
</div>
<!-- Industry 4 -->
<div class="industry-card hidden md:block group bg-surface-container-lowest rounded-[24px] overflow-hidden shadow-ambient-1 hover:shadow-ambient-2 transition-shadow duration-300">
<div class="aspect-square overflow-hidden bg-surface-variant">
<img alt="Bulk logistics" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500" src="https://lh3.googleusercontent.com/aida/AP1WRLs7Lo2dMGFejhzQl3ZmtA90fvT9HNp24p--NonE28lmj2GqEf6_NXWtG9G4NExtL6ty0tdQ4Wj9mYcZ02xsuDOGjR9-hz4-NyMI0yaLJixV3QRilPVct7QY7fHWiQQYf_uiVck2jAFgINZhLvKBGR6dm_gr43YOUvkkOuziZyaDiiXZJhxmPpDiiTLsblFk_n8ZofRekL8xz2loNY8u4QQtIYaSGHqffEeEOHv3r2WdTJSkCvCuDbEkKA"/>
</div>
<div class="p-6">
<h3 class="text-[20px] font-medium text-on-background mb-1">Bulk Logistics</h3>
<p class="text-[16px] text-secondary">High-capacity silo monitoring.</p>
</div>
</div>
<!-- Industry 5 -->
<div class="industry-card hidden md:block group bg-surface-container-lowest rounded-[24px] overflow-hidden shadow-ambient-1 hover:shadow-ambient-2 transition-shadow duration-300">
<div class="aspect-square overflow-hidden bg-surface-variant">
<img alt="Heavy metal processing" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500" src="https://lh3.googleusercontent.com/aida/AP1WRLtVFSDpLqcrCpW5QrCuZQfDAeUu8vzemh0TTQVEZFP6tnP7NQzO7lxF8kozrjWILUDH8b1BmCdX8IcFKa_wEjz1xLWsk4DTD_-EzINNTjzdWjiob5IiOygjDJRlAoB43hEv1LVp1EzOjZ5oiSP2YsAEA3_ROt45eF11IHEPAoo-w3sDwFfQpPyiX0B6HrJsh9Kk_b2tbS02YWco0-TbGsfOGbD1GLiNGXCHxEc8JfkVQYQEeVOB6LfziA"/>
</div>
<div class="p-6">
<h3 class="text-[20px] font-medium text-on-background mb-1">Heavy Metallurgy</h3>
<p class="text-[16px] text-secondary">Heat &amp; impact resistant platforms.</p>
</div>
</div>
<!-- Industry 6 -->
<div class="industry-card hidden md:block group bg-surface-container-lowest rounded-[24px] overflow-hidden shadow-ambient-1 hover:shadow-ambient-2 transition-shadow duration-300">
<div class="aspect-[1.79] lg:aspect-square overflow-hidden bg-surface-variant">
<img alt="Structural materials" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500" src="https://lh3.googleusercontent.com/aida/AP1WRLssrgRM3Ff_K0UpJtVNcdsa765rJzH-58sXLe7LHbLVorkw_2yzv6tvC8PIbZ47yb_prmoYWRPAmaYYECHsY_Piv_nXniwm-5WOWyad50ewlJIGgFQoUwQI20iYF0Fx7iOdaE-wKk7snTqlraE9PiCPSkt-_7aL9_qRdTfRKfgIujVvBzhbaDgI3ztLL9CP4JRF8_xExhOBtmWr-kqtk8dAu2sGMyqNlVmL77DeF6spmfz548URMoX4IA"/>
</div>
<div class="p-6">
<h3 class="text-[20px] font-medium text-on-background mb-1">Construction Materials</h3>
<p class="text-[16px] text-secondary">Rugged structural load systems.</p>
</div>
</div>
</div>
<!-- Mobile Show All Toggle -->
<div class="mt-12 flex justify-center md:hidden">
<button class="bg-surface-container-lowest border border-outline-variant text-on-surface px-[24px] py-[12px] rounded font-medium shadow-ambient-1 flex items-center gap-2" id="toggleIndustriesBtn">
                    Show All Industries
                    <span class="material-symbols-outlined text-[18px]">expand_more</span>
</button>
</div>
</div>

<!-- Bottom CTA -->
<div class="bg-surface-container-low rounded-[24px] p-[80px] text-center shadow-ambient-1 relative overflow-hidden border border-outline-variant mb-20">
<!-- Abstract background element -->
<div class="absolute top-0 right-0 w-64 h-64 bg-primary-container opacity-5 rounded-full blur-3xl -translate-y-1/2 translate-x-1/4"></div>
<div class="absolute bottom-0 left-0 w-64 h-64 bg-tertiary-container opacity-5 rounded-full blur-3xl translate-y-1/2 -translate-x-1/4"></div>
<div class="relative z-10 max-w-2xl mx-auto space-y-6">
<h2 class="text-[36px] font-bold text-on-background">Ready to Optimize Your Yield?</h2>
<p class="text-[18px] text-on-surface-variant">
                    Connect with our application engineers for a custom assessment of your facility's weighing requirements. Precision starts here.
                </p>
<div class="pt-2">
<button class="bg-primary text-on-primary px-[32px] py-[16px] rounded font-medium hover:opacity-90 transition-all hover:-translate-y-1 shadow-ambient-2 flex items-center gap-2 mx-auto">
                        Consult our Experts
                        <span class="material-symbols-outlined text-[20px]">engineering</span>
</button>
</div>
</div>
</div>
</section>
"""

# Replace the existing tank-weighing-section
pattern = re.compile(r'<!-- Tank Weighing Deep-Dive Section -->\s*<section id="tank-weighing-section" class="relative">.*?</section>', re.DOTALL)
html = pattern.sub(new_section, html)

# Apply the background grid style to other sections:
# 1. Complete Industrial Weighing Solutions
# 2. ASK YOUR QUERY
# 3. OUR PROCESS WEIGHING SOLUTIONS

grid_style_prop = """        background-image: radial-gradient(#c3c7ca 1px, transparent 1px) !important;
        background-size: 24px 24px !important;
        background-color: #fff8f7 !important;"""

# For Complete Industrial Weighing Solutions Section
complete_pattern = re.compile(r'(<!-- Complete Industrial Weighing Solutions Section -->\s*<section)\b')
html = complete_pattern.sub(r'\1 id="complete-industrial-weighing-section"', html)
html = html.replace('</head>', f"""
<style>
    #complete-industrial-weighing-section {{
{grid_style_prop}
    }}
    #ask-your-query-section {{
{grid_style_prop}
    }}
    #process-weighing-section {{
{grid_style_prop}
    }}
</style>
</head>""")

# For ask your query, we already target #ask-your-query-section
# But it has its own background color in the HTML currently
ask_query_bg_pattern = re.compile(r'#ask-your-query-section\s*\{\s*background-color:\s*[^;!]+(?:!important)?;\s*')
if ask_query_bg_pattern.search(html):
    html = ask_query_bg_pattern.sub('#ask-your-query-section { ', html)
    
# Remove the old blueprint grid from ask your query
html = re.sub(r'#ask-your-query-section \.blueprint-grid \{.*?\}', '', html, flags=re.DOTALL)

# For OUR PROCESS WEIGHING SOLUTIONS
# It's inside <section class="relative bg-white pt-32 pb-24 overflow-hidden">
process_pattern = re.compile(r'(<!-- PROCESS WEIGHING SOLUTIONS -->\s*<section[^>]*class="[^"]*)\s*bg-white([^"]*)"([^>]*)>')
html = process_pattern.sub(r'\1\2" id="process-weighing-section"\3>', html)
# if the exact comment doesn't exist, just find by content
process_weigh_pattern = re.compile(r'(<section[^>]*class="[^"]*bg-white[^"]*"\s*>)(?=\s*<div[^>]*>\s*<div[^>]*>\s*<span[^>]*>OUR PROCESS\s*WEIGHING SOLUTIONS)', re.DOTALL)
html = process_weigh_pattern.sub(r'<section class="relative pt-32 pb-24 overflow-hidden" id="process-weighing-section">', html)

with open("D:/Antigravity AI agent/index.html", "w", encoding="utf-8") as f:
    f.write(html)
