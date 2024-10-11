<script>
  const features = [
    "Reliable Communication: Ensure uninterrupted communication with our stable and secure VoIP solutions.",
    "Cost-Effective Plans: Choose from a variety of plans that fit your budget without compromising on quality.",
    "Advanced Features: Access features like call forwarding, voicemail, conference calling, and more to streamline your business operations.",
    "Scalable Solutions: Our VoIP services are scalable, allowing your communication system to grow with your business.",
    "Professional Support: Receive dedicated support from our team of experts to set up and maintain your VoIP system."
  ];
</script>

<section id="voip-service">
  <div class="container">
    <h2>VoIP Phone Service</h2>
    <p>Enhance your business communication with our comprehensive VoIP Phone Services. We offer a full line of VoIP phones and services designed to provide reliable, cost-effective, and high-quality communication solutions tailored to your business needs.</p>
    <ul>
      {#each features as feature}
        <li>{feature}</li>
      {/each}
    </ul>
  </div>
</section>

<style>
  #voip-service {
    background-color: #1c1c1c;
    padding: 60px 20px;
  }

  .container {
    max-width: 1000px;
    margin: 0 auto;
  }

  h2 {
    font-size: 2.5em;
    color: #b9975b;
    margin-bottom: 30px;
    text-align: center;
  }

  p {
    font-size: 1.1em;
    color: #ddd;
    line-height: 1.6;
    margin-bottom: 20px;
  }

  ul {
    list-style-type: none;
    padding: 0;
  }

  li {
    color: #ddd;
    margin-bottom: 15px;
    padding-left: 25px;
    position: relative;
    font-size: 1.1em;
  }

  li::before {
    content: "✓";
    color: #b9975b;
    position: absolute;
    left: 0;
  }

  @media (max-width: 768px) {
    h2 {
      font-size: 2em;
    }

    p, li {
      font-size: 1em;
    }
  }
</style>
