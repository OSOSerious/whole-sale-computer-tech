<script>
  const stats = [
    { number: "574", description: "5 Star Reviews" },
    { number: "2823", description: "Computers Sold" },
    { number: "958", description: "Hard Drives Recovered" },
    { number: "3946", description: "Happy Customers" }
  ];
</script>

<section id="statistics">
  <div class="container">
    <div class="stats-grid">
      {#each stats as stat}
        <div class="stat">
          <h3>{stat.number}</h3>
          <p>{stat.description}</p>
        </div>
      {/each}
    </div>
  </div>
</section>

<style>
  #statistics {
    background-color: #1c1c1c;
    padding: 60px 20px;
    text-align: center;
  }

  .stats-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 30px;
    max-width: 1000px;
    margin: 0 auto;
  }

  .stat {
    background-color: #2a2a2a;
    padding: 30px;
    border-radius: 10px;
  }

  h3 {
    font-size: 2em;
    color: #b9975b;
    margin-bottom: 10px;
  }

  p {
    font-size: 1.1em;
    color: #ddd;
  }

  @media (max-width: 768px) {
    .stats-grid {
      grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
    }

    h3 {
      font-size: 1.8em;
    }

    p {
      font-size: 1em;
    }
  }
</style>
