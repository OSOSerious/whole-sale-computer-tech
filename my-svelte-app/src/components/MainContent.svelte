<script>
  import Features from './Features.svelte';
  import ProductsSales from './ProductsSales.svelte';
  import CertifiedPartners from './CertifiedPartners.svelte';
  import Testimonials from './Testimonials.svelte';
  import Contact from './Contact.svelte';
  import Newsletter from './Newsletter.svelte';
  import DesktopCarousel from './DesktopCarousel.svelte';
  import LaptopSection from './LaptopSection.svelte';
  import GamingComputerSection from './GamingComputerSection.svelte';
  import PowerBatteryBackupSection from './PowerBatteryBackupSection.svelte';
  import DataRecoveryEstimator from './DataRecoveryEstimator.svelte';
  import AIAssistant from './AIAssistant.svelte';
</script>

<section class="main-content">
  <div class="container">
    <Features />
    <ProductsSales />
    <CertifiedPartners />
    <DesktopCarousel />
    <LaptopSection />
    <GamingComputerSection />
    <PowerBatteryBackupSection />
    <DataRecoveryEstimator />
    <AIAssistant />
    <Testimonials />
    <Contact />
    <Newsletter />
  </div>
</section>

<style>
  .main-content {
    padding: 60px 20px;
    background-color: #f8f9fa;
  }

  .container {
    max-width: 1200px;
    margin: 0 auto;
  }
</style>
