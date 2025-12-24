<script setup>
import { ref, onMounted, onUnmounted } from 'vue';

const props = defineProps({
  src: {
    type: String,
    required: true
  },
  title: {
    type: String,
    default: ''
  }
});

const audio = ref(null);
const isPlaying = ref(false);
const currentTime = ref(0);
const duration = ref(0);

const togglePlay = () => {
  if (audio.value.paused) {
    audio.value.play();
    isPlaying.value = true;
  } else {
    audio.value.pause();
    isPlaying.value = false;
  }
};

const updateProgress = () => {
  currentTime.value = audio.value.currentTime;
  duration.value = audio.value.duration;
};

const setProgress = (e) => {
  const progressBar = e.target;
  const clickPosition = e.offsetX;
  const totalWidth = progressBar.offsetWidth;
  const newTime = (clickPosition / totalWidth) * duration.value;
  audio.value.currentTime = newTime;
};

onMounted(() => {
  audio.value.addEventListener('timeupdate', updateProgress);
  audio.value.addEventListener('ended', () => isPlaying.value = false);
});

onUnmounted(() => {
  audio.value.removeEventListener('timeupdate', updateProgress);
});
</script>

<template>
  <div class="audio-player">
    <audio ref="audio" :src="props.src"></audio>
    
    <div class="player-controls">
      <button @click="togglePlay" class="play-button">
        {{ isPlaying ? '⏸️' : '▶️' }}
      </button>
      
      <div class="track-info">
        <div class="title">{{ props.title }}</div>
        <div class="progress-bar" @click="setProgress">
          <div class="progress" :style="{ width: `${(currentTime / duration) * 100}%` }"></div>
        </div>
        <div class="time">
          {{ Math.floor(currentTime) }}s / {{ Math.floor(duration) }}s
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.audio-player {
  background: #7f7f7f;
  border-radius: 1px;
  padding: 0.25rem;
  display: block;
  width: 100%;
}

.player-controls {
  display: flex;
  align-items: center;
  gap: 1rem;
}

.play-button {
  background: none;
  border: none;
  font-size: 1.5rem;
  cursor: pointer;
  padding: 0.5rem;
}

.track-info {
  flex-grow: 1;
}

.title {
  color: #f5f5f5;
  font-size: 0.75rem;    
  font-style: italic;
  margin-bottom: 0.5rem;
  font-weight: bold;
}

.progress-bar {
  width: 100%;
  height: 6px;
  background: #ddd;
  border-radius: 3px;
  cursor: pointer;
  position: relative;
}

.progress {
  position: absolute;
  height: 100%;
  background: #666;
  border-radius: 3px;
}

.time {
  margin-top: 0.5rem;
  font-size: 0.8rem;
  color: #666;
}
</style> 