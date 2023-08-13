import { serve } from "https://deno.land/std/http/server.ts";

const PORT = 3000;
const server = serve({ port: PORT });

console.log(`Server is running on http://localhost:${PORT}/`);

for await (const request of server) {
  request.respond({ body: "Hello, World!\n" });
}
