<script>
  const gamingComponents = [
    { name: "AMD Ryzen 9 5950X", category: "CPU", price: 749.99 },
    { name: "Intel Core i9-11900K", category: "CPU", price: 539.99 },
    { name: "NVIDIA GeForce RTX 3080", category: "GPU", price: 699.99 },
    { name: "AMD Radeon RX 6800 XT", category: "GPU", price: 649.99 },
    { name: "ASUS ROG Strix X570-E Gaming", category: "Motherboard", price: 299.99 },
    { name: "MSI MPG Z590 Gaming Edge WiFi", category: "Motherboard", price: 269.99 },
    { name: "Corsair Vengeance RGB Pro 32GB", category: "RAM", price: 189.99 },
    { name: "G.Skill Trident Z Neo 64GB", category: "RAM", price: 349.99 },
    { name: "NZXT H710i", category: "Case", price: 169.99 },
    { name: "Lian Li PC-O11 Dynamic", category: "Case", price: 149.99 },
    { name: "Samsung 970 EVO Plus 1TB", category: "Storage", price: 159.99 },
    { name: "Corsair RM850x", category: "Power Supply", price: 144.99 },
  ];
</script>

<section class="gaming-computer">
  <h2>Gaming Computers</h2>
  <h3>Level Up Your Gaming Experience with Ehnace</h3>
  
  <p>Are you ready to elevate your gaming adventures to new heights? Look no further than Ehnace! We introduce our cutting-edge gaming computers that will revolutionize your gameplay and immerse you in a world of unparalleled excitement.</p>

  <h4>Dominate the Virtual Realms with Ehnace Gaming PCs</h4>
  <p>Get ready to conquer virtual worlds with lightning-fast speed, jaw-dropping graphics, and seamless performance. Ehnace gaming computers are meticulously crafted to deliver an unrivaled gaming experience like no other.</p>

  <h4>Top Gaming Components</h4>
  <div class="component-grid">
    {#each gamingComponents as component}
      <div class="component-item">
        <h5>{component.name}</h5>
        <p class="category">{component.category}</p>
        <p class="price">${component.price.toFixed(2)}</p>
      </div>
    {/each}
  </div>

  <h4>Unparalleled Performance for an Unforgettable Gaming Experience</h4>
  <p>Equipped with the latest and most powerful hardware components, Ehnace gaming PCs ensure that not a single detail goes unnoticed. Immerse yourself in lifelike worlds where vibrant colors pop, textures come to life, and every movement feels incredibly smooth.</p>

  <h4>Sleek Design with Customizable RGB Lighting</h4>
  <p>Our gaming computers boast sleek and modern designs, infused with customizable RGB lighting to match your unique style. With mesmerizing lighting effects that sync with your every move, you'll create an ambiance that enhances your gaming environment.</p>

  <h4>Future-Proof Your Gaming Rig with Ehnace</h4>
  <p>With easily upgradeable components, you can stay ahead of the curve and future-proof your gaming rig. Unlock new possibilities, conquer new challenges, and stay on top of the ever-evolving gaming landscape with ease.</p>

  <h4>Precision and Perfection: Ehnace Meets Your Highest Standards</h4>
  <p>Experience ultimate protection with Ehnace! In the event of any issue, rest assured that you'll have direct access to the skilled technician who personally crafted your new rig. Our gaming desktops come with comprehensive one-year parts and labor coverage, ensuring your peace of mind.</p>

  <h4>Contact Ehnace Today for a Complimentary Consultation</h4>
  <p>Don't hesitate to call us now for a complimentary consultation! Have a tech problem? No problem at all!</p>

  <button>Get Your Custom Gaming PC Quote</button>
</section>

<style>
  .gaming-computer {
    margin: 2rem 0;
    padding: 1rem;
    background-color: #1e1e1e;
    color: #ffffff;
  }

  h2, h3, h4, h5 {
    color: #b9975b;
  }

  .component-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    gap: 1rem;
    margin: 2rem 0;
  }

  .component-item {
    background-color: #2a2a2a;
    border-radius: 8px;
    padding: 1rem;
    text-align: center;
    transition: transform 0.3s ease;
  }

  .component-item:hover {
    transform: translateY(-5px);
  }

  .category {
    color: #b9975b;
    font-style: italic;
  }

  .price {
    font-weight: bold;
    color: #4CAF50;
  }

  button {
    background-color: #b9975b;
    color: #1e1e1e;
    border: none;
    padding: 0.5rem 1rem;
    font-size: 1rem;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  button:hover {
    background-color: #e0c68c;
  }
</style>
