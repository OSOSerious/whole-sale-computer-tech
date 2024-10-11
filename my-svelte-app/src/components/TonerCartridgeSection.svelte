<script>
  let formData = {
    name: '',
    email: '',
    phone: '',
    printerBrand: '',
    modelNumber: '',
    captcha: ''
  };

  function handleSubmit() {
    // Handle form submission here
    console.log(formData);
    // You would typically send this data to a server
  }
</script>

<section class="toner-cartridge">
  <h2>Toner Cartridges</h2>
  <h3>Get The Best Prices On All Laser Printer Cartridges</h3>
  
  <p>We have all types of toners for your laser printing needs at the lowest prices around.</p>
  <p>Just fill out the form below and one of our experts will ensure you get the right toner cartridges at the best prices.</p>

  <h4>Submit Your Toner Request Below</h4>

  <form on:submit|preventDefault={handleSubmit}>
    <div class="form-group">
      <input type="text" bind:value={formData.name} placeholder="Name" required>
    </div>
    <div class="form-group">
      <input type="email" bind:value={formData.email} placeholder="Email Address" required>
    </div>
    <div class="form-group">
      <input type="tel" bind:value={formData.phone} placeholder="Phone" required>
    </div>
    <div class="form-group">
      <select bind:value={formData.printerBrand} required>
        <option value="">Printer Brand</option>
        <option value="HP">HP</option>
        <option value="Canon">Canon</option>
        <option value="Epson">Epson</option>
        <option value="Brother">Brother</option>
        <!-- Add more printer brands as needed -->
      </select>
    </div>
    <div class="form-group">
      <input type="text" bind:value={formData.modelNumber} placeholder="Model Number" required>
    </div>
    <div class="form-group captcha">
      <label for="captcha">12 + 3 =</label>
      <input type="number" id="captcha" bind:value={formData.captcha} required>
    </div>
    <div class="form-group">
      <button type="submit">SEND</button>
    </div>
  </form>
</section>

<style>
  .toner-cartridge {
    margin: 2rem 0;
    padding: 1rem;
    background-color: #1e1e1e;
    color: #ffffff;
  }

  h2 {
    font-size: 2.5rem;
    text-align: center;
    color: #b9975b;
  }

  h3, h4 {
    color: #b9975b;
  }

  .form-group {
    margin-bottom: 1rem;
  }

  input, select {
    width: 100%;
    padding: 0.5rem;
    border: 1px solid #b9975b;
    background-color: #2a2a2a;
    color: #ffffff;
  }

  .captcha {
    display: flex;
    align-items: center;
  }

  .captcha label {
    margin-right: 1rem;
  }

  .captcha input {
    width: 100px;
  }

  button {
    background-color: #b9975b;
    color: #1e1e1e;
    border: none;
    padding: 0.5rem 1rem;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  button:hover {
    background-color: #e0c68c;
  }
</style>
