<script>
import { onMount } from "svelte";
import { apiData, achievementIds } from './store.js';

onMount(async () => {
  fetch("https://api.guildwars2.com/v2/achievements/daily")
  .then(response => response.json())
  .then(data => {
		console.log(data);
    apiData.set(data);
  }).catch(error => {
    console.log(error);
    return [];
  });
});
</script>

<main>
	<h1>Guild Wars 2 Daily Achievements</h1>
	<ul>
	{#each $achievementIds as achievementId}
		<li>{achievementId}</li>
	{/each}
	</ul>
</main>

<style>

</style>