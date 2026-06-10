import re

def main():
    path = 'D:/Antigravity AI agent/index.html'
    with open(path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # 1. Update Hero CTA
    old_cta = '<div class="flex flex-col sm:flex-row gap-4 pt-4"><button class="w-full md:w-auto bg-primary-container text-on-primary-container font-label-md text-label-md uppercase px-8 py-4 rounded-full hover:bg-primary-container/90 transition-colors duration-200 active:scale-95 flex items-center justify-center gap-2 shadow-lg hover:shadow-[0_0_20px_rgba(255,84,75,0.4)] transition-all duration-300 order-1">Get a Quote <span class="material-symbols-outlined text-[20px]">arrow_forward</span></button><button class="w-full md:w-auto bg-transparent border border-white/20 text-on-background font-label-md text-label-md uppercase px-8 py-4 rounded-full hover:bg-white/5 transition-colors duration-200 active:scale-95 flex items-center justify-center hover:shadow-[0_0_15px_rgba(255,255,255,0.1)] transition-all duration-300 order-2">Enquire Now</button></div>'
    new_cta = '<div class="flex flex-col sm:flex-row gap-4 pt-4"><button class="w-full md:w-auto bg-primary-container text-on-primary-container font-label-md text-label-md uppercase px-8 py-4 rounded-full hover:bg-primary-container/90 transition-colors duration-200 active:scale-95 flex items-center justify-center gap-2 shadow-lg hover:shadow-[0_0_20px_rgba(255,84,75,0.4)] transition-all duration-300 order-1">Enquire Now <span class="material-symbols-outlined text-[20px]">arrow_forward</span></button></div>'
    content = content.replace(old_cta, new_cta)
    
    # 2. Remove OUR PROCESS WEIGHING SOLUTIONS
    # Find start: <section id="our-process-solutions-section" class="relative py-32 pb-12">
    # And then we need to remove everything up to its closing </section>
    # Note: there are nested sections (sticky-card) inside it.
    # The block ends before "<!-- Ecosystem Section -->" or <!-- Product Ecosystem Section -->
    # Let's use a simpler approach: finding the start string and finding the next major section to slice properly.
    
    pattern1 = re.compile(r'<!-- Sticky Showcase Section -->.*?<section id="our-process-solutions-section"..*?<!-- Product Card 4 -->.*?</div>\s*</section>\s*</div>\s*</div>\s*</section>', re.DOTALL)
    content = pattern1.sub('', content)

    # 3. Remove Engineered Ecosystem
    # Start: <!-- Ecosystem Section -->
    # <!-- Product Ecosystem Section -->
    # <section class="py-24 overflow-hidden bg-surface-container-lowest">
    # End: </section>
    # Then </main> starts.
    pattern2 = re.compile(r'<!-- Ecosystem Section -->\s*<!-- Product Ecosystem Section -->\s*<section class="py-24 overflow-hidden bg-surface-container-lowest">.*?</section>', re.DOTALL)
    content = pattern2.sub('', content)

    with open(path, 'w', encoding='utf-8') as f:
        f.write(content)
        
    print("Modifications applied successfully.")

if __name__ == '__main__':
    main()
