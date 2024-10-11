<script>
  const tablets = [
    {
      name: "Apple iPad 7th Gen 10.2″",
      price: 399.00,
      originalPrice: 499.00,
      sale: true
    },
    {
      name: "MICROSOFT SURFACE BOOK",
      price: 1175.00,
      sale: false
    },
    {
      name: "NEW MICROSOFT SURFACE PRO 5",
      price: 1149.00,
      originalPrice: 1300.00,
      sale: true
    },
    {
      name: "NUVISION ENCITEBOOK 12 PLUS",
      price: 225.00,
      originalPrice: 299.00,
      sale: true
    }
  ];
</script>

<section class="tablet-section">
  <h2>Tablets</h2>
  <div class="tablet-grid">
    {#each tablets as tablet}
      <div class="tablet-item">
        <img src="/images/placeholder.jpg" alt={tablet.name} />
        <h3>{tablet.name}</h3>
        {#if tablet.sale}
          <p class="price sale">
            <span class="original-price">${tablet.originalPrice.toFixed(2)}</span>
            <span class="current-price">${tablet.price.toFixed(2)}</span>
          </p>
        {:else}
          <p class="price">${tablet.price.toFixed(2)}</p>
        {/if}
        {#if tablet.sale}
          <span class="sale-tag">Sale!</span>
        {/if}
      </div>
    {/each}
  </div>
</section>

<style>
  .tablet-section {
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

  .tablet-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    gap: 1rem;
  }

  .tablet-item {
    background-color: #2a2a2a;
    border-radius: 8px;
    padding: 1rem;
    text-align: center;
    position: relative;
    transition: transform 0.3s ease;
  }

  .tablet-item:hover {
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
    .tablet-grid {
      grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
    }
  }
</style>
