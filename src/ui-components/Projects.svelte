<script>
  let projects = [
    {
      name: 'BONK Arcade GameFi',
      users: 870,
      details: 'I developed a Telegram Mini App that allows users to play arcade games and win prizes in a win-to-earn model. The app also featuers a staking system, enabling users to stake native tokens for higher rewards with support for Binance Smart Chain and Avalanche. To enhances user privacy and security, the app automatically generates a wallet for each user ensuring seamless and decentralized transactions',
      link: 'https://t.me/BonkArcadeBot',
    },
    {
      name: 'Baitbuy',
      users: 300,
      details: 'I developed a platform where users can write product reviews and earn rewards in the form of tokens. The platform aggregates user-generated data to train an AI-powered agent speicializd in analyzing targeted products helping users make informed decisions while leveraging price optimization for better deals',
      link: 'https://baitbuy.com',
    },
  ];
</script>

<div class="w-full overflow-x-auto overflow-y-hidden py-5 xl:py-10">
  <div class="flex space-x-6 min-w-max px-6">
    {#each projects as exp, i}
      <div class="relative flex-shrink-0 w-72 md:w-80 bg-zinc-800 text-white p-6 rounded-lg shadow-lg">
        <a href={exp.link}>
          <h3 class="text-lg font-bold">{exp.name}</h3>
          <div class="mb-2 text-emerald-400 text-sm">{exp.users} users</div>
          <p class="text-sm mt-4 text-grey-300">{exp.details}</p>
        </a>
      </div>
    {/each}
  </div>
</div>



