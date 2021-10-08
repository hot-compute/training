<script>
import { onMount } from "svelte";
import { apiData, achievementIds, achievementsData, achievements } from './store.js';

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
  fetch("https://api.guildwars2.com/v2/achievements?ids=2957,1969")
  .then(response => response.json())
  .then(data => {
		console.log(data);
    achievementsData.set(data);
  }).catch(error => {
    console.log(error);
    return [];
  });
});
</script>

<main>
	<h1>Guild Wars 2 Achievements Daily</h1>
  <h2>List of Daily ID's</h2>
	<ul>
	{#each $achievementIds as achievementId}
		<li>{achievementId}</li>
	{/each}
	</ul>

  <h2>List of Achievements by ID</h2>
	<ul>
	{#each $achievements as achievement}
		<li>{achievement}</li>
	{/each}
	</ul>
</main>

<style>

</style>