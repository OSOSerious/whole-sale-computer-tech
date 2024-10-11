<script>
  let desktops = [
    { name: 'DELL ALL IN ONE 9010', price: 399.00, originalPrice: 599.00, image: '/images/dell-all-in-one-9010.jpg', sale: true },
    { name: 'DELL i5 QUAD-CORE 8GIG 250 GIG SFF', price: 299.00, image: '/images/dell-i5-quad-core.jpg' },
    { name: 'DELL OPTIPLEX 390 SFF', price: 299.00, image: '/images/dell-optiplex-390-sff.jpg' },
    { name: 'DELL OPTIPLEX 7010 SFF', price: 349.00, originalPrice: 599.00, image: '/images/dell-optiplex-7010-sff.jpg', sale: true },
    { name: 'DELL OPTIPLEX 7010 SFF', price: 299.00, originalPrice: 399.00, image: '/images/dell-optiplex-7010-sff-2.jpg', sale: true },
    { name: 'DELL OPTIPLEX 7010 SFF', price: 299.00, image: '/images/dell-optiplex-7010-sff-3.jpg' },
    { name: 'DELL OPTIPLEX 790 MT', price: 299.00, image: '/images/dell-optiplex-790-mt.jpg' },
    { name: 'DELL OPTIPLEX 980 SFF', price: 199.00, image: '/images/dell-optiplex-980-sff.jpg' },
    { name: 'DELL OPTIPLEX 990 MT', price: 399.00, image: '/images/dell-optiplex-990-mt.jpg' },
    { name: 'DELL POWEREDGE T30 MT', price: 795.00, image: '/images/dell-poweredge-t30-mt.jpg' },
    { name: 'HP 6200 PRO SFF DT', price: 299.00, image: '/images/hp-6200-pro-sff-dt.jpg' },
    { name: 'HP ELITEDESK 800 G1 MINI', price: 499.00, image: '/images/hp-elitedesk-800-g1-mini.jpg' },
    { name: 'HP PRODESK 600 G1 SFF', price: 425.00, originalPrice: 550.00, image: '/images/hp-prodesk-600-g1-sff.jpg', sale: true },
    { name: 'HP PRODESK 600 G1 SFF', price: 299.00, image: '/images/hp-prodesk-600-g1-sff-2.jpg' },
    { name: 'LENOVO THINKCENTRE AIO', price: 175.00, image: '/images/lenovo-thinkcentre-aio.jpg' },
    { name: 'LENOVO THINKCENTRE M90N-1 NANO', price: 550.00, originalPrice: 750.00, image: '/images/lenovo-thinkcentre-m90n-1-nano.jpg', sale: true },
    { name: 'LENOVO THINKCENTRE M90p', price: 299.00, image: '/images/lenovo-thinkcentre-m90p.jpg' },
    { name: 'LENOVO THINKCENTRE M92Z ALL IN ONE', price: 450.00, originalPrice: 599.00, image: '/images/lenovo-thinkcentre-m92z-all-in-one.jpg', sale: true },
    { name: 'LENOVO THINKCENTRE SFF DT', price: 299.00, image: '/images/lenovo-thinkcentre-sff-dt.jpg' },
    { name: 'LG 26″ LED HDTV', price: 80.00, image: '/images/lg-26-led-hdtv.jpg' },
    { name: 'OPTIPLEX DUAL CORE DESKTOP SALE!', price: 99.00, originalPrice: 299.00, image: '/images/optiplex-dual-core-desktop.jpg', sale: true }
  ];
</script>

<section class="desktop-section">
  <h2>Desktop Computers</h2>
  <div class="desktop-grid">
    {#each desktops as desktop}
      <div class="desktop-item">
        <img src={desktop.image} alt={desktop.name} />
        <h3>{desktop.name}</h3>
        {#if desktop.sale}
          <p class="price sale">
            <span class="original-price">${desktop.originalPrice.toFixed(2)}</span>
            <span class="current-price">${desktop.price.toFixed(2)}</span>
          </p>
        {:else}
          <p class="price">${desktop.price.toFixed(2)}</p>
        {/if}
        {#if desktop.sale}
          <span class="sale-tag">Sale!</span>
        {/if}
      </div>
    {/each}
  </div>
</section>

<style>
  .desktop-section {
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

  .desktop-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    gap: 1rem;
  }

  .desktop-item {
    background-color: #2a2a2a;
    border-radius: 8px;
    padding: 1rem;
    text-align: center;
    position: relative;
    transition: transform 0.3s ease;
  }

  .desktop-item:hover {
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
    .desktop-grid {
      grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
    }
  }
</style>
