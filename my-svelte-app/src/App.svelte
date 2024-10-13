<script>
  import Nav from './components/Nav.svelte';
  import Header from './components/Header.svelte';
  import Hero from './components/Hero.svelte';
  import DesktopCarousel from './components/DesktopCarousel.svelte';
  import LaptopSection from './components/LaptopSection.svelte';
  import ServerSection from './components/ServerSection.svelte';
  import TabletSection from './components/TabletSection.svelte';
  import GamingComputerSection from './components/GamingComputerSection.svelte';
  import PowerBatteryBackupSection from './components/PowerBatteryBackupSection.svelte';
  import TonerCartridgeSection from './components/TonerCartridgeSection.svelte';
  import Statistics from './components/Statistics.svelte';
  import Newsletter from './components/Newsletter.svelte';
  import DataRecoveryEstimator from './components/DataRecoveryEstimator.svelte';
  import ProductsSales from './components/ProductsSales.svelte';
  import Features from './components/Features.svelte';
  import VoIPService from './components/VoIPService.svelte';
  import CertifiedPartners from './components/CertifiedPartners.svelte';
  import Testimonials from './components/Testimonials.svelte';
  import Contact from './components/Contact.svelte';
  import Footer from './components/Footer.svelte';
  import ChatBot from './components/ChatBot.svelte';
</script>

<main>
  <Nav />
  <Header />
  <Hero />
  <DesktopCarousel />
  <LaptopSection />
  <ServerSection />
  <TabletSection />
  <GamingComputerSection />
  <PowerBatteryBackupSection />
  <TonerCartridgeSection />
  <Statistics />
  <Newsletter />
  <DataRecoveryEstimator />
  <ProductsSales />
  <Features />
  <VoIPService />
  <CertifiedPartners />
  <Testimonials />
  <Contact />
  <Footer />
  <ChatBot />
</main>

<style>
  :global(body) {
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    line-height: 1.6;
    color: #ffffff;
    background-color: #121212;
  }

  :global(*) {
    box-sizing: border-box;
  }

  :global(a) {
    color: #b9975b;
    text-decoration: none;
  }

  :global(a:hover) {
    color: #e0c68c;
  }

  main {
    width: 100%;
    max-width: 1200px;
    margin: 0 auto;
    position: relative;
  }

  @media (max-width: 1200px) {
    main {
      width: 95%;
    }
  }
</style>
