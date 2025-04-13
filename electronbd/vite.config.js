import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
  plugins: [
    laravel({
      input: ['resources/js/app.jsx'],
      refresh: true,
    }),
    react(),
  ],
  build: {
    outDir: 'public/build', // ✅ Ensure it builds inside public/build
    manifest: true, // ✅ Forces Laravel to track assets
    emptyOutDir: true, // ✅ Clears old files before rebuilding
  },
  base: '/build/', // ✅ Ensures correct asset paths
});
