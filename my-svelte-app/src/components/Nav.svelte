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

  function scrollToSection(sectionId) {
    const section = document.getElementById(sectionId);
    if (section) {
      section.scrollIntoView({ behavior: 'smooth' });
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
      <li><a href="#" on:click|preventDefault={() => scrollToSection('about')}>About</a></li>
      <li><a href="#" on:click|preventDefault={() => scrollToSection('products')}>Products</a></li>
      <li><a href="#" on:click|preventDefault={() => scrollToSection('services')}>Services</a></li>
      <li><a href="#" on:click|preventDefault={() => scrollToSection('ai-assistant')}>AI Assistant</a></li>
      <li><a href="#" on:click|preventDefault={() => scrollToSection('partners')}>Partners</a></li>
      <li><a href="#" on:click|preventDefault={() => scrollToSection('testimonials')}>Testimonials</a></li>
      <li><a href="#" on:click|preventDefault={() => scrollToSection('contact')}>Contact</a></li>
    </ul>
  </div>
</nav>

<style>
  nav {
    background-color: #1a1a1a;
    padding: 20px 0;
    position: sticky;
    top: 0;
    z-index: 100;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    max-width: 1200px;
    margin: 0 auto;
    width: 100%;
  }

  .logo a {
    color: #b9975b;
    text-decoration: none;
    font-size: 1.8em;
    font-weight: bold;
  }

  .menu-toggle {
    color: #e0c68c;
    font-size: 24px;
    cursor: pointer;
    display: none;
  }

  ul {
    display: flex;
    list-style: none;
    margin: 0;
    padding: 0;
  }

  ul li {
    margin: 0 20px;
  }

  ul li a {
    color: #e0c68c;
    text-decoration: none;
    font-size: 1.1em;
    font-weight: 500;
    padding: 10px;
    transition: color 0.3s ease;
  }

  ul li a:hover {
    color: #b9975b;
  }

  @media (max-width: 768px) {
    .menu-toggle {
      display: block;
    }

    ul {
      display: none;
      flex-direction: column;
      background-color: #1a1a1a;
      padding: 20px;
      position: absolute;
      top: 70px;
      left: 0;
      right: 0;
    }

    ul.active {
      display: flex;
    }

    ul li {
      margin: 0 0 15px;
    }

    ul li a {
      font-size: 1em;
    }
  }
</style>
