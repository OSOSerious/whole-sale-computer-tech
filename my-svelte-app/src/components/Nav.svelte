<script>
  let isMenuOpen = false;

  function toggleMenu() {
    isMenuOpen = !isMenuOpen;
  }

  function handleKeydown(event) {
    if (event.key === 'Enter' || event.key === ' ') {
      toggleMenu();
    }
  }
</script>

<nav>
  <div class="container">
    <div class="logo">
      <a href="/"><h1>Wholesale Computer Tech</h1></a>
    </div>
    <div class="menu-toggle" on:click={toggleMenu} on:keydown={handleKeydown} tabindex="0" role="button" aria-label="Toggle menu">&#9776;</div>
    <ul class:active={isMenuOpen}>
      <li><a href="#about" on:click={toggleMenu}>About</a></li>
      <li><a href="#statistics" on:click={toggleMenu}>Statistics</a></li>
      <li><a href="#products" on:click={toggleMenu}>Products</a></li>
      <li><a href="#services" on:click={toggleMenu}>Services</a></li>
      <li><a href="#features" on:click={toggleMenu}>Features</a></li>
      <li><a href="#ai-assistant" on:click={toggleMenu}>AI Assistant</a></li>
      <li><a href="#voip-service" on:click={toggleMenu}>VoIP Services</a></li>
      <li><a href="#partners" on:click={toggleMenu}>Partners</a></li>
      <li><a href="#testimonials" on:click={toggleMenu}>Testimonials</a></li>
      <li><a href="#contact" on:click={toggleMenu}>Contact</a></li>
    </ul>
  </div>
</nav>

<style>
  /* ... (keep the existing styles) ... */
</style>
