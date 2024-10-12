<script>
  let isOpen = false;
  let message = '';

  function toggleChat() {
    isOpen = !isOpen;
  }

  function sendMessage() {
    // Here you would typically send the message to a backend
    console.log('Message sent:', message);
    message = '';
  }
</script>

<div class="chat-bot">
  {#if !isOpen}
    <button on:click={toggleChat} class="chat-bot-toggle">Chat</button>
  {:else}
    <div class="chat-bot-window">
      <div class="chat-bot-header">
        <h3>Chat Bot</h3>
        <button on:click={toggleChat} class="close-button">&times;</button>
      </div>
      <div class="chat-bot-messages">
        <!-- Messages would be displayed here -->
      </div>
      <div class="chat-bot-input">
        <input 
          type="text" 
          bind:value={message} 
          placeholder="Type your message..."
          on:keypress={(e) => e.key === 'Enter' && sendMessage()}
        />
        <button on:click={sendMessage}>Send</button>
      </div>
    </div>
  {/if}
</div>

<style>
  .chat-bot {
    position: fixed;
    bottom: 20px;
    right: 20px;
    z-index: 1000;
  }

  .chat-bot-toggle {
    background-color: #b9975b;
    color: #ffffff;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .chat-bot-toggle:hover {
    background-color: #e0c68c;
  }

  .chat-bot-window {
    width: 300px;
    height: 400px;
    background-color: #121212;
    border: 1px solid #b9975b;
    border-radius: 5px;
    display: flex;
    flex-direction: column;
    color: #ffffff;
  }

  .chat-bot-header {
    background-color: #b9975b;
    color: #ffffff;
    padding: 10px;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  .chat-bot-header h3 {
    margin: 0;
  }

  .close-button {
    background: none;
    border: none;
    color: #ffffff;
    font-size: 1.5em;
    cursor: pointer;
  }

  .chat-bot-messages {
    flex-grow: 1;
    overflow-y: auto;
    padding: 10px;
  }

  .chat-bot-input {
    display: flex;
    padding: 10px;
  }

  .chat-bot-input input {
    flex-grow: 1;
    margin-right: 10px;
    padding: 5px;
    background-color: #ffffff;
    color: #121212;
    border: 1px solid #b9975b;
  }

  .chat-bot-input button {
    background-color: #b9975b;
    color: #ffffff;
    border: none;
    padding: 5px 10px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .chat-bot-input button:hover {
    background-color: #e0c68c;
  }
</style>
