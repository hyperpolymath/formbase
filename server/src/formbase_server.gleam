// SPDX-License-Identifier: AGPL-3.0-or-later
// FormBase API Server

import gleam/erlang/process
import gleam/io
import mist
import router
import wisp
import wisp/wisp_mist

pub fn main() {
  io.println("FormBase Server v0.1.0")
  io.println("Starting on http://localhost:8080")

  // Configure secret key for wisp
  let secret_key_base = wisp.random_string(64)

  // Start the HTTP server
  let assert Ok(_) =
    wisp_mist.handler(handle_request(_, secret_key_base), secret_key_base)
    |> mist.new
    |> mist.port(8080)
    |> mist.start_http

  io.println("Server running!")
  process.sleep_forever()
}

fn handle_request(req: wisp.Request, _secret: String) -> wisp.Response {
  // Add CORS headers for development
  let req = wisp.set_header(req, "Access-Control-Allow-Origin", "*")

  // Handle preflight requests
  case req.method {
    http.Options -> {
      wisp.ok()
      |> wisp.set_header("Access-Control-Allow-Origin", "*")
      |> wisp.set_header("Access-Control-Allow-Methods", "GET, POST, PATCH, DELETE, OPTIONS")
      |> wisp.set_header("Access-Control-Allow-Headers", "Content-Type, Authorization")
    }
    _ -> {
      router.handle_request(req)
      |> wisp.set_header("Access-Control-Allow-Origin", "*")
    }
  }
}
