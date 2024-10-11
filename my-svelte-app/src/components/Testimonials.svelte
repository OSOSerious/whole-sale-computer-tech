<script>
  import { onMount } from 'svelte';

  let testimonials = [
    { text: "Just got a gaming computer from the owner and staff, they're really good people making sure you get the best value you want for an reasonable price. Recommend you guys to go and check them out. They're legit and very professional you wont regret a second there. Preston and staff got my gaming computer popping and I thank him for that greatly", author: "Caleb Saint" },
    { text: "Preston and his team at Wholesale Computer are the best. I had an urgent data recovery issue that Preston solved quickly and at a very reasonable price. I am eternally grateful!", author: "Michael Berger" },
    { text: "Preston and Gino came through in a critical data recovery. They handled it with the utmost priority and professionalism. Reasonably priced and will give you the most friendly customer service that is lacking nowadays. I thank Wholesale Computers and Technology for always taking care of their customers right!", author: "Will Portalatin" },
    { text: "I purchased parts and they put it all together for me. Reasonable prices, kept me in the loop on my build. Very happy with the results. Would recommend!", author: "Eric Barrette" },
    { text: "Friendly, helpful, knowledgeable staff with great computer prices.", author: "Steven Gross" },
    { text: "Preston will always get you the best deal.", author: "Scot Batchen" },
    { text: "Let me say, the absolute nicest, personable, knowledgeable, honest owner/operator named Preston. My boyfriend's business computer needed fixed and he did so in an hour and made us feel so welcome and comfortable!!! He has our business from now on and I will spread the word!", author: "Melissa Kelley" },
    { text: "This is a great company, It was obvious from the start, Preston is very knowledgeable about his business and knows how to explain what needs to be done in order to retrieve data from a damaged hard drive. He makes you feel very comfortable and engenders trust in his ability. I am very happy to recommend Preston and his wife & workers. His turn around time was fast and he is very fair with his pricing. I am a very satisfied customer! THANKS PRESTON! Good job!", author: "Gary Dufresne" },
    { text: "Preston and Gino are awesome! We have been using them for data recovery for years and they have always went above and beyond. Excellent customer service, communication and follow up is what to expect from them. If you had a crash and need your data back, dont hesitate for a second to call Wholesale Computers & Technology! And by the way if you some inexpensive but current spec workstations for your business , they have great deals.", author: "Brian Tiedeman" },
    { text: "This company is awesome. I used another data recovery business first unfortunately who spent over 3 weeks on our drive and was not able to recover data. I then sent drive to Preston at Wholesale Computers and Technology. He was very upfront with me about odds of recovery. He communicated with us throughout the whole process and completely restored drive. We have been in business for over 30 years and I can tell you, this is by far, the best computer company we have seen. Our whole staff thanks you for restoring all of our point of sale files along with everything else!", author: "John Mason" }
  ];

  let currentIndex = 0;

  function showNextTestimonial() {
    currentIndex = (currentIndex + 1) % testimonials.length;
  }

  function showPrevTestimonial() {
    currentIndex = (currentIndex - 1 + testimonials.length) % testimonials.length;
  }

  onMount(() => {
    const interval = setInterval(showNextTestimonial, 10000);
    return () => clearInterval(interval);
  });
</script>

<section id="testimonials">
  <div class="container">
    <h2>We Love our Clients</h2>
    <p class="subtitle">We are dedicated to serving our clients and exceeding expectations… and do it all with Exceptional World Class Service!</p>
    <div class="testimonial-slider">
      <button class="prev" on:click={showPrevTestimonial}>&#10094;</button>
      <div class="testimonial">
        <p>"{testimonials[currentIndex].text}"</p>
        <div class="author">- {testimonials[currentIndex].author}</div>
      </div>
      <button class="next" on:click={showNextTestimonial}>&#10095;</button>
    </div>
  </div>
</section>

<style>
  #testimonials {
    background-color: #1e1e1e;
    padding: 60px 20px;
    text-align: center;
  }

  .container {
    max-width: 1000px;
    margin: 0 auto;
  }

  h2 {
    font-size: 2.5em;
    margin-bottom: 10px;
    color: #b9975b;
    letter-spacing: 1px;
  }

  .subtitle {
    font-size: 1.2em;
    color: #ffffff;
    margin-bottom: 30px;
  }

  .testimonial-slider {
    position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .testimonial {
    background-color: #2a2a2a;
    padding: 30px;
    border-radius: 10px;
    max-width: 800px;
    margin: 0 auto;
  }

  p {
    font-size: 1.1em;
    color: #ffffff;
    margin-bottom: 15px;
    line-height: 1.6;
  }

  .author {
    font-size: 1.1em;
    color: #b9975b;
    font-weight: bold;
  }

  .prev, .next {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background-color: rgba(185, 151, 91, 0.8);
    border: none;
    color: #1c1c1c;
    padding: 10px;
    cursor: pointer;
    border-radius: 50%;
    font-size: 1.5em;
    transition: background-color 0.3s ease;
  }

  .prev:hover, .next:hover {
    background-color: #b9975b;
  }

  .prev {
    left: 0;
  }

  .next {
    right: 0;
  }

  @media (max-width: 768px) {
    h2 {
      font-size: 2em;
    }

    .subtitle {
      font-size: 1em;
    }

    p, .author {
      font-size: 1em;
    }

    .prev, .next {
      font-size: 1.2em;
      padding: 8px;
    }
  }
</style>
