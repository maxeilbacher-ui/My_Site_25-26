<script setup>
const props = defineProps({
  videoId: {
    type: String,
    required: true
  }
})

const embedUrl = `https://www.youtube-nocookie.com/embed/${props.videoId}?modestbranding=1&showinfo=0`
</script>

<template>
  <!-- <pre>{{ embedUrl }}</pre> -->
  <div class="video-container border-2 border-black">
    <!-- allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" -->
    <iframe
      :src="embedUrl"
      frameborder="0"
      allowfullscreen
      width="560"
      height="315"
      sandbox="allow-scripts allow-same-origin allow-presentation allow-popups"
    ></iframe>
  </div>
</template>

<style scoped>
/* .video-container {
  position: relative;
  padding-bottom: 56.25%;
  height: 0;
  overflow: hidden;
}

.video-container iframe {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
} */
</style> 