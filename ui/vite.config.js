// SPDX-License-Identifier: AGPL-3.0-or-later

import { defineConfig } from "npm:vite@^6.4.1";
import react from "npm:@vitejs/plugin-react@^4.3.0";

export default defineConfig({
  plugins: [react()],
  resolve: {
    // Follow symlinks to resolve Deno's node_modules structure
    preserveSymlinks: false,
  },
  optimizeDeps: {
    // Pre-bundle core dependencies, but exclude @rescript packages
    // which use subpath exports only
    include: [
      "react",
      "react-dom",
      "jotai",
    ],
    exclude: ["@rescript/runtime", "@rescript/core"],
  },
  server: {
    port: 5173,
  },
});
