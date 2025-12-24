<script setup>
// import { defineProps } from 'vue'

const props = defineProps({
	content: {
		type: Array,
		required: true
	}
})
</script>

<template>
	<div class="section" id="horselords">
		<p class="text">
			Horse Lords is an American avant-garde rock band from Baltimore. Formed in 2010, the group utilizes 20th
			century compositional methods mixed with a wide range of folk traditions to create music. The group has
			released records and toured extensively in North America and Europe. Max Eilbacher plays bass and
			electronics in the group.</p>
		<ul class="list">
			<li><a href="http://www.horselords.org/" target="_blank">horselords.org</a></li>
			<li><a href="https://horselords.bandcamp.com/" target="_blank">horselords.bandcamp.com</a></li>
		</ul>
		<div class="gallery">
			<template v-for="item in content" :key="item.id">
				<img v-if="item.type === 'image'" :src="item.src" :alt="item.src.split('/').pop()">
				<div v-else-if="item.type === 'video'" class="mgallery-iframe">
					<iframe :src="item.src"
						frameborder="0" 
						allow="fullscreen; picture-in-picture">
					</iframe>
				</div>
			</template>
		</div>
	</div>
</template> 