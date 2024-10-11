<script>
  const partners = [
    { name: "Dell Partner", description: "Partnered with Dell to provide top-quality products." },
    { name: "HP Partner", description: "Collaborating with HP for exceptional services." },
    { name: "Lenovo Partner", description: "Official Lenovo partner for reliable solutions." },
    { name: "Microsoft Partner", description: "Certified Microsoft partner for advanced technologies." }
  ];
</script>

<section id="certified-partners">
  <div class="container">
    <h2>We Are Certified Partners</h2>
    <div class="partners-grid">
      {#each partners as partner}
        <div class="partner">
          <h3>{partner.name}</h3>
          <p>🤝 {partner.description}</p>
        </div>
      {/each}
    </div>
  </div>
</section>

<style>
  #certified-partners {
    background-color: #2a2a2a;
    padding: 60px 20px;
  }

  .container {
    max-width: 1200px;
    margin: 0 auto;
  }

  h2 {
    font-size: 2.5em;
    color: #b9975b;
    margin-bottom: 30px;
    text-align: center;
  }

  .partners-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 20px;
  }

  .partner {
    background-color: #1c1c1c;
    padding: 20px;
    border-radius: 10px;
    text-align: center;
  }

  h3 {
    font-size: 1.5em;
    color: #e0c68c;
    margin-bottom: 10px;
  }

  p {
    font-size: 1em;
    color: #ddd;
  }

  @media (max-width: 768px) {
    h2 {
      font-size: 2em;
    }

    h3 {
      font-size: 1.3em;
    }

    p {
      font-size: 0.9em;
    }
  }
</style>
