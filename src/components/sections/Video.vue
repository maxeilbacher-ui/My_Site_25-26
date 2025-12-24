<script setup>
import { ref } from 'vue'

const props = defineProps({
	content: {
		type: Array,
		required: true
	}
})

const openSections = ref([])

const toggleSection = (section) => {
  if (openSections.value.includes(section)) {
    openSections.value = openSections.value.filter(s => s !== section);
  } else {
    openSections.value = [...openSections.value, section];
  }
}
</script>

<template>
<div class="section black" id="video">
        <div class="toggle" @click="toggleSection('video-perfectlives')">
          <span>Perfect</span>
          <span>Lives</span>
        </div>
        <template v-if="openSections.includes('video-perfectlives')">
          <div class="section" id="perfectlives">
            <div class="iframebox">
              <iframe src="https://www.youtube.com/embed/jzhlt93PBB8?controls=2&showinfo=0&modestbranding=1"
                frameborder="0" allow="fullscreen; picture-in-picture"></iframe></div>

            <div class="iframebox"> <iframe
                src="https://www.youtube.com/embed/CQHXVkXu2Us?controls=2&showinfo=0&modestbranding=1" frameborder="0"
                allow="fullscreen; picture-in-picture"></iframe></div>

            <div class="iframebox"> <iframe
                src="https://www.youtube.com/embed/VbPMynyb8H4?controls=2&showinfo=0&modestbranding=1" frameborder="0"
                allow="fullscreen; picture-in-picture"></iframe></div>
            <p class="videotext">
              Commissioned by the electronic music group Matmos to reinterpret the video component of Robert Ashley's
              opera "Perfect Lives." Much inspiration and conceptual guides were drawn from the score and John
              Sanborn's
              original work. In 2014, the two acts "The Park" and "The Backyard" were created. The work served as my
              undergrad thesis and as a live video accompaniment to the Matmos live act. In 2016, "The Bar" was remade
              for
              an extended European tour.</p>
          </div>
        </template>

        <div class="toggle" @click="toggleSection('video-ultimatecare')">
          <span>Ultimate</span>
          <span>Care</span>
          <span>2</span>
        </div>
        <template v-if="openSections.includes('video-ultimatecare')">
          <div class="section" id="ultimatecare">
            <div class="iframebox">
              <iframe src="https://www.youtube.com/embed/_4hc-F1g7tk?controls=2&showinfo=0&modestbranding=1"
                frameborder="0" allow="fullscreen; picture-in-picture"></iframe></div>
            <p class="videotext">
              The source of 'Ultimate Care II' is the household washing machine of Matmos, Whirlpool's 'top loading,
              high
              efficiency washing system, with easy to use consoles, making it simple to select the wash/spin speed
              combination for each load.' The entire album was sourced by the duo's capturing, cutting, and
              manipulation
              of the sounds generated from the machine, allowing the sounds to have their own existence. The video
              echos
              this process, separating the machine from it's intended domestic position. An animated model of a
              washing
              machine is often shown as isolated, orbiting in a screen of black, while undergoing material
              transformation-
              it is a visual equivalency to acousmatic sound. The hard, white facade of the machine undergoes a
              material
              change, warping, melting, and bending at the inclination of body parts, bodies at work, captured from
              washing machine pornography. The domestic is work, just as sex is work, all inclusive in the industry of
              sterility.</p>
          </div>
        </template>

        <div class="toggle" @click="toggleSection('video-kemiallisystavat')">
          <span>Kemialliset</span>
          <span>Ystavat</span>
          <span>KURITON</span>
          <span>PAINOVOIMA</span>
        </div>
        <template v-if="openSections.includes('video-kemiallisystavat')">
          <div class="section" id="kemiallisystavat">
            <div class="iframebox">
              <iframe src="https://www.youtube.com/embed/Ct3PBm67Y8U?controls=2&showinfo=0&modestbranding=1"
                frameborder="0" allow="fullscreen; picture-in-picture"></iframe></div>
          </div>
        </template>

        <div class="toggle" @click="toggleSection('video-softpinktruth')">
          <span>Soft</span>
          <span>Pink</span>
          <span>Truth</span>
          <span>-</span>
          <span>Black</span>
          <span>Metal</span>
        </div>
        <template v-if="openSections.includes('video-softpinktruth')">
          <div class="section" id="softpinktruth">
            <div class="iframebox">
              <iframe src="https://www.youtube.com/embed/cEC2hUHqEg4?controls=2&showinfo=0&modestbranding=1"
                frameborder="0" allow="fullscreen; picture-in-picture"></iframe></div>
          </div>
          <div class="toggle" @click="toggleSection('video-miscellaneous')">
            <span>Miscellaneous</span>
          </div>
          <template v-if="openSections.includes('video-miscellaneous')">
            <div class="section" id="miscellaneous">
              <div class="iframebox">
                <iframe src="https://player.vimeo.com/video/104038450?h=605a40acbc" frameborder="0"
                  allow="fullscreen; picture-in-picture"></iframe></div>
              <div class="iframebox">
                <iframe src="https://www.youtube.com/embed/xGZYM9BGdMA?controls=2&showinfo=0&modestbranding=1"
                  frameborder="0" allow="fullscreen; picture-in-picture"></iframe></div>
            </div>
          </template>
        </template>
      </div>
</template> 