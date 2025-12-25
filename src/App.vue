<script setup>
import { ref, onMounted, computed } from 'vue'

import { images } from './data/imageInventory'
import { videos } from './data/videoInventory'
import { useImageShuffle } from './composables/useImageShuffle'

import AudioPlayer from './components/AudioPlayer.vue'
import Solo from './components/sections/Solo.vue'
import HorseLords from './components/sections/HorseLords.vue'
import Collaborative from './components/sections/Collaborative.vue'
import Video from './components/sections/Video.vue'
import Generative from './components/sections/Generative.vue'

const { shuffleArray, getShuffledImagePaths } = useImageShuffle()

// which sections are open? add or remove from the array
const openSections = ref([])

// Add these new reactive arrays
const shuffledSEImages = ref([])
const shuffledHLDreImages = ref([])
const shuffledHorseLordsImages = ref([])

// Update the toggleSection function
const toggleSection = section => {
  // If section is open, remove it; if closed, add it
  if (openSections.value.includes(section)) {
    openSections.value = openSections.value.filter(s => s !== section)
  } else {
    openSections.value = [...openSections.value, section]
  }
}

// Create a reactive array to hold the shuffled image paths
const shuffledImages = ref([])

onMounted(() => {
  // Initial shuffle of images using the consolidated function
  shuffledImages.value = getShuffledImagePaths(images, 'solo')
  shuffledHorseLordsImages.value = getShuffledImagePaths(images, 'horselords')
  shuffledSEImages.value = getShuffledImagePaths(images, 'SollmannEilbacher')
  shuffledHLDreImages.value = getShuffledImagePaths(images, 'HL Dre')
})

// Generic function to create shuffled content array
const createShuffledContent = (imagePaths, videos = []) => {
  const imageObjects = imagePaths.map(path => ({
    type: 'image',
    src: path,
    id: path
  }))

  return shuffleArray([...imageObjects, ...videos])
}

// Simplified computed properties using the generic function
const shuffledSoloContent = computed(() =>
  createShuffledContent(shuffledImages.value, videos.solo)
)

const shuffledHorseLordsContent = computed(() =>
  createShuffledContent(shuffledHorseLordsImages.value, videos.horselords)
)

const shuffledSEContent = computed(() =>
  createShuffledContent(shuffledSEImages.value)
)
</script>

<template>
  <div class="header" onclick="window.scrollTo(0,0);">Max Eilbacher</div>

  <div class="container">
    
    <div class="audio">
      <!-- SOLO -->
      <div class="toggle" @click="toggleSection('solo')">
        <span>Max</span>
        <span>Eilbacher</span>
      </div>
      <template v-if="openSections.includes('solo')">
        <Solo :content="shuffledSoloContent" />
      </template>

      <!-- HORSE LORDS -->
      <div class="toggle" @click="toggleSection('horselords')">
        <span>Horse</span>
        <span>Lords</span>
      </div>
      <template v-if="openSections.includes('horselords')">
        <HorseLords :content="shuffledHorseLordsContent" />
      </template>
    </div>

    <!-- COLLABORATIVE VENTURES -->
    <div class="toggle" @click="toggleSection('collaborative')">
      <span>Collaborative</span>
      <span>Ventures</span>
    </div>
    <template v-if="openSections.includes('collaborative')">
      <Collaborative
        :content="{
          shuffledSEImages: shuffledSEImages,
          shuffledHLDreImages: shuffledHLDreImages
        }"
      />
    </template>
    <br>

  <!-- GENERATIVE -->
    <div class="toggle" @click="toggleSection('generative')">Generative</div>
    <template v-if="openSections.includes('generative')">
      <Generative />
    </template>

    <br>


    <!-- VIDEO --> 
    <div class="toggle" @click="toggleSection('video')" style="color: black; opacity: 0.25;">VW (2010-2018)</div>
    <template v-if="openSections.includes('video')">
      <Video :content="videos.video" />
    </template>

  
    
  </div>
  <!-- container -->

  <div class="gradation"></div>
</template>