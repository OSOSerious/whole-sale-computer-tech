<script>
  const products = [
    {
      title: "VoIP Phone Service",
      description: "WE OFFER A FULL LINE OF VOIP PHONES AND SERVICES"
    },
    {
      title: "Data/Forensic Recovery",
      description: "WE OFFER A FULL DATA RECOVERIES, INTERNAL DRIVES, EXTERNAL DRIVES, RAID ARRAYS"
    },
    {
      title: "Mac Authorized Repairs",
      description: "SCREEN REPLACEMENT, MEMORY UPGRADES, SOLID STATE DRIVE UPGRADES/REPLACEMENTS"
    },
    {
      title: "Cabling Services/Cable Installations",
      description: "WE COVER ALL OF YOUR CABLING NEEDS CAT6/CAT5E/PLENUM/FIBER OPTIC"
    },
    {
      title: "BDR (Backup Disaster Recovery Device)",
      description: "WE OFFER COMPLETE BACKUP DISASTER DEVICE INSTALLATIONS"
    },
    {
      title: "FREE REPAIR DIAGNOSIS",
      description: "BRING IN YOUR SYSTEM, SERVER, OR LAPTOP FOR A FREE REPAIR DIAGNOSIS"
    },
    {
      title: "CUSTOM BUILT SYSTEMS",
      description: "LAPTOPS, SERVERS, GIVE US YOUR WISH LIST, YOUR WISH IS OUR COMMAND"
    },
    {
      title: "DRIVE IMAGING",
      description: "WE OFFER A FULL RANGE OF DRIVE IMAGING SERVICES, INTERNAL-INTERNAL, INTERNAL-EXTERNAL, EXTERNAL-INTERNAL"
    },
    {
      title: "Cloud backup",
      description: "WE OFFER A FULL RANGE OF CLOUD BACKUP SOLUTIONS"
    },
    {
      title: "Board-Level Laptop Repair",
      description: "RAM UPGRADE, SOLID STATE UPGRADE, POWER JACK REPAIR, FULL SOLDERING SERVICE"
    },
    {
      title: "Sonos Sound Systems",
      description: "HOME, STUDIO, DR'S OFFICES, WAITING ROOMS, CUSTOM INSTALLS"
    },
    {
      title: "Hosted Email",
      description: "WE OFFER A WIDE RANGE OF HOSTED EMAIL SERVICES TO COVER ALL OF YOUR NEEDS"
    },
    {
      title: "Maintenance Contracts",
      description: "HARDWARE MAINTENANCE CONTRACTS ALONG WITH EXTENDED HARDWARE WARRANTIES"
    },
    {
      title: "FREE DATA RECOVERY EVALUATION",
      description: "NO CHARGE WHATSOEVER FOR DATA RECOVERY EVALUATIONS"
    },
    {
      title: "DATA TRANSFER",
      description: "WE OFFER COMPREHENSIVE DATA TRANSFER SERVICES FROM DRIVE TO DRIVE OR DRIVE TO CLOUD"
    }
  ];
</script>

<section id="products-sales">
  <div class="container">
    <h2>Products and Services</h2>
    <div class="product-grid">
      {#each products as product}
        <div class="product-card">
          <h3>{product.title}</h3>
          <p>{product.description}</p>
        </div>
      {/each}
    </div>
  </div>
</section>

<style>
  #products-sales {
    background-color: #2a2a2a;
    padding: 60px 20px;
  }

  .container {
    max-width: 1200px;
    margin: 0 auto;
  }

  h2 {
    font-size: 2.5em;
    color: #b9975b;
    margin-bottom: 30px;
    text-align: center;
  }

  .product-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 20px;
  }

  .product-card {
    background-color: #1c1c1c;
    padding: 20px;
    border-radius: 5px;
    transition: transform 0.3s ease;
  }

  .product-card:hover {
    transform: translateY(-5px);
  }

  h3 {
    color: #e0c68c;
    font-size: 1.2em;
    margin-bottom: 10px;
  }

  p {
    color: #ddd;
    font-size: 0.9em;
  }

  @media (max-width: 768px) {
    h2 {
      font-size: 2em;
    }

    .product-grid {
      grid-template-columns: 1fr;
    }
  }
</style>
