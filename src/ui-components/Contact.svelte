<script>
  let contacts = [
    {
      name: 'Email',
      type: 'email',
      link: 'luck.wtj@gmail.com',
    },
    {
      name: 'LinkedIn',
      type: 'link', 
      link: 'https://linkedin.com/in/pattarathon-watanakij-10856a121/',
    },
    {
      name: 'Github',
      type: 'link',
      linked: 'https://github.com/lucky-patty'
    },
  ];
</script>

<div class="w-full h-full flex items-center overflow-x-auto overflow-y-hidden py-5 md:py-10">
  <div class="flex space-x-6 min-w-max px-6">
    {#each contacts as exp, i}
      <div class="relative md:flex-shrink-0 w-72 md:w-80 bg-zinc-800 text-white p-6 rounded-lg shadow-lg">
        <h3 class="text-lg font-bold">{exp.name}</h3>
        <p class="text-sm text-grey-500 opacity-50">{exp.type}</p>
        <p class="text-sm mt-4 text-emerald-400 text-grey-300">
          {#if exp.type === 'link'}
              <a href={exp.link}>Check it out</a>
          {:else}
              <a href={`mailto:{exp.link}`}>{exp.link}</a>
          {/if}
        </p>
      </div>
    {/each}
  </div>
</div>
