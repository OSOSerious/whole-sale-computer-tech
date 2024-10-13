import { writable } from 'svelte/store';
import defaultTheme from './themes/default.js';

function createThemeStore() {
  const { subscribe, set, update } = writable(defaultTheme);

  return {
    subscribe,
    setTheme: (theme) => set(theme),
    resetTheme: () => set(defaultTheme)
  };
}

export const theme = createThemeStore();
