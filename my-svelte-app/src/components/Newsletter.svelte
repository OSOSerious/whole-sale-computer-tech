<script>
  let firstName = '';
  let lastName = '';
  let email = '';
  let phone = '';

  function handleSubmit() {
    // Add logic to handle form submission
    console.log('Newsletter form submitted', { firstName, lastName, email, phone });
    // Reset form fields
    firstName = lastName = email = phone = '';
  }
</script>

<section id="newsletter">
  <div class="container">
    <h2>Subscribe to Our Exclusive Newsletter</h2>
    <form on:submit|preventDefault={handleSubmit}>
      <input type="text" bind:value={firstName} placeholder="First Name" required>
      <input type="text" bind:value={lastName} placeholder="Last Name" required>
      <input type="email" bind:value={email} placeholder="Email Address" required>
      <input type="tel" bind:value={phone} placeholder="Phone Number" required>
      <button type="submit">Subscribe</button>
    </form>
    <p>Stay updated with the latest deals, product launches, and expert tech tips directly to your inbox.</p>
  </div>
</section>

<style>
  #newsletter {
    background-color: #2a2a2a;
    padding: 60px 20px;
    text-align: center;
  }

  h2 {
    font-size: 2.5em;
    margin-bottom: 30px;
    color: #b9975b;
    letter-spacing: 1px;
  }

  form {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 20px;
    margin-bottom: 20px;
  }

  input {
    padding: 15px;
    border: none;
    border-radius: 5px;
    width: 220px;
    font-size: 1em;
    background-color: #3a3a3a;
    color: #fff;
  }

  input::placeholder {
    color: #ccc;
  }

  button {
    padding: 15px 30px;
    background-color: #b9975b;
    border: none;
    border-radius: 5px;
    color: #1c1c1c;
    font-size: 1em;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  button:hover {
    background-color: #e0c68c;
  }

  p {
    font-size: 1em;
    color: #ddd;
    max-width: 800px;
    margin: 0 auto;
  }

  @media (max-width: 768px) {
    form {
      flex-direction: column;
      align-items: center;
    }

    input, button {
      width: 80%;
      max-width: 300px;
    }
  }
</style>
