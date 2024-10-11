<script>
  const features = [
    "Instant Support: Get immediate assistance for your technical problems, reducing downtime and enhancing productivity.",
    "24/7 Availability: Our AI assistant is always ready to help, regardless of the time or day.",
    "Seamless Transition: If the AI cannot resolve your issue, it seamlessly transfers the call to a human expert, ensuring you receive the necessary support without any hassle.",
    "Continuous Learning: Our AI is continuously updated and trained to handle a wide range of issues, improving its effectiveness over time."
  ];
</script>

<section id="ai-assistant">
  <div class="container">
    <h2>AI Phone Assistant</h2>
    <div class="assistant-info">
      <p>Introducing our cutting-edge <strong>AI Phone Assistant</strong>, designed to revolutionize your support experience. Leveraging our proprietary software, our AI assistant can efficiently troubleshoot and resolve up to 75% of common technical issues, providing you with swift and accurate solutions without the need to wait for human intervention.</p>
      <h3>Key Features of Our AI Phone Assistant:</h3>
      <ul>
        {#each features as feature}
          <li>{feature}</li>
        {/each}
      </ul>
      <p>Experience the future of customer support with our AI Phone Assistant – efficient, reliable, and always at your service.</p>
    </div>
  </div>
</section>

<style>
  #ai-assistant {
    background-color: #2e2e2e;
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

  .assistant-info {
    background-color: #1c1c1c;
    padding: 30px;
    border-radius: 10px;
  }

  h3 {
    font-size: 1.8em;
    color: #e0c68c;
    margin: 20px 0;
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
    margin-bottom: 10px;
    padding-left: 20px;
    position: relative;
  }

  li::before {
    content: "•";
    color: #b9975b;
    position: absolute;
    left: 0;
  }

  strong {
    color: #e0c68c;
  }

  @media (max-width: 768px) {
    h2 {
      font-size: 2em;
    }

    h3 {
      font-size: 1.5em;
    }

    p, li {
      font-size: 1em;
    }
  }
</style>
