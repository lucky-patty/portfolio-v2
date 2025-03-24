<script>
  import { onMount } from 'svelte';
  import { navigate } from 'astro:transitions/client';
  let showDark = false;

  export let delay = 3000;

  onMount(() => {
    setTimeout(() => {
      showDark = true;
    }, 1500);

    setTimeout(() => {
      if (document.startViewTransition) {
        document.startViewTransition(() => {
          navigate('/home');
        });
      } else {
        navigate('/home');
      }
    }, delay);
  });
</script>


<style>
  .wrapper {
    display: flex;
    align-items: center;
    justify-content: center;
    transition: background-color 1s ease, color 1s ease;
    font-size: 5rem;
    font-weight: bold;
  }

  .light {
    background-color: white;
    color: black;
  }

  .dark {
    background-color: black;
    color: white;
  }
</style>


<div class="wrapper h-full w-full {showDark ? 'dark' : 'light'}">
  <slot />
</div>
