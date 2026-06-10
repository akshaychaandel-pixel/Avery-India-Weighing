$path = "D:\Antigravity AI agent\index.html"
$content = Get-Content $path -Raw -Encoding UTF8

$averyHtml = @"
<!-- Avery Styles -->
<style>
    .avery-grid-bg {
        background-image: linear-gradient(to right, #E5E7EB 1px, transparent 1px), linear-gradient(to bottom, #E5E7EB 1px, transparent 1px);
        background-size: 40px 40px;
    }
    .avery-premium-card {
        transition: all 0.3s ease;
    }
    .avery-premium-card:hover {
        border-color: #D71920;
        box-shadow: 0 20px 40px rgba(0,0,0,0.04);
        transform: translateY(-2px);
    }
    .avery-logo-filter {
        filter: grayscale(100%) opacity(60%);
        transition: all 0.3s ease;
    }
    .avery-logo-filter:hover {
        filter: grayscale(0%) opacity(100%);
    }
    @keyframes scroll { 0% { transform: translateX(0); } 100% { transform: translateX(-50%); } } 
    .mobile-scroll-container { display: flex; width: max-content; animation: scroll 30s linear infinite; } 
    @media (min-width: 768px) { .mobile-scroll-container { animation: none; width: 100%; display: grid; } }
</style>

<div class="avery-grid-bg w-full relative z-10 bg-[#f9f9f7]">
    <!-- Trust & Expertise Section -->
    <section class="relative py-[64px] md:py-[96px] border-b border-[#e2e3e1]">
        <div class="max-w-7xl mx-auto px-[20px] md:px-[64px]">
            <div class="flex flex-col lg:flex-row gap-[48px] lg:items-center mb-[64px]">
                <div class="lg:w-1/2">
                    <span class="font-['Inter'] text-[12px] font-bold tracking-[0.1em] text-[#ae0011] uppercase mb-[8px] block">Why Customers Trust Us</span>
                    <h2 class="font-['Inter'] text-[32px] md:text-[48px] font-bold text-[#1a1c1b] mb-[16px] leading-[1.2] md:leading-[1.1] tracking-[-0.01em] md:tracking-[-0.02em]">What Differentiates Us</h2>
                    <p class="font-['Inter'] text-[18px] font-normal leading-[1.6] text-[#5f5e5e] mb-[24px]">Avery India stands as a pillar of reliability in heavy industry. Our custom-engineered solutions are built on decades of expertise, ensuring flawless operation in the most demanding environments.</p>
                </div>
                <div class="lg:w-1/2 rounded-xl overflow-hidden shadow-lg border border-[#e2e3e1]">
                    <img alt="Professional industrial engineering team reviewing technical blueprints in a modern factory setting" class="w-full h-auto object-cover" src="https://lh3.googleusercontent.com/aida-public/AB6AXuA4r83zDEr9W4vURdBnm_C09dYyv53OoNRc8dm-ohQGaR1drvHd7DJWWycbR8guC4I-LyapUMZ6J3eMFQ9rMMhBWX3-aHy7BE9xLNdAOBM5FSNKL4x4crrmiuEyN6bKYXTkOl1MzLQSObdRft6iFLIPeCWnX-j-RDD3lBPHwd-lUbBxkkyO1i23Ix1DBemKXTRpsNANKl0x9eqFD59_N33ioJrebeXcCdxbo3Ye4aIA5iQjzMejL18MHP_v2kc36LUlN-nvcSlGew"/>
                </div>
            </div>
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-[24px]">
                <!-- Proven Industry Expertise Card -->
                <div class="bg-[#f9f9f7] border border-[#e2e3e1] rounded-lg avery-premium-card p-[24px] flex flex-col h-full relative overflow-hidden group">
                    <div class="w-10 h-10 rounded bg-[#eeeeec] flex items-center justify-center mb-[16px] border border-[#e2e3e1] group-hover:border-[#ae0011] transition-colors"><span class="material-symbols-outlined text-[#ae0011]" style="font-variation-settings: 'FILL' 1;">precision_manufacturing</span></div>
                    <h3 class="font-['Inter'] text-[24px] font-semibold leading-[1.3] text-[#1a1c1b] mb-[8px]">Proven Industry Expertise</h3>
                    <p class="font-['Inter'] text-[16px] font-normal leading-[1.5] text-[#5f5e5e]">Decades of specialized knowledge in heavy industrial weighing and metrology standards.</p>
                </div>
                <!-- Custom Design Solutions Card -->
                <div class="bg-[#f9f9f7] border border-[#e2e3e1] rounded-lg avery-premium-card p-[24px] flex flex-col h-full relative overflow-hidden group">
                    <div class="w-10 h-10 rounded bg-[#eeeeec] flex items-center justify-center mb-[16px] border border-[#e2e3e1] group-hover:border-[#ae0011] transition-colors"><span class="material-symbols-outlined text-[#ae0011]" style="font-variation-settings: 'FILL' 1;">architecture</span></div>
                    <h3 class="font-['Inter'] text-[24px] font-semibold leading-[1.3] text-[#1a1c1b] mb-[8px]">Custom Design Solutions</h3>
                    <p class="font-['Inter'] text-[16px] font-normal leading-[1.5] text-[#5f5e5e]">Tailored engineering for unique operational requirements and challenging environments.</p>
                </div>
                <!-- End-to-End Support Card -->
                <div class="bg-[#f9f9f7] border border-[#e2e3e1] rounded-lg avery-premium-card p-[24px] flex flex-col h-full relative overflow-hidden group">
                    <div class="w-10 h-10 rounded bg-[#eeeeec] flex items-center justify-center mb-[16px] border border-[#e2e3e1] group-hover:border-[#ae0011] transition-colors"><span class="material-symbols-outlined text-[#ae0011]" style="font-variation-settings: 'FILL' 1;">handshake</span></div>
                    <h3 class="font-['Inter'] text-[24px] font-semibold leading-[1.3] text-[#1a1c1b] mb-[8px]">End-to-End Support</h3>
                    <p class="font-['Inter'] text-[16px] font-normal leading-[1.5] text-[#5f5e5e]">Comprehensive lifecycle management from initial consultation to nationwide field maintenance.</p>
                </div>
                <!-- Advanced Technology Card -->
                <div class="bg-[#f9f9f7] border border-[#e2e3e1] rounded-lg avery-premium-card p-[24px] flex flex-col h-full relative overflow-hidden group">
                    <div class="w-10 h-10 rounded bg-[#eeeeec] flex items-center justify-center mb-[16px] border border-[#e2e3e1] group-hover:border-[#ae0011] transition-colors"><span class="material-symbols-outlined text-[#ae0011]" style="font-variation-settings: 'FILL' 1;">settings_input_component</span></div>
                    <h3 class="font-['Inter'] text-[24px] font-semibold leading-[1.3] text-[#1a1c1b] mb-[8px]">Advanced Technology</h3>
                    <p class="font-['Inter'] text-[16px] font-normal leading-[1.5] text-[#5f5e5e]">Industry 4.0 ready systems featuring high-precision sensors and seamless digital integration.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Partner Ecosystem Section -->
    <section class="py-[64px] md:py-[96px] bg-[#f9f9f7] border-b border-[#e2e3e1]">
        <div class="max-w-7xl mx-auto px-[20px] md:px-[64px] text-center">
            <span class="font-['Inter'] text-[12px] font-bold tracking-[0.1em] text-[#ae0011] uppercase mb-[16px] block">Trusted By Industry Leaders</span>
            <h2 class="font-['Inter'] text-[30px] font-semibold leading-[1.2] tracking-[-0.01em] text-[#1a1c1b] mb-[48px] max-w-2xl mx-auto">Powering operations for the world's most demanding enterprises.</h2>
            <!-- Substantial Logo Grid -->
            <div class="overflow-hidden mb-[48px] py-[16px]">
                <div class="mobile-scroll-container flex md:grid md:grid-cols-3 lg:grid-cols-6 gap-x-[16px] gap-y-[32px] items-center">
                    <div class="flex-shrink-0 w-[160px] md:w-full flex justify-center p-4 bg-[#ffffff] border border-[#e2e3e1] rounded-lg avery-logo-filter cursor-pointer hover:border-[#e2e3e1] transition-colors"><img alt="Tata Logo" class="max-h-12 object-contain" src="https://lh3.googleusercontent.com/aida-public/AB6AXuDAOhNbF_HFCmbe0AqipvP5ZlRsLFd_1zc2FhNZck6iq0lfjdEKnz4wxRjvD_-38T353go2HvC-UBkLVO5XV7hELRkll3pOFV3MyHWJaWNLlqJL_nvBsIF1C97-kUthNIY_FX7g5lonqNZ3RHc-examHXK29fmEbjCx7utv7l40dgdVeGxyNkwhePxChM6iGJKNvV5K_eHAC_47NdlKG041glf8isSzOB1cJmc4FF1O_gT_PlrdWpTeLWMIzkYXKAv70wfRnAYLxg"/></div>
                    <div class="flex-shrink-0 w-[160px] md:w-full flex justify-center p-4 bg-[#ffffff] border border-[#e2e3e1] rounded-lg avery-logo-filter cursor-pointer hover:border-[#e2e3e1] transition-colors"><img alt="L&amp;T Logo" class="max-h-10 object-contain" src="https://lh3.googleusercontent.com/aida-public/AB6AXuDzVZCLFQbIZgVj1MKtmRbwGmvRKuMUGZPLdBOI-nGk1PWWatoJwK296WO5RynrqLEQCLzGFICIarLaxZe7-aa3iFqFb3MYvzKtVRCiZcO-2idC2ueGeWotaZVKb5o7j7rOFJaBW-xjzeVgCKmxWPUU0WgNinXAOa4REnObsB19ApIYL_bZFFwlooWI5njjWg2lwt6mJLqlHD9GqOEaAn7EGmjgLRyLSsgMixxjSsPERp08VisBsyPldgwMIxuUJwLsbQQLoDRQrQ"/></div>
                    <div class="flex-shrink-0 w-[160px] md:w-full flex justify-center p-4 bg-[#ffffff] border border-[#e2e3e1] rounded-lg avery-logo-filter cursor-pointer hover:border-[#e2e3e1] transition-colors"><img alt="Reliance Logo" class="max-h-14 object-contain" src="https://lh3.googleusercontent.com/aida-public/AB6AXuA3NDdORCDKvantMFAj2BROh-VOH1H5qKRn0SK5_FArBHIiHOC2zB8YennKbbxAaooB6tXXrtYT4CwwApHuYi97goDi0V34KT2k7-Y7WrkUco4gQ00Vw0gODvcwWqqJQI6tvty7LaJUTuK_1TgEuZLfSV_Nx9SJ3SzWTg-9hI5PWe55uYVxJOff7THK9DNwR-bdrEgbQWxLNwYxo5yZ0sC5bMWGFW7WlGIjSUoIr5rB95L3JmF5V2BIp4z65-Q3m8HDibfAvEibtA"/></div>
                    <div class="flex-shrink-0 w-[160px] md:w-full flex justify-center p-4 bg-[#ffffff] border border-[#e2e3e1] rounded-lg avery-logo-filter cursor-pointer hover:border-[#e2e3e1] transition-colors"><img alt="Siemens Logo" class="max-h-8 object-contain" src="https://lh3.googleusercontent.com/aida-public/AB6AXuBjyFOSeyEudlVoKZWK9iIXV3Vlu8y4NBOH8rpXwlu54soQsSIUbONK_akHTM_dqfIVufuL3UXa_O63UORWOdTeVnyxgcWD_82Hea7T2WWhEVTPCVBZBL8Xdggh-nqBMS36odpmcuLlcDVulY6ToATp2C_iOTjOSsdmTMtJT6UsjXdHz0tjIFTGmhLtQ-bMdU8wmYyJKgOY4KxUktCPoAknkBuAf8ra2b83M1Kbrv2vtfY0PK0X7UNBClKLSJfZbhPbrYEeTIqiDA"/></div>
                    <div class="flex-shrink-0 w-[160px] md:w-full flex justify-center p-4 bg-[#ffffff] border border-[#e2e3e1] rounded-lg avery-logo-filter cursor-pointer hover:border-[#e2e3e1] transition-colors"><img alt="JSW Logo" class="max-h-12 object-contain" src="https://lh3.googleusercontent.com/aida-public/AB6AXuDb3iBUCZrmkvkBg04dDBBFilXIjNLf0HlXLStFIbny65pEvRgeY1N8x3ZePzH_xO_MmuTpoQyoyimFguIYYBbfxRO0ttMETQwyeyL6bo2Vsjg_HVC_69y129kRxmz2LLMX_qScxORTCPiySvSZ4dYcMMZmfty3OM4yP6hkEqDJoBSb7E7HWYrh63PpD_g0xfGJbyTlnkYBTylH839EBdOaGqvHihC-hRnmNgA43nOqTaDNB2W4FdBxacoKI-GfQzYbmv_DddiRrg"/></div>
                    <div class="flex-shrink-0 w-[160px] md:w-full flex justify-center p-4 bg-[#ffffff] border border-[#e2e3e1] rounded-lg avery-logo-filter cursor-pointer hover:border-[#e2e3e1] transition-colors"><img alt="Adani Logo" class="max-h-12 object-contain" src="https://lh3.googleusercontent.com/aida-public/AB6AXuAoShYw3-6WgiKtL2SrOffPm-V6Jwwfk0EWPk9o6umw2krn9FBqoNlamlZSiDDFqHFbUdzLwz2Xwggqbm_idJgBUKWSCOyzwhXN8R4_0E8lCPees7u1siL4qJkN0w0UvNA99MLqq4vSu_Gql-4UFP_MWQ7WfQMb41y0BQjTflt4YL3qpB3MMXav-_HON63H319qINGvd7xDal38lirEwHtLtCYvvhKYXoGOE01Ipo82N4SvZxJBzmGagJUFEfVPvAvO6ee5Nx5-RQ"/></div>
                </div>
            </div>
            <!-- Industry Chips Mobile Scroller -->
            <div class="pt-[32px] border-t border-[#e2e3e1]">
                <div class="flex flex-wrap gap-[16px] justify-center">
                    <span class="bg-[#e2e3e1] text-[#1a1c1b] px-[24px] py-[8px] rounded-full font-['Inter'] text-[12px] font-bold tracking-[0.1em] uppercase hover:bg-[#d71920] hover:text-[#ffffff] transition-colors cursor-pointer border border-transparent flex items-center gap-2"><span class="material-symbols-outlined text-[16px]">factory</span> Steel Manufacturing</span>
                    <span class="bg-[#e2e3e1] text-[#1a1c1b] px-[24px] py-[8px] rounded-full font-['Inter'] text-[12px] font-bold tracking-[0.1em] uppercase hover:bg-[#d71920] hover:text-[#ffffff] transition-colors cursor-pointer border border-transparent flex items-center gap-2"><span class="material-symbols-outlined text-[16px]">bolt</span> Power Generation</span>
                    <span class="bg-[#e2e3e1] text-[#1a1c1b] px-[24px] py-[8px] rounded-full font-['Inter'] text-[12px] font-bold tracking-[0.1em] uppercase hover:bg-[#d71920] hover:text-[#ffffff] transition-colors cursor-pointer border border-transparent flex items-center gap-2"><span class="material-symbols-outlined text-[16px]">terrain</span> Mining</span>
                    <span class="bg-[#e2e3e1] text-[#1a1c1b] px-[24px] py-[8px] rounded-full font-['Inter'] text-[12px] font-bold tracking-[0.1em] uppercase hover:bg-[#d71920] hover:text-[#ffffff] transition-colors cursor-pointer border border-transparent flex items-center gap-2"><span class="material-symbols-outlined text-[16px]">architecture</span> Cement &amp; Infrastructure</span>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="py-[64px] md:py-[96px] bg-[#f9f9f7]">
        <div class="max-w-7xl mx-auto px-[20px] md:px-[64px] flex justify-center">
            <div class="bg-[#f4f4f2] border border-[#e2e3e1] rounded-full px-[32px] py-[24px] flex flex-col md:flex-row items-center gap-[24px] shadow-lg max-w-4xl w-full justify-between">
                <div class="text-center md:text-left">
                    <p class="font-['Inter'] text-[24px] font-semibold leading-[1.3] text-[#1a1c1b]">Need a customized engineering solution?</p>
                    <p class="font-['Inter'] text-[16px] font-normal leading-[1.5] text-[#5f5e5e]">Our team is ready to assist.</p>
                </div>
                <button class="bg-[#ae0011] text-[#ffffff] px-[32px] py-[16px] rounded-full font-semibold hover:bg-[#d71920] transition-colors flex items-center gap-2 whitespace-nowrap">
                    <span>Request Consultation</span>
                    <span class="material-symbols-outlined">arrow_forward</span>
                </button>
            </div>
        </div>
    </section>
</div>
"@

$marker = '(?=<footer)'
$content = [regex]::Replace($content, $marker, "$averyHtml`n", "IgnoreCase")

Set-Content $path -Value $content -Encoding UTF8
