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
			Horse Lords is an avant-garde rock band from Baltimore. Formed in 2010, the group utilizes 20th
			century compositional methods mixed with a wide range of folk traditions to create their own music. The group has released records and toured extensively in North America, Europe, Canada, and the People's Republic of China. Max Eilbacher plays bass and electronics in the group.</p>
		<br>

		<div style="text-align: center;">
             <a href="https://horselords.org/"
                target="_blank" 
                style="font-size: 1.15em; color: #f8f8f8;">
              Horse Lords' humble little website <3
             </a>
           </div>

           <br>


           <div style="text-align: center;">
             <a href="https://horselords.bandcamp.com/"
                target="_blank" 
                style="font-size: 1.16em; color: #f8f8f8;">
             The Horse Lords bandcamp
             </a>
           </div>

           <br>




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