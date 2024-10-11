<script>
  let firstName = '';
  let lastName = '';
  let email = '';
  let phoneNumber = '';
  let companyName = '';
  let address = '';
  let city = '';
  let state = '';
  let zipCode = '';
  let referral = '';
  let manufacturer = '';
  let driveCapacity = '';
  let serialNumber = '';
  let message = '';
  let driveType = 'single';
  let dropped = false;
  let erased = false;
  let previousAttempt = false;
  let passwordProtected = false;
  let returnOption = 'provide';
  let captcha = '';

  function handleSubmit() {
    // Add logic to handle form submission
    console.log('Form submitted', { 
      firstName, lastName, email, phoneNumber, companyName, address, city, state, zipCode, referral,
      manufacturer, driveCapacity, serialNumber, message,
      driveType, dropped, erased, previousAttempt, passwordProtected, returnOption, captcha 
    });
    // Reset form or show success message
  }
</script>

<section id="data-recovery">
  <div class="container">
    <h2>Free Data Recovery Evaluation</h2>
    <h3>We'll Get Your Data Back Or You Pay Nothing!</h3>
    <h4>The Data Recovery Experts</h4>

    <p>At Wholesale Computers & Technology, we are the Data Recovery Experts. Before panicking or thinking all is lost… fill out the form below and let us have a crack at recovering your data.</p>

    <h3>Data Recovery Services</h3>
    <p>In regards to data recovery, you have only one chance.</p>
    <p>At Wholesale Computers & Technology, we work with the right engineers and technicians to offer an outstanding, competitive, reliable service. Our engineers are so capable that we can even offer forensic data retrieval. Very few companies can say that.</p>
    <p>Wholesale Computers and Technology is centrally located in Fort Lauderdale which makes our quality services, regarding the recovery of data from damaged hard drives, RAIDs, tapes, and flash drives, easily available to Broward customers.</p>

    <h3>Forensic Data Recovery</h3>
    <p>We provide cost-effective, end to end and reliable electronic evidence analysis combining Forensic Data Recovery, Data Collection, Processing, Analysis, eDiscovery, Reporting, and Testimony to individuals, businesses, legal and government organizations.</p>
    <ul>
      <li>Forensic Drive Imaging</li>
      <li>Electronic Evidence Analysis</li>
      <li>Computer and Server Forensics</li>
      <li>Employee Monitoring Services</li>
      <li>Chain of Custody Procedures</li>
      <li>Data Recovery Services</li>
      <li>PDA and Smartphones Forensic</li>
      <li>Password Recovery/Analysis</li>
    </ul>

    <h3>START A RECOVERY</h3>
    <p>To start a recovery, simply fill in the fields on the form below for us to know more about your drive. We promise to respond to you quickly!</p>

    <form on:submit|preventDefault={handleSubmit}>
      <div>
        <label for="first-name">First Name</label>
        <input id="first-name" type="text" bind:value={firstName} required>
      </div>

      <div>
        <label for="last-name">Last Name</label>
        <input id="last-name" type="text" bind:value={lastName} required>
      </div>

      <div>
        <label for="email">Email Address</label>
        <input id="email" type="email" bind:value={email} required>
      </div>

      <div>
        <label for="phone">Phone Number</label>
        <input id="phone" type="tel" bind:value={phoneNumber} required>
      </div>

      <div>
        <label for="company">Company Name</label>
        <input id="company" type="text" bind:value={companyName}>
      </div>

      <div>
        <label for="address">Address</label>
        <input id="address" type="text" bind:value={address}>
      </div>

      <div>
        <label for="city">City</label>
        <input id="city" type="text" bind:value={city}>
      </div>

      <div>
        <label for="state">State</label>
        <input id="state" type="text" bind:value={state}>
      </div>

      <div>
        <label for="zip">Zip Code</label>
        <input id="zip" type="text" bind:value={zipCode}>
      </div>

      <div>
        <label for="referral">Who referred you to us? We would like to thank them.</label>
        <input id="referral" type="text" bind:value={referral}>
      </div>

      <div>
        <label for="drive-type">What type of drive would you like recovered?</label>
        <select id="drive-type" bind:value={driveType}>
          <option value="single">Single Hard Drive</option>
          <option value="flash">Flash/SSD</option>
          <option value="raid">RAID</option>
        </select>
      </div>

      <div>
        <label for="manufacturer">Manufacturer</label>
        <input id="manufacturer" type="text" bind:value={manufacturer}>
      </div>

      <div>
        <label for="drive-capacity">Drive capacity</label>
        <input id="drive-capacity" type="text" bind:value={driveCapacity}>
      </div>

      <div>
        <label for="serial-number">Serial Number</label>
        <input id="serial-number" type="text" bind:value={serialNumber}>
      </div>

      <div>
        <label>
          <input type="checkbox" bind:checked={dropped}>
          Was the Drive Dropped?
        </label>
      </div>

      <div>
        <label>
          <input type="checkbox" bind:checked={erased}>
          Was the drive erased or reformatted?
        </label>
      </div>

      <div>
        <label>
          <input type="checkbox" bind:checked={previousAttempt}>
          My Drive Has a Previous Recovery Attempt?
        </label>
      </div>

      <div>
        <label>
          <input type="checkbox" bind:checked={passwordProtected}>
          Is Your Drive Password Protected?
        </label>
      </div>

      <div>
        <label for="return-option">Options for the return of your recovered data:</label>
        <select id="return-option" bind:value={returnOption}>
          <option value="provide">I will provide a target-drive</option>
          <option value="purchase">I will purchase a drive from your company</option>
        </select>
      </div>

      <div>
        <label for="message">Message</label>
        <textarea id="message" bind:value={message}></textarea>
      </div>

      <div>
        <label for="captcha">14 + 7 = </label>
        <input id="captcha" type="text" bind:value={captcha} required>
      </div>

      <p>By submitting this form I agree to allow Wholesale Computers to perform the requested work.</p>

      <button type="submit">Submit</button>
    </form>

    <blockquote>
      "This company is awesome. I used another data recovery business first unfortunately who spent over 3 weeks on our drive and was not able to recover data. I then sent drive to Preston at Wholesale Computers and Technology. He was very upfront with me about odds of recovery. He communicated with us throughout the whole process and completely restored drive. We have been in business for over 30 years and I can tell you, this is by far, the best computer company we have seen. Our whole staff thanks you for restoring all of our point of sale files along with everything else!"
      <footer>– John Mason</footer>
    </blockquote>

    <div class="contact-info">
      <h3>Drop Us A Call</h3>
      <p>954.633.5353</p>
      <h3>Or Email Us</h3>
      <p><a href="#contact">contact us today!</a></p>
      <p>5784 Powerline Rd<br>Fort Lauderdale, FL 33309</p>
    </div>
  </div>
</section>

<style>
  /* ... (keep the existing styles) ... */
</style>
