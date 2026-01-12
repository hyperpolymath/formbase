// SPDX-License-Identifier: AGPL-3.0-or-later
// State management for bases and tables

open Types

// Current base state
let currentBaseAtom: Jotai.atom<option<base>> = Jotai.atom(None)

// All bases (for sidebar)
let basesAtom: Jotai.atom<array<base>> = Jotai.atom([])

// Current table
let currentTableAtom: Jotai.atom<option<table>> = Jotai.atom(None)

// Current view
let currentViewAtom: Jotai.atom<option<viewConfig>> = Jotai.atom(None)

// Loading states
let isLoadingAtom: Jotai.atom<bool> = Jotai.atom(false)

// Error state
let errorAtom: Jotai.atom<option<string>> = Jotai.atom(None)
