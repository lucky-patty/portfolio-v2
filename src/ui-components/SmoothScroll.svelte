<!-- Smooth Scroll -->
<script>
  import { onMount } from 'svelte';
  import 'locomotive-scroll/dist/locomotive-scroll.css';


  let scrollContainer;

  onMount(async () => {
    const LocomotiveScroll = (await import('locomotive-scroll')).default;

    const scroll = new LocomotiveScroll({
      el: scrollContainer,
      smooth: true,
    });
    
    return () => scroll.destroy();
  });

</script>


<div class="w-full h-full" bind:this={scrollContainer} data-scroll-container>
  <slot />
</div>

<style>
  html, body {
    overflow: hidden;
    height: 100%;
  }
</style>
