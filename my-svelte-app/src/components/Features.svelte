<script>
  const features = [
    {
      title: "High-Quality Refurbished Products",
      description: "Our refurbished devices are meticulously tested and certified to ensure top performance and reliability, giving you the best value for your investment."
    },
    {
      title: "Expert Data Recovery",
      description: "With state-of-the-art technology and skilled technicians, we recover your valuable data from even the most challenging scenarios."
    },
    {
      title: "Comprehensive Tech Services",
      description: "From repairs and upgrades to secure VoIP services, we offer a full spectrum of technology solutions tailored to your needs."
    },
    {
      title: "Customer-Centric Approach",
      description: "We prioritize your satisfaction with personalized service, ensuring every interaction meets your highest expectations."
    }
  ];
</script>

<section id="features">
  <div class="container">
    <h2>Why Choose Us?</h2>
    <div class="feature-grid">
      {#each features as feature}
        <div class="feature">
          <h3>{feature.title}</h3>
          <p>{feature.description}</p>
        </div>
      {/each}
    </div>
  </div>
</section>

<style>
  #features {
    background-color: #1c1c1c;
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

  .feature-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 30px;
  }

  .feature {
    background-color: #2a2a2a;
    padding: 30px;
    border-radius: 10px;
    transition: transform 0.3s ease, background-color 0.3s ease;
  }

  .feature:hover {
    transform: translateY(-10px);
    background-color: #333;
  }

  h3 {
    font-size: 1.8em;
    margin-bottom: 15px;
    color: #e0c68c;
  }

  p {
    font-size: 1em;
    color: #ddd;
    line-height: 1.6;
  }

  @media (max-width: 768px) {
    h2 {
      font-size: 2em;
    }

    h3 {
      font-size: 1.5em;
    }

    .feature-grid {
      grid-template-columns: 1fr;
    }
  }
</style>
