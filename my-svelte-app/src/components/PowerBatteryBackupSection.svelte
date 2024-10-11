<script>
  let formData = {
    name: '',
    email: '',
    phone: '',
    subject: '',
    equipment: '',
    runtime: '',
    mountType: '',
    plugType: [],
    message: ''
  };

  function handleSubmit() {
    // Handle form submission here
    console.log(formData);
    // You would typically send this data to a server
  }
</script>

<section class="power-battery-backup">
  <h2>Power Battery Backups</h2>
  <h3>UPS Services</h3>
  <h4>PREVENTIVE MAINTENANCE, REPAIRS, AND BATTERIES</h4>

  <p>At Wholesale Computers & Technology, we are happy to offer you a new line of products to protect your computers and other equipment investments.</p>

  <p>We offer many options to add battery backups to your home or office.</p>

  <p>From an assortment of UPSes for computers and network IT systems to turnkey solutions with installation, circuitry check, grounding and over current protection.</p>

  <p>We can even offer you Emergency Rental Systems.</p>

  <p>Our systems are completely re-certified. They all have brand new batteries and all of them come with a 15-month warranty.</p>

  <h4>Some of our new services include:</h4>
  <ul>
    <li>Repairs OnSite</li>
    <li>UPS trades for newer models</li>
    <li>Surge suppression equipment</li>
    <li>Custom designed solutions for your enterprise</li>
    <li>Battery Replacement</li>
    <li>Most smaller UPSs have sets of batteries in a tray or case. We offer a complete plug-and-play solution</li>
    <li>For larger UPS systems, we assemble large batteries onsite and recalibrate the equipment</li>
  </ul>

  <h4>Some of our Brands, Models, Comments & Pricing</h4>
  <ul>
    <li>APC – BR1300LCD – Better Quality LCD Brick UPS – $69</li>
    <li>APC – SUA1000R2X180 – Server Grade UPS w/mgmt card – $349</li>
    <li>APC – SU1400RMXLB3UNC – Extended Run Server UPS w/mgmt card – $399</li>
    <li>APC – SUA3000R2X428 – 3kva UPS System w/mgmt card – $695</li>
    <li>APC – SUA2200XL – Extended Run Tower Unit for many apps – $795</li>
    <li>APC – SURT6KRMXL3U-TF5 – 6kva Dual Voltage Online UPS – $1895</li>
  </ul>

  <h3>Battery Backups</h3>
  <h4>Computers And Network IT Systems</h4>
  <p>Give us a call at 954-633-5353 or fill out the form below to request more information</p>

  <form on:submit|preventDefault={handleSubmit}>
    <div class="form-group">
      <input type="text" bind:value={formData.name} placeholder="Name" required>
    </div>
    <div class="form-group">
      <input type="email" bind:value={formData.email} placeholder="Email Address" required>
    </div>
    <div class="form-group">
      <input type="tel" bind:value={formData.phone} placeholder="Phone Number" required>
    </div>
    <div class="form-group">
      <input type="text" bind:value={formData.subject} placeholder="Subject" required>
    </div>
    <div class="form-group">
      <textarea bind:value={formData.equipment} placeholder="List equipment you'd like to protect" required></textarea>
    </div>
    <div class="form-group">
      <input type="text" bind:value={formData.runtime} placeholder="How much runtime do you need?" required>
    </div>
    <div class="form-group">
      <p>Do you need a:</p>
      <label>
        <input type="radio" bind:group={formData.mountType} value="Rack-Mount" required>
        Rack-Mount
      </label>
      <label>
        <input type="radio" bind:group={formData.mountType} value="Tower-Style" required>
        Tower-Style
      </label>
    </div>
    <div class="form-group">
      <p>Which Plugs do you have? (see Graphic above)</p>
      <label><input type="checkbox" bind:group={formData.plugType} value="515R"> 515R</label>
      <label><input type="checkbox" bind:group={formData.plugType} value="520R"> 520R</label>
      <label><input type="checkbox" bind:group={formData.plugType} value="L520R"> L520R</label>
      <label><input type="checkbox" bind:group={formData.plugType} value="L530R"> L530R</label>
      <label><input type="checkbox" bind:group={formData.plugType} value="L630R"> L630R</label>
      <label><input type="checkbox" bind:group={formData.plugType} value="Panel"> Panel</label>
    </div>
    <div class="form-group">
      <textarea bind:value={formData.message} placeholder="Message" required></textarea>
    </div>
    <div class="form-group">
      <button type="submit">SEND</button>
    </div>
  </form>
</section>

<style>
  .power-battery-backup {
    margin: 2rem 0;
    padding: 1rem;
    background-color: #1e1e1e;
    color: #ffffff;
  }

  h2, h3, h4 {
    color: #b9975b;
  }

  ul {
    list-style-type: none;
    padding-left: 0;
  }

  .form-group {
    margin-bottom: 1rem;
  }

  input, textarea {
    width: 100%;
    padding: 0.5rem;
    border: 1px solid #b9975b;
    background-color: #2a2a2a;
    color: #ffffff;
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
