import fs from 'fs'
import path from 'path'
import { fileURLToPath, URL } from 'node:url'
// import { vite as vidstack } from 'vidstack/plugins'

import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'


// https://vite.dev/config/
export default defineConfig({
  plugins: [
    // vidstack(),
    vue({
      template: {
        compilerOptions: {
          isCustomElement: (tag) => tag.startsWith('media-'),
        },
      },
    }),
  ],
  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url))
    }
  },
  server: {
    https: {
      key: fs.readFileSync(path.resolve(__dirname, 'localhost-key.pem')),
      cert: fs.readFileSync(path.resolve(__dirname, 'localhost.pem')),
    },
    headers: {
      'Cross-Origin-Opener-Policy': 'same-origin',
      'Cross-Origin-Embedder-Policy': 'credentialless',
      // 'Permissions-Policy': 'cross-origin-isolated=()'
      // 'Cross-Origin-Opener-Policy': 'same-origin'
      // 'Cross-Origin-Embedder-Policy': 'require-corp',
    },
  },
})
