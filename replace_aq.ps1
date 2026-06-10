$path = 'D:\Antigravity AI agent\index.html'
$content = Get-Content $path -Raw -Encoding UTF8

$newSection = @'
<section id="ask-your-query-section" class="relative">
<style>
    #ask-your-query-section {
        background-color: #f9f9f7 !important;
        color: #1a1c1b !important;
        font-family: 'Inter', sans-serif !important;
        position: relative;
    }
    #ask-your-query-section .aq-blueprint-grid {
        background-image: linear-gradient(to right, #E5E7EB 0.5px, transparent 0.5px), linear-gradient(to bottom, #E5E7EB 0.5px, transparent 0.5px);
        background-size: 48px 48px;
    }
    #ask-your-query-section h1, #ask-your-query-section p, #ask-your-query-section label,
    #ask-your-query-section input, #ask-your-query-section textarea, #ask-your-query-section select {
        font-family: 'Inter', sans-serif !important;
    }
    #ask-your-query-section .aq-py-24  { padding-top: 96px !important; padding-bottom: 96px !important; }
    #ask-your-query-section .aq-mb-12  { margin-bottom: 48px !important; }
    #ask-your-query-section .aq-mb-4   { margin-bottom: 16px !important; }
    #ask-your-query-section .aq-p-8    { padding: 32px !important; }
    #ask-your-query-section .aq-p-12   { padding: 48px !important; }
    #ask-your-query-section .aq-space-y-8 > * + * { margin-top: 32px !important; }
    #ask-your-query-section .aq-gap-6  { gap: 24px !important; }
    #ask-your-query-section .aq-gap-2  { gap: 8px !important; }
    #ask-your-query-section .aq-gap-8  { gap: 32px !important; }
    #ask-your-query-section .aq-gap-4  { gap: 16px !important; }
    #ask-your-query-section .aq-pl-12  { padding-left: 48px !important; }
    #ask-your-query-section .aq-pr-4   { padding-right: 16px !important; }
    #ask-your-query-section .aq-py-4   { padding-top: 16px !important; padding-bottom: 16px !important; }
    #ask-your-query-section .aq-px-4   { padding-left: 16px !important; padding-right: 16px !important; }
    #ask-your-query-section .aq-pt-6   { padding-top: 24px !important; }
    #ask-your-query-section .aq-text-on-surface          { color: #1a1c1b !important; }
    #ask-your-query-section .aq-text-secondary           { color: #5f5e5e !important; }
    #ask-your-query-section .aq-text-on-surface-variant  { color: #5d3f3c !important; }
    #ask-your-query-section .aq-text-primary             { color: #ae0011 !important; }
    #ask-your-query-section .aq-text-on-primary          { color: #ffffff !important; }
    #ask-your-query-section .aq-bg-surface-lowest        { background-color: #ffffff !important; }
    #ask-your-query-section .aq-bg-surface-low           { background-color: #f4f4f2 !important; }
    #ask-your-query-section .aq-bg-primary-container     { background-color: #d71920 !important; }
    #ask-your-query-section .aq-display-lg        { font-size: 48px !important; line-height: 1.1 !important; letter-spacing: -0.02em !important; font-weight: 700 !important; }
    #ask-your-query-section .aq-display-lg-mobile { font-size: 32px !important; line-height: 1.2 !important; letter-spacing: -0.01em !important; font-weight: 700 !important; }
    #ask-your-query-section .aq-body-lg           { font-size: 18px !important; line-height: 1.6 !important; font-weight: 400 !important; }
    #ask-your-query-section .aq-label-caps        { font-size: 12px !important; line-height: 1 !important; letter-spacing: 0.1em !important; font-weight: 700 !important; text-transform: uppercase !important; }
    #ask-your-query-section .aq-body-md           { font-size: 16px !important; line-height: 1.5 !important; font-weight: 400 !important; }
    #ask-your-query-section .aq-headline-sm       { font-size: 24px !important; line-height: 1.3 !important; font-weight: 600 !important; }
    #ask-your-query-section .aq-shadow-premium    { box-shadow: 0 20px 40px rgba(0,0,0,0.04) !important; }
    #ask-your-query-section input:focus,
    #ask-your-query-section textarea:focus,
    #ask-your-query-section select:focus {
        outline: none !important;
        border-bottom-color: #ae0011 !important;
        box-shadow: none !important;
    }
    @media (min-width: 768px) {
        #ask-your-query-section .aq-md-p-12 { padding: 48px !important; }
    }
