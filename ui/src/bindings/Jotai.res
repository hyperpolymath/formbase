// SPDX-License-Identifier: AGPL-3.0-or-later
// ReScript bindings for Jotai

type atom<'a>
type writableAtom<'a, 'b>

@module("jotai")
external atom: 'a => atom<'a> = "atom"

@module("jotai")
external atomWithDefault: (unit => 'a) => atom<'a> = "atom"

@module("jotai")
external derivedAtom: (atom<'a> => 'b) => atom<'b> = "atom"

@module("jotai")
external useAtom: atom<'a> => ('a, ('a => 'a) => unit) = "useAtom"

@module("jotai")
external useAtomValue: atom<'a> => 'a = "useAtomValue"

@module("jotai")
external useSetAtom: atom<'a> => (('a => 'a) => unit) = "useSetAtom"

module Provider = {
  @module("jotai") @react.component
  external make: (~children: React.element) => React.element = "Provider"
}
