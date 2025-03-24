<script>
  let experiences = [
    {
      company: 'BonkDAO',
      position: 'Project Owner',
      duration: '2023 - Present',
      details: `Independently designed, developed, and launched a blockchain GameFi platform across multiple networks, including Binance Smart Chain, Avalanche, and TON. I also handle all aspects of the projects.`,
      tech: ['ether.js', 'funC', 'react', 'golang', 'kubernets'],
    },
    {
      company: 'Twinmoon Studio',
      position: 'Fullstack Developer',
      duration: '2021 - 2023',
      details: 'Design, developed, and automated websites and mobile applications, ensuring seamless functionality through rigorous testing.',
      tech: ['nodejs', 'sql', 'nextjs', 'elixir', 'flutter', 'mongoDB', 'rabbitMQ'],
    }, 
    {
      company: 'AVIA Satcom',
      position: 'Embedded Engineer',
      duration: '2017 - 2018',
      details: 'Specialized in integrating sensor data processing, communication protocols, and fail-safe mechanisms to enhance system reliability and performance in critical environments',
      tech: ['c', 'c++', 'mysql', 'php', 'java'],
    },
    {
      company: 'Shalom Software',
      position: 'Software Engineer',
      duration: 'Jan 2017 - June 2017',
      details: `Developed software for embedded mobile, testing system and integrating new features using Lua`,
      tech: ['kotline', 'java', 'rn', 'php', 'Lua'],
    },
  ];
</script>


<div class="w-full h-full flex items-center overflow-x-auto overflow-y-hidden py-5 md:py-10">
  <div class="flex space-x-6 min-w-max px-6">
    {#each experiences as exp, i}
      <div class="relative md:flex-shrink-0 w-72 md:w-80 bg-zinc-800 text-white p-6 rounded-lg shadow-lg">
        <div class="mb-2 text-emerald-400 text-sm">{exp.duration}</div>
        <h3 class="text-lg font-bold">{exp.company}</h3>
        <p class="text-sm text-grey-500 opacity-50">{exp.position}</p>
        <p class="text-sm mt-4 text-grey-300">{exp.details}</p>
        <span class="py-5 flex flex-row overflow-x-auto gap-5">
          {#each exp.tech as tech}
            <p class="text-sm text-grey-300 opacity-50">{tech}</p>
          {/each}
        </span>
      </div>
    {/each}
  </div>
</div>
