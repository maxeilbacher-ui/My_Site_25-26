<script setup>
// import { defineProps } from 'vue'
import YouTubePlayer from '../YouTubePlayer.vue'
// import Player from '../player/Player.vue

const props = defineProps({
	content: {
		type: Array,
		required: true
	}
})

const getVideoId = (url) => {
  const regExp = /^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|&v=)([^#&?]*).*/
  const match = url.match(regExp)
  return match && match[2].length === 11 ? match[2] : null
}
</script>

<template>
	<div class="section" id="solo">
		<p class="text">
			Max Eilbacher works with sound. That work materializes in a variety of forms; compositions, musical performances, conceptual systems, 
			perceptual choreography, installations and theoretical sculpture. No matter how the final work may be categorized, the art typically
			utilizes speakers and sound waves. A frequent concern throughout the works is an inquiry into the inextricable and complex
			relationship between sound and experience. At each incident of sound, a phenomenological abyss must be transversed. 
			He is aware the listener is the agent taking such a leap. Composition (or whatever may be emanating from a speaker) 
			is the practical enactment of such a leap.
			<br>
			<br>
			He has been releasing records, touring, making and presenting work all across Europe, North America, and Japan since 2010.
			He has released on a number of labels and worked with a number of different bands, artists, and projects.
			<br>
			<br>
			<a href="/cv/Eilbacher CV 24.pdf" target="_blank" style="font-size: 2.4em;"> CV </a>
			
		</p>
		<br>
		<br>
			
		<div class="gallery">
			
			<!-- <Player /> -->
			
			<!-- <iframe 
			src="/embed.html?v=G2jlmoy3CF0" 
			width="560" height="315"
			sandbox="allow-scripts allow-same-origin allow-popups"
			allow="autoplay; encrypted-media"
			style="border: none;"
			></iframe> -->

			<!-- <YouTubePlayer :videoId="getVideoId('https://www.youtube-nocookie.com/embed/G2jlmoy3CF0')" /> -->
			
			<template v-for="item in content" :key="item.id">
				<img v-if="item.type === 'image'" :src="item.src" :alt="item.src.split('/').pop()">
				<div v-else-if="item.type === 'video'" class="mgallery-iframe">
					<!-- <YouTubePlayer :videoId="getVideoId(item.src)"/> -->
				<!-- <iframe 
					:src="item.src" 
					title="YouTube video player" 
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					loading="lazy"
					allowfullscreen>
					</iframe> -->
				</div>
			</template>
		</div>
	</div>
</template> 