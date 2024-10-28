<script>
  const currentYear = new Date().getFullYear();
</script>

<footer class="footer">
  <div class="container">
    <div class="footer-content">
      <div class="footer-logo">
        <h3>Wholesale Computer Tech</h3>
        <p>Your Trusted Technology Partner</p>
      </div>
      <div class="footer-links">
        <h4>Quick Links</h4>
        <ul>
          <li><a href="#about">About Us</a></li>
          <li><a href="#services">Services</a></li>
          <li><a href="#products">Products</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </div>
      <div class="footer-social">
        <h4>Follow Us</h4>
        <div class="social-icons">
          <a href="https://facebook.com" target="_blank" rel="noopener noreferrer" aria-label="Facebook"><i class="fab fa-facebook"></i></a>
          <a href="https://twitter.com" target="_blank" rel="noopener noreferrer" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
          <a href="https://linkedin.com" target="_blank" rel="noopener noreferrer" aria-label="LinkedIn"><i class="fab fa-linkedin"></i></a>
          <a href="https://instagram.com" target="_blank" rel="noopener noreferrer" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
    </div>
    <div class="footer-bottom">
      <p>&copy; {currentYear} Wholesale Computer Tech. All rights reserved.</p>
    </div>
  </div>
</footer>

<style>
  .footer {
    background-color: #f8f9fa;
    color: #212529;
    padding: 60px 20px;
    text-align: center;
    position: relative;
    margin-top: 60px;
  }

  .footer .container {
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  .footer-content {
    display: flex;
    justify-content: space-between;
    width: 100%;
    max-width: 1200px;
    margin-bottom: 20px;
  }

  .footer-logo h3 {
    font-size: 1.5em;
    margin-bottom: 10px;
    color: #007bff;
  }

  .footer-logo p {
    font-size: 1em;
    color: #6c757d;
  }

  .footer-links h4,
  .footer-social h4 {
    font-size: 1.2em;
    margin-bottom: 10px;
    color: #007bff;
  }

  .footer-links ul {
    list-style: none;
    padding: 0;
  }

  .footer-links ul li {
    margin-bottom: 10px;
  }

  .footer-links ul li a {
    color: #212529;
    text-decoration: none;
    transition: color 0.3s ease;
  }

  .footer-links ul li a:hover {
    color: #007bff;
  }

  .footer-social .social-icons a {
    color: #212529;
    font-size: 1.5em;
    margin: 0 10px;
    transition: color 0.3s ease;
  }

  .footer-social .social-icons a:hover {
    color: #007bff;
  }

  .footer-bottom p {
    font-size: 0.9em;
    color: #6c757d;
  }

  @media (max-width: 768px) {
    .footer-content {
      flex-direction: column;
      align-items: center;
    }

    .footer-links,
    .footer-social {
      margin-top: 20px;
    }
  }
</style>
