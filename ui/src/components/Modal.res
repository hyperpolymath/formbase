// SPDX-License-Identifier: PMPL-1.0-or-later
// Modal component for dialogs

@react.component
let make = (
  ~isOpen: bool,
  ~onClose: unit => unit,
  ~title: string,
  ~children: React.element,
) => {
  // Close on Escape key
  React.useEffect1(() => {
    if isOpen {
      let handleKeyDown = (evt: Dom.keyboardEvent) => {
        if evt->Dom.KeyboardEvent.key == "Escape" {
          onClose()
        }
      }

      let handleKeyDownAny: Dom.event => unit = event => {
        handleKeyDown(Obj.magic(event))
      }

      Dom.document->Dom.Document.addEventListener("keydown", handleKeyDownAny)

      Some(
        () => {
          Dom.document->Dom.Document.removeEventListener("keydown", handleKeyDownAny)
        },
      )
    } else {
      None
    }
  }, [isOpen])

  if !isOpen {
    React.null
  } else {
    <div className="modal-overlay" onClick={_ => onClose()}>
      <div className="modal-dialog" onClick={evt => evt->ReactEvent.Mouse.stopPropagation}>
        <div className="modal-header">
          <h2 className="modal-title"> {React.string(title)} </h2>
          <button
            className="modal-close-button"
            onClick={_ => onClose()}
            aria-label="Close">
            {React.string("×")}
          </button>
        </div>
        <div className="modal-body"> {children} </div>
      </div>
    </div>
  }
}
