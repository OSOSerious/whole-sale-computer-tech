<script>
  const servers = [
    {
      name: "DELL POWEREDGE R430 1U",
      price: 2495.00,
      originalPrice: 2795.00,
      sale: true
    },
    {
      name: "DELL POWEREDGE R620 1U",
      price: 1350.00,
      originalPrice: 1500.00,
      sale: true
    },
    {
      name: "DELL POWEREDGE T30 MT",
      price: 795.00,
      originalPrice: 995.00,
      sale: true
    },
    {
      name: "DELL PRECISION T3500",
      price: 649.00,
      originalPrice: 895.00,
      sale: true
    },
    {
      name: "POWEREDGE T410 SERVER",
      price: 695.00,
      originalPrice: 795.00,
      sale: true
    }
  ];
</script>

<section class="server-section">
  <h2>Computer Servers</h2>
  <p class="description">
    We have a great range of Computer Servers from the most popular brands. We offer wholesale computers and repair services in Ft Lauderdale. Contact us at 954.633.5353
  </p>
  <div class="server-grid">
    {#each servers as server}
      <div class="server-item">
        <img src="/images/placeholder.jpg" alt={server.name} />
        <h3>{server.name}</h3>
        <p class="price sale">
          <span class="original-price">${server.originalPrice.toFixed(2)}</span>
          <span class="current-price">${server.price.toFixed(2)}</span>
        </p>
        {#if server.sale}
          <span class="sale-tag">Sale!</span>
        {/if}
      </div>
    {/each}
  </div>
</section>

<style>
  .server-section {
    margin: 2rem 0;
    padding: 1rem;
    background-color: #1e1e1e;
    color: #ffffff;
  }

  h2 {
    text-align: center;
    margin-bottom: 1rem;
    color: #b9975b;
  }

  .description {
    text-align: center;
    margin-bottom: 2rem;
    max-width: 800px;
    margin-left: auto;
    margin-right: auto;
  }

  .server-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    gap: 1rem;
  }

  .server-item {
    background-color: #2a2a2a;
    border-radius: 8px;
    padding: 1rem;
    text-align: center;
    position: relative;
    transition: transform 0.3s ease;
  }

  .server-item:hover {
    transform: translateY(-5px);
  }

  img {
    max-width: 100%;
    height: auto;
    border-radius: 4px;
  }

  h3 {
    color: #b9975b;
    margin: 0.5rem 0;
    font-size: 1rem;
  }

  .price {
    font-weight: bold;
    color: #ffffff;
  }

  .price.sale .original-price {
    text-decoration: line-through;
    color: #888;
    margin-right: 0.5rem;
    font-size: 0.9rem;
  }

  .price.sale .current-price {
    color: #ff4136;
  }

  .sale-tag {
    position: absolute;
    top: 10px;
    right: 10px;
    background-color: #ff4136;
    color: #ffffff;
    padding: 0.25rem 0.5rem;
    border-radius: 3px;
    font-size: 0.8rem;
    font-weight: bold;
  }

  @media (max-width: 768px) {
    .server-grid {
      grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
    }
  }
</style>
