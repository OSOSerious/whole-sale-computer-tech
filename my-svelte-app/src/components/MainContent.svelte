<script>
  let activeSection = 'about';

  function setActiveSection(section) {
    activeSection = section;
  }

  const sections = [
    {
      id: 'about',
      title: 'About Us',
      content: `Welcome to Wholesale Computer Tech – your premier destination for high-quality refurbished computers and expert technology services in Miami and Fort Lauderdale, FL. With over 15 years of experience, we pride ourselves on delivering top-notch products and unparalleled customer service.`
    },
    {
      id: 'services',
      title: 'Our Services',
      content: `We offer a wide range of services including:
      • Professional data recovery
      • Computer repair and maintenance
      • Custom PC building
      • IT consulting for businesses
      • Virus and malware removal
      Our team of certified technicians is equipped to handle all your tech needs with precision and care.`
    },
    {
      id: 'products',
      title: 'Our Products',
      content: `Discover our extensive inventory of refurbished computers:`,
      items: [
        { name: 'Laptops', image: '/images/product1.jpg', description: 'High-quality refurbished laptops from top brands' },
        { name: 'Desktops', image: '/images/product2.jpg', description: 'Powerful desktop computers for home and office use' },
        { name: 'Servers', image: '/images/product3.jpg', description: 'Reliable servers for small to medium-sized businesses' }
      ]
    }
  ];
</script>

<section class="main-content">
  <div class="container">
    <div class="section-tabs">
      {#each sections as section}
        <button
          class="tab-button"
          class:active={activeSection === section.id}
          on:click={() => setActiveSection(section.id)}
        >
          {section.title}
        </button>
      {/each}
    </div>
    
    {#each sections as section}
      {#if activeSection === section.id}
        <div class="section-content">
          <h2>{section.title}</h2>
          <p>{@html section.content}</p>
          {#if section.items}
            <div class="product-grid">
              {#each section.items as item}
                <div class="product-item">
                  <img src={item.image} alt={item.name} />
                  <h3>{item.name}</h3>
                  <p>{item.description}</p>
                </div>
              {/each}
            </div>
          {/if}
        </div>
      {/if}
    {/each}
  </div>
</section>

<style>
  /* Existing styles */

  .product-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 2rem;
    margin-top: 2rem;
  }

  .product-item {
    background-color: #ffffff;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    overflow: hidden;
    transition: transform 0.3s ease;
  }

  .product-item:hover {
    transform: translateY(-5px);
  }

  .product-item img {
    width: 100%;
    height: 200px;
    object-fit: cover;
  }

  .product-item h3 {
    font-size: 1.2rem;
    margin: 1rem;
  }

  .product-item p {
    font-size: 0.9rem;
    margin: 0 1rem 1rem;
    color: #666;
  }
</style>
