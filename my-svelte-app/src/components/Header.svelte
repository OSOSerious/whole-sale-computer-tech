<script>
  // Add any necessary imports or logic here
</script>

<header id="home">
  <div class="container">
    <h1>Wholesale Computer Tech</h1>
    <p>Your Trusted Source for Refurbished Computers, Comprehensive Technology Services, and Data Recovery Solutions in Miami and Fort Lauderdale, FL.</p>
  </div>
</header>

<style>
  header {
    background-color: #1a1a1a;
    padding: 120px 20px 80px;
    text-align: center;
    position: relative;
    margin-top: 60px;
    background-image: linear-gradient(to bottom, rgba(26, 26, 26, 0.8), rgba(26, 26, 26, 0.8)), url('/images/header-bg.jpg');
    background-size: cover;
    background-position: center;
  }

  header::after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 50%;
    transform: translateX(-50%);
    width: 60px;
    height: 4px;
    background-color: #b9975b;
    border-radius: 2px;
  }

  h1 {
    font-size: 4.8em;
    font-weight: bold;
    margin-bottom: 20px;
    color: #b9975b;
    letter-spacing: 2px;
  }

  p {
    font-size: 1.5em;
    color: #e0c68c;
    max-width: 800px;
    margin: 0 auto;
    line-height: 1.6;
  }

  @media (max-width: 768px) {
    header {
      padding: 100px 20px 60px;
    }

    h1 {
      font-size: 3.8em;
    }

    p {
      font-size: 1.3em;
    }
  }
</style>
