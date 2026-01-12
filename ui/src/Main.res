// SPDX-License-Identifier: AGPL-3.0-or-later

switch ReactDOM.querySelector("#root") {
| Some(rootElement) =>
  let root = ReactDOM.Client.createRoot(rootElement)
  ReactDOM.Client.Root.render(root, <App />)
| None => Console.error("Could not find root element")
}
