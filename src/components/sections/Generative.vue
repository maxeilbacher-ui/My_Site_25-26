<script setup>
import { ref } from 'vue'

const openSections = ref([])

// examples:
const generativeExamples = [
	'bubbles',
	'harm-swim',
	'harm-tumb',
	'cymbal',
	'walters',
	'police',
	'what-think'
]

const toggleSection = section => {
	if (openSections.value.includes(section)) {
		openSections.value = openSections.value.filter(s => s !== section)
	} else {
		openSections.value = [...openSections.value, section]
	}
}

const listen = example => {
	if (generativeExamples.includes(example)) {
		window.example(example)
	} else if (example === 'stop') {
		window.cmdPeriod()
	}
}
</script>

<template>
	<div class="section black" id="generative">
		<template v-for="example in generativeExamples" :key="example">
			<div class="toggle" @click="toggleSection(`generative-${example}`)">
				<span>{{ example }}</span>
			</div>
			<template v-if="openSections.includes(`generative-${example}`)">
				<div class="section" :id="example">
					<button :id="'listen-' + example" @click="listen(example)">
						Listen
					</button>
					<button id="stop" @click="listen('stop')">Stop</button>
					<p class="videotext">
						{{ example }}
					</p>
				</div>
			</template>
		</template>
	</div>
</template> 