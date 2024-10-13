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

  async function handleSubmit() {
    const formData = {
      form_type: 'data_recovery',
      data: {
        firstName,
        lastName,
        email,
        phoneNumber,
        companyName,
        address,
        city,
        state,
        zipCode,
        referral,
        manufacturer,
        driveCapacity,
        serialNumber,
        message,
        driveType,
        dropped,
        erased,
        previousAttempt,
        passwordProtected,
        returnOption,
      },
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
        console.log('Form submitted successfully');
        // Reset form or show success message
      } else {
        console.error('Error submitting form');
      }
    } catch (error) {
      console.error('Error:', error);
    }
  }
</script>

<!-- Rest of the HTML remains unchanged -->

<section id="data-recovery">
  <div class="container">
    <h2>Free Data Recovery Evaluation</h2>
    <h3>We'll Get Your Data Back Or You Pay Nothing!</h3>
    <p class="subheading">The Data Recovery Experts</p>

    <!-- Rest of the HTML remains unchanged -->

  </div>
</section>

<section class="testimonial">
  <div class="container">
    <blockquote>
      "This company is awesome. I used another data recovery business first unfortunately who spent over 3 weeks on our drive and was not able to recover data. I then sent drive to Preston at Wholesale Computers and Technology. He was very upfront with me about odds of recovery. He communicated with us throughout the whole process and completely restored drive. We have been in business for over 30 years and I can tell you, this is by far, the best computer company we have seen. Our whole staff thanks you for restoring all of our point of sale files along with everything else!"
      <footer>– John Mason</footer>
    </blockquote>
  </div>  
</section>

<section class="contact-cta">
  <div class="container">
    <h3>Drop Us A Call</h3>
    <p class="phone">954.633.5353</p>
    <h3>Or Email Us</h3>
    <p><a href="#contact">Contact us today!</a></p>
    <p class="address">5784 Powerline Rd<br>Fort Lauderdale, FL 33309</p>
  </div>
</section>

<style>
  /* Existing styles remain unchanged */
</style>
