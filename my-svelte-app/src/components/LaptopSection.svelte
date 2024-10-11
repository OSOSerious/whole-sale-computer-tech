<script>
  let laptops = [
    { name: "DELL i5 13.3\" LAPTOP", price: 299.00, description: "Wholesale Laptop Computer - DELL LATITUDE 3450" },
    { name: "DELL LATITUDE E5470 14\" LAPTOP", price: 395.00, description: "DELL LATITUDE E5470 Laptop" },
    { name: "DELL LATITUDE E6330", price: 299.00, description: "Wholesale Computers DELL LATITUDE E6330" },
    { name: "Dell Latitude E6430", price: 299.00, description: "Wholesale Laptop Computer - Dell Latitude E6430" },
    { name: "DELL LATITUDE E6530", price: 375.00, description: "Wholesale Laptop Computers - DELL LATITUDE E6530" },
    { name: "DELL LATITUDE E7440", price: 499.00, description: "Wholesale Laptop Computers - DELL LATITUDE E7440" },
    { name: "DELL PRECISION M4800", price: 695.00, description: "Sale! DELL PRECISION M4800", originalPrice: 795.00 },
    { name: "LENOVO FLEX 6 Touchscreen 2-IN-1", price: 795.00, description: "Sale! Lenovo Flex Two in One Touch Screen laptop", originalPrice: 895.00 },
    { name: "LENOVO THINKPAD", price: 299.00, description: "Wholesale Laptop Computer - LENOVO THINKPAD" },
    { name: "LENOVO THINKPAD", price: 299.00, description: "Wholesale LENOVO THINKPAD" },
    { name: "NEW Lenovo 2-1 Laptop Tablet Combo", price: 695.00, description: "Sale! Lenovo 2 in 1 Laptop tablet Combo", originalPrice: 795.00 }
  ];
</script>

<section class="laptop-section">
  <h2>Laptop Computers</h2>
  <div class="laptop-grid">
    {#each laptops as laptop}
      <div class="laptop-item">
        <h3>{laptop.name}</h3>
        {#if laptop.originalPrice}
          <p class="price sale">
            <span class="original-price">${laptop.originalPrice.toFixed(2)}</span>
            <span class="current-price">${laptop.price.toFixed(2)}</span>
          </p>
        {:else}
          <p class="price">${laptop.price.toFixed(2)}</p>
        {/if}
        <p class="description">{laptop.description}</p>
        {#if laptop.originalPrice}
          <span class="sale-tag">Sale!</span>
        {/if}
      </div>
    {/each}
  </div>
</section>

<style>
  .laptop-section {
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

  .laptop-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    gap: 1rem;
  }

  .laptop-item {
    background-color: #2a2a2a;
    border-radius: 8px;
    padding: 1rem;
    text-align: center;
    position: relative;
    transition: transform 0.3s ease;
  }

  .laptop-item:hover {
    transform: translateY(-5px);
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

  .description {
    font-size: 0.9rem;
    color: #cccccc;
    margin-top: 0.5rem;
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
    .laptop-grid {
      grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
    }
  }
</style>
