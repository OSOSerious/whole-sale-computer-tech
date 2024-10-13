<script>
import { theme } from '../themeStore.js';
import defaultTheme from '../themes/default.js';
import darkTheme from '../themes/dark.js';

const themes = [defaultTheme, darkTheme];

function switchTheme(newTheme) {
  theme.setTheme(newTheme);
}
</script>

<div>
  <label for="theme-select">Choose a theme:</label>
  <select id="theme-select" on:change={(e) => switchTheme(themes[e.target.value])}>
    {#each themes as t, i}
      <option value={i}>{t.name}</option>
    {/each}
  </select>
</div>

<style>
  div {
    margin: 1rem 0;
  }
  select {
    margin-left: 0.5rem;
    padding: 0.25rem;
    border-radius: 4px;
  }
</style>
