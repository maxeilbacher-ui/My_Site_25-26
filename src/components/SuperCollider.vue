<script setup>
import { onMounted, ref } from 'vue';

// Create refs for the elements we need to access
const bootElement = ref(null);
const numInputs = ref(0);
const numOutputs = ref(2);
const outputText = ref('');
const statusText = ref('Downloading...');

// Create the Module object
const Module = {
  arguments: [], // Will be populated when scripts load
  preRun: [],
  postRun: [],
  print: function(text) {
    // Convert text to string if it's an object
    const output = typeof text === 'object' ? JSON.stringify(text) : String(text);
    console.log(output);
    outputText.value += output + "\n";
  },
  printErr: function(text) {
    // Convert text to string if it's an object
    const output = typeof text === 'object' ? JSON.stringify(text) : String(text);
    console.error(output);
  },
  setStatus: (text) => {
    statusText.value = text;
  },
  onRuntimeInitialized: () => {
    if (bootElement.value) bootElement.value.disabled = false;
  }
};

// Boot function
const boot = () => {
  const args = Module.arguments;
  if (numInputs.value !== undefined) {
    args[args.indexOf('-i') + 1] = numInputs.value;
  }
  if (numOutputs.value !== undefined) {
    args[args.indexOf('-o') + 1] = numOutputs.value;
  }
  
  Module.callMain(args);
  
  // Wait a short time for the globals to be defined
  setTimeout(() => {
    try {
      // These are typically defined by main.js
      if (typeof window.ScalaCollider !== 'undefined' && typeof window.Server !== 'undefined') {
        const s = new window.Server();
        s.boot();
        window.ScalaCollider.setDefaultServer(s);
      } else {
        console.error('ScalaCollider or Server not defined');
      }
    } catch (e) {
      console.error('Error initializing server:', e);
    }
  }, 1000); // Wait 1 second
  
  bootElement.value.disabled = true;
  // Disable inputs after boot
  numInputs.value = null;
  numOutputs.value = null;
};

onMounted(() => {
  // Make Module available globally (required by the SC scripts)
  window.Module = Module;
  
  // Load required scripts
  const scripts = [
    '/sc/lib/main.js',
    '/sc/lib/scsynth.js'
  ];
  
  scripts.forEach(src => {
    const script = document.createElement('script');
    script.src = src;
    script.async = true;
    document.head.appendChild(script);
  });
});
</script>

<template>
  <div class="sc-container">
    <div class="status">{{ statusText }}</div>
    
    <div class="controls">
      <button 
        ref="bootElement"
        :disabled="true"
        @click="boot"
      >
        Boot
      </button>
      
      <label>
        Inputs:
        <input 
          type="number"
          v-model.number="numInputs"
          min="0"
          max="2"
          step="1"
        >
      </label>
      
      <label>
        Outputs:
        <input 
          type="number"
          v-model.number="numOutputs"
          min="0"
          max="2"
          step="1"
        >
      </label>
    </div>
    
    <textarea 
      v-model="outputText"
      class="output"
      rows="8"
      readonly
    ></textarea>
  </div>
</template>

<style scoped>
.sc-container {
  padding: 20px;
}

.controls {
  margin: 20px 0;
}

.output {
  width: 100%;
  height: 480px;
  background-color: black;
  color: white;
  font-family: 'Lucida Console', Monaco, monospace;
  padding: 10px;
}

button {
  font-size: 20px;
  margin-right: 20px;
}
</style>