</style>

<div class="absolute inset-0 pointer-events-none aq-blueprint-grid z-0" style="opacity:0.5;"></div>

<div class="relative z-10 aq-py-24 px-8 md:px-16 max-w-[1440px] mx-auto">
    <div class="aq-mb-12">
        <h1 class="aq-display-lg-mobile aq-text-on-surface uppercase aq-mb-4" style="font-size:clamp(32px,5vw,48px);line-height:1.1;letter-spacing:-0.02em;font-weight:700;">
            ASK YOUR QUERY
        </h1>
        <p class="aq-body-lg aq-text-secondary max-w-2xl">
            Connect with our engineering specialists. Please provide your requirements below, and our technical team will respond with precise solutions.
        </p>
    </div>
    <div class="aq-bg-surface-lowest border border-[#e6bdb8] rounded-[20px] aq-shadow-premium aq-p-8 aq-md-p-12">
        <form action="#" class="aq-space-y-8" method="POST">
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 aq-gap-6">
                <div class="flex flex-col aq-gap-2">
                    <label class="aq-label-caps aq-text-on-surface-variant" for="fullName">FULL NAME</label>
                    <div class="relative">
                        <span class="absolute left-4 top-1/2 -translate-y-1/2 aq-text-secondary material-symbols-outlined" style="font-variation-settings:'FILL' 0;font-size:20px;">person</span>
                        <input class="w-full aq-bg-surface-low border-0 border-b-2 border-[#e6bdb8] rounded-t-lg aq-pl-12 aq-pr-4 aq-py-4 aq-body-md aq-text-on-surface" id="fullName" name="fullName" placeholder="Full Name" type="text"/>
                    </div>
                </div>
                <div class="flex flex-col aq-gap-2">
                    <label class="aq-label-caps aq-text-on-surface-variant" for="email">EMAIL ID</label>
                    <div class="relative">
                        <span class="absolute left-4 top-1/2 -translate-y-1/2 aq-text-secondary material-symbols-outlined" style="font-variation-settings:'FILL' 0;font-size:20px;">mail</span>
                        <input class="w-full aq-bg-surface-low border-0 border-b-2 border-[#e6bdb8] rounded-t-lg aq-pl-12 aq-pr-4 aq-py-4 aq-body-md aq-text-on-surface" id="email" name="email" placeholder="Email ID" type="email"/>
                    </div>
                </div>
                <div class="flex flex-col aq-gap-2">
                    <label class="aq-label-caps aq-text-on-surface-variant" for="phone">PHONE NO.</label>
                    <div class="relative">
                        <span class="absolute left-4 top-1/2 -translate-y-1/2 aq-text-secondary material-symbols-outlined" style="font-variation-settings:'FILL' 0;font-size:20px;">call</span>
                        <input class="w-full aq-bg-surface-low border-0 border-b-2 border-[#e6bdb8] rounded-t-lg aq-pl-12 aq-pr-4 aq-py-4 aq-body-md aq-text-on-surface" id="phone" name="phone" placeholder="Phone No." type="tel"/>
                    </div>
                </div>
                <div class="flex flex-col aq-gap-2">
                    <label class="aq-label-caps aq-text-on-surface-variant" for="company">COMPANY NAME</label>
                    <div class="relative">
                        <span class="absolute left-4 top-1/2 -translate-y-1/2 aq-text-secondary material-symbols-outlined" style="font-variation-settings:'FILL' 0;font-size:20px;">domain</span>
                        <input class="w-full aq-bg-surface-low border-0 border-b-2 border-[#e6bdb8] rounded-t-lg aq-pl-12 aq-pr-4 aq-py-4 aq-body-md aq-text-on-surface" id="company" name="company" placeholder="Company Name" type="text"/>
                    </div>
                </div>
            </div>
            <div class="grid grid-cols-1 md:grid-cols-2 aq-gap-6">
                <div class="flex flex-col aq-gap-2">
                    <label class="aq-label-caps aq-text-on-surface-variant" for="state">STATE</label>
                    <div class="relative">
                        <span class="absolute left-4 top-1/2 -translate-y-1/2 aq-text-secondary material-symbols-outlined" style="font-variation-settings:'FILL' 0;font-size:20px;">map</span>
                        <input class="w-full aq-bg-surface-low border-0 border-b-2 border-[#e6bdb8] rounded-t-lg aq-pl-12 aq-pr-4 aq-py-4 aq-body-md aq-text-on-surface" id="state" name="state" placeholder="State" type="text"/>
                    </div>
                </div>
                <div class="flex flex-col aq-gap-2">
                    <label class="aq-label-caps aq-text-on-surface-variant" for="city">CITY</label>
                    <div class="relative">
                        <span class="absolute left-4 top-1/2 -translate-y-1/2 aq-text-secondary material-symbols-outlined" style="font-variation-settings:'FILL' 0;font-size:20px;">location_city</span>
                        <input class="w-full aq-bg-surface-low border-0 border-b-2 border-[#e6bdb8] rounded-t-lg aq-pl-12 aq-pr-4 aq-py-4 aq-body-md aq-text-on-surface" id="city" name="city" placeholder="City" type="text"/>
                    </div>
                </div>
            </div>
            <div class="flex flex-col aq-gap-2">
                <label class="aq-label-caps aq-text-on-surface-variant" for="application">APPLICATION INTERESTED IN *</label>
                <div class="relative">
                    <select class="w-full aq-bg-surface-low border-0 border-b-2 border-[#e6bdb8] rounded-t-lg aq-px-4 aq-py-4 aq-body-md aq-text-on-surface appearance-none cursor-pointer" id="application" name="application">
                        <option disabled="" selected="" value="">Select Application</option>
                        <option value="heavy-weighing">Heavy Capacity Weighing</option>
                        <option value="process-automation">Process Automation</option>
                        <option value="testing-systems">Material Testing Systems</option>
                        <option value="other">Other Engineering Solutions</option>
                    </select>
                    <span class="absolute right-4 top-1/2 -translate-y-1/2 aq-text-secondary pointer-events-none material-symbols-outlined">expand_more</span>
                </div>
            </div>
            <div class="grid grid-cols-1 lg:grid-cols-2 aq-gap-8 items-end">
                <div class="flex flex-col aq-gap-2 h-full">
                    <label class="aq-label-caps aq-text-on-surface-variant" for="requirement">SPECIFY YOUR REQUIREMENT *</label>
                    <textarea class="w-full aq-bg-surface-low border-0 border-b-2 border-[#e6bdb8] rounded-t-lg aq-px-4 aq-py-4 aq-body-md aq-text-on-surface resize-none min-h-[120px]" id="requirement" name="requirement" placeholder="Please provide details about your requirements..." rows="4"></textarea>
                </div>
                <div class="flex flex-col aq-gap-4 justify-end h-full aq-pt-6">
                    <button class="w-full aq-bg-primary-container aq-text-on-primary aq-headline-sm aq-py-4 rounded-lg hover:bg-[#ae0011] transition-all duration-300 flex items-center justify-center aq-gap-2 group" style="box-shadow:0 2px 8px rgba(174,0,17,0.15);" type="submit">
                        ENQUIRE NOW
                        <span class="material-symbols-outlined transition-transform group-hover:translate-x-1" style="font-variation-settings:'wght' 600;">arrow_forward</span>
                    </button>
                    <p class="aq-body-md aq-text-secondary text-sm text-center lg:text-left">
                        By deploying this request, you agree to our <a class="aq-text-primary hover:underline" href="#">Data Privacy Protocol</a>.
                    </p>
                </div>
            </div>
        </form>
    </div>
</div>
</section>
'@

# Match from <!-- Expert Consultation Section --> to its closing </section>
$pattern = '(?s)<!-- Expert Consultation Section -->.*?<section class="relative z-10 flex flex-col justify-center py-24 px-margin-mobile md:px-margin-desktop">.*?</section>'

if ($content -match $pattern) {
    $content = $content -replace $pattern, $newSection
    Set-Content $path -Value $content -Encoding UTF8
    Write-Host "SUCCESS: Ask Your Query section replaced cleanly."
} else {
    Write-Host "ERROR: Pattern not found."
}
