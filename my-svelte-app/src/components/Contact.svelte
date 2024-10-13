<script>
  let name = '';
  let email = '';
  let message = '';

  async function handleSubmit(event) {
    event.preventDefault();
    
    const formData = {
      form_type: 'contact',
      data: { name, email, message }
    };

    try {
      const response = await fetch('http://localhost:4000/api/form_submissions', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ form_submission: formData }),
      });

      if (response.ok) {
        alert('Thank you for your message. We will get back to you soon!');
        name = '';
        email = '';
        message = '';
      } else {
        alert('There was an error submitting your message. Please try again.');
      }
    } catch (error) {
      console.error('Error:', error);
      alert('There was an error submitting your message. Please try again.');
    }
  }
</script>

<section id="contact">
  <div class="container">
    <h2>Contact Us</h2>
    <div class="contact-info">
      <div class="info-item">
        <i class="fas fa-map-marker-alt"></i>
        <p>5784 Powerline Rd, Fort Lauderdale, FL 33309</p>
      </div>
      <div class="info-item">
        <i class="fas fa-phone-alt"></i>
        <p><a href="tel:+19546335353">954.633.5353</a></p>
      </div>
      <div class="info-item">
        <i class="fas fa-envelope"></i>
        <p><a href="mailto:contact@wholesalecomputertech.com">contact@wholesalecomputertech.com</a></p>
      </div>
    </div>
    <form on:submit={handleSubmit} class="contact-form">
      <input type="text" bind:value={name} placeholder="Your Name" required>
      <input type="email" bind:value={email} placeholder="Your Email" required>
      <textarea bind:value={message} placeholder="Your Message" required></textarea>
      <button type="submit">Send Message</button>
    </form>
    <div class="additional-info">
      <h3>Our Services</h3>
      <ul>
        <li>High-quality refurbished laptops, desktops, servers, and tablets</li>
        <li>Mac-authorized repair services, hard drive upgrades, and backup disaster recovery devices</li>
        <li>VoIP phone services and comprehensive computer accessories</li>
        <li>Expert computer repair and data recovery services</li>
      </ul>
      <p>Visit our store or reach out to us to explore our offerings and find the perfect technology solutions for your needs.</p>
    </div>
  </div>
</section>

<style>
  #contact {
    padding: 80px 20px;
    background-color: #2e2e2e;
    text-align: center;
  }

  .container {
    max-width: 1000px;
    margin: 0 auto;
  }

  h2 {
    font-size: 36px;
    font-weight: bold;
    margin-bottom: 40px;
    color: #b9975b;
  }

  .contact-info {
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
    margin-bottom: 60px;
  }

  .info-item {
    display: flex;
    align-items: center;
    margin: 20px;
  }

  .info-item i {
    font-size: 24px;
    color: #e0c68c;
    margin-right: 10px;
  }

  .info-item p {
    font-size: 18px;
    margin: 0;
    color: #ddd;
  }

  .info-item a {
    color: #e0c68c;
    text-decoration: none;
  }

  .contact-form {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-bottom: 60px;
  }

  .contact-form input,
  .contact-form textarea {
    width: 100%;
    max-width: 500px;
    margin-bottom: 20px;
    padding: 10px;
    border: none;
    border-radius: 5px;
    background-color: #1c1c1c;
    color: #ddd;
  }

  .contact-form textarea {
    height: 150px;
    resize: vertical;
  }

  .contact-form button {
    padding: 10px 20px;
    background-color: #b9975b;
    color: #1c1c1c;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 18px;
    font-weight: bold;
    transition: background-color 0.3s ease;
  }

  .contact-form button:hover {
    background-color: #e0c68c;
  }

  .additional-info {
    background-color: #1c1c1c;
    padding: 40px;
    border-radius: 10px;
  }

  .additional-info h3 {
    font-size: 24px;
    font-weight: bold;
    margin-bottom: 20px;
    color: #b9975b;
  }

  .additional-info ul {
    text-align: left;
    margin-bottom: 30px;
  }

  .additional-info li {
    font-size: 18px;
    margin-bottom: 10px;
    color: #ddd;
  }

  .additional-info p {
    font-size: 18px;
    margin-bottom: 0;
    color: #ddd;
  }

  @media (max-width: 768px) {
    h2 {
      font-size: 30px;
    }

    .info-item,
    .additional-info li,
    .additional-info p {
      font-size: 16px;
    }

    .additional-info h3 {
      font-size: 20px;
    }
  }
</style>
