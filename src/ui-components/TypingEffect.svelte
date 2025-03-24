<script>
  import { onMount } from 'svelte';
  
  export let words = ['Fullstack Developer','Mobile Developer','Goblin in Tech'];

  export let typingSpeed = 100;
  export let deletingSpeed = 50;
  export let delay = 1500;


  let currentText = '';
  let wordIndex = 0;
  let isDeleting = false;

  onMount(() => {
    typeLoop();
  });

  function typeLoop() {
    const word = words[wordIndex % words.length];
    const updatedText = isDeleting
      ? word.substring(0, currentText.length - 1)
      : word.substring(0, currentText.length + 1);

    currentText = updatedText;
    const timeout = isDeleting ? deletingSpeed : typingSpeed;

    if (!isDeleting && currentText === word) {
      setTimeout(() => {
        isDeleting = true;
        typeLoop();
      }, delay);
    } else if (isDeleting && currentText === '') {
      isDeleting = false;
      wordIndex++;
      typeLoop();
    } else {
      setTimeout(typeLoop, timeout);
    }
  }

</script>

<span class="flex h-full items-end justify-center transition-all duration-300 ease-in-out text-4xl md:text-6xl xl:text-9xl text-white">
{currentText}
<span class="animate-pulse">|</span>
</span>
