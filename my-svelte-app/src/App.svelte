<script>
  import Nav from './components/Nav.svelte';
  import Header from './components/Header.svelte';
  import Hero from './components/Hero.svelte';
  import MainContent from './components/MainContent.svelte';
  import Footer from './components/Footer.svelte';
  import ChatBot from './components/ChatBot.svelte';
</script>

<main>
  <Nav />
  <Header />
  <Hero />
  <MainContent />
  <Footer />
  <ChatBot />
</main>

<style>
  :global(body) {
    margin: 0;
    padding: 0;
    font-family: 'Roboto', sans-serif;
    line-height: 1.6;
    color: #212529;
    background-color: #f8f9fa;
  }

  :global(*) {
    box-sizing: border-box;
  }

  :global(a) {
    color: #007bff;
    text-decoration: none;
  }

  :global(a:hover) {
    color: #0056b3;
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
