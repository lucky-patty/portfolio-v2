<script>
  export let hideNavbar = false;
//  export let currentPath = '/';
  export let isExp = false;
  export let isProject = false;
  export let isContact = false;
  let isOpen = false;

</script>

{#if !hideNavbar}
<header class="relative w-full h-[10%] md:h-[10%] bg-black text-white">
  <nav class="px-6 py-4 flex h-full items-center justify-between">
    <a href="/" view-transition-name="logo" class="w-1/5 text-4xl font-bold text-white animate-fade-in animation-delay-500">
      PW
    </a>

  <!-- Burger -->
  <button class="lg:hidden" on:click={() => isOpen = !isOpen}>
    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
      <path
        stroke-linecap="round"
        stroke-linejoin="round"
        stroke-width="2"
        d={isOpen ? "M6 18L18 6M6 6l12 12" : "M4 6h16M4 12h16M4 18h16"}
      />
  </svg>
  </button>

<!-- Desktop links -->
<ul class="hidden lg:flex flex-row lg:w-2/4 justify-between  gap-6 text-2xl">
  <li >
    <a href="/experience" view-transition-name="experience-link" class={`text-white hover:text-emerald-400 ${isExp ? 'font-bold' : ''}`}>Experience</a>
  </li>
  <li>
    <a href="/project" view-transition-name="project-link" class={`text-white hover:text-emerald-400 ${isProject ? 'font-bold' : ''}`}>Projects</a>
  </li>
  <li>
    <a href="/contact" view-transition-name="contact-link" class={`text-white hover:text-emerald-400 ${isContact ? 'font-bold' : ''}`}>Contact</a>
  </li>
</ul>
  </nav>


{#if isOpen}
  <div class="absolut top-full right-0 mt-0 w-full lg:hidden bg-zinc-900 text-sm text-center p-4 space-y-2 z-50">
    <a href="/experience" view-transition-name="experience-link" class="block hover:text-emerald-400">Experience</a>
    <a href="/project" view-transition-name="project-link" class="block hover:text-emerald-400">Projects</a>
    <a href="/contact" view-transition-name="contact-link" class="block hover:text-emerald-400">Contact</a>
  </div>
{/if}
</header>
{/if}
