// SPDX-License-Identifier: PMPL-1.0-or-later
// Calendar Store - State management for Calendar View

open Types

// Atoms for calendar state
let currentDateAtom: Jotai.Atom.t<Date.t> = Jotai.atom(Date.make())

type viewMode = Month | Week | Day

let viewModeAtom: Jotai.Atom.t<viewMode> = Jotai.atom(Month)

// Helper functions for date navigation
module Navigation = {
  let goToPreviousMonth = (currentDate: Date.t): Date.t => {
    let newDate = Date.make()
    newDate->Date.setTime(currentDate->Date.getTime)
    newDate->Date.setMonth(currentDate->Date.getMonth - 1)
    newDate
  }

  let goToNextMonth = (currentDate: Date.t): Date.t => {
    let newDate = Date.make()
    newDate->Date.setTime(currentDate->Date.getTime)
    newDate->Date.setMonth(currentDate->Date.getMonth + 1)
    newDate
  }

  let goToPreviousWeek = (currentDate: Date.t): Date.t => {
    let newDate = Date.make()
    newDate->Date.setTime(currentDate->Date.getTime -. 7.0 *. 86400000.0)
    newDate
  }

  let goToNextWeek = (currentDate: Date.t): Date.t => {
    let newDate = Date.make()
    newDate->Date.setTime(currentDate->Date.getTime +. 7.0 *. 86400000.0)
    newDate
  }

  let goToPreviousDay = (currentDate: Date.t): Date.t => {
    let newDate = Date.make()
    newDate->Date.setTime(currentDate->Date.getTime -. 86400000.0)
    newDate
  }

  let goToNextDay = (currentDate: Date.t): Date.t => {
    let newDate = Date.make()
    newDate->Date.setTime(currentDate->Date.getTime +. 86400000.0)
    newDate
  }

  let goToToday = (): Date.t => {
    Date.make()
  }
}

// API integration helpers
module API = {
  // Update event date via API
  let updateEventDate = async (
    tableId: string,
    rowId: string,
    dateFieldId: string,
    newDate: Date.t,
  ): result<unit, string> => {
    try {
      // Format date as ISO string
      let dateStr = newDate->Date.toISOString

      // Call API to update row
      let response = await Fetch.fetch(
        `/api/tables/${tableId}/rows/${rowId}`,
        {
          method: #POST,
          headers: Fetch.Headers.fromObject({
            "Content-Type": "application/json",
          }),
          body: Fetch.Body.string(
            JSON.stringifyAny({
              "cells": {
                dateFieldId: {
                  "value": dateStr,
                },
              },
            })->Option.getOr("{}"),
          ),
        },
      )

      if response->Fetch.Response.ok {
        Ok()
      } else {
        Error("Failed to update event date")
      }
    } catch {
    | error => Error(`API error: ${error->JSON.stringifyAny->Option.getOr("Unknown error")}`)
    }
  }

  // Create new event via API
  let createEvent = async (
    tableId: string,
    dateFieldId: string,
    date: Date.t,
    title: string,
  ): result<string, string> => {
    try {
      let dateStr = date->Date.toISOString

      let response = await Fetch.fetch(
        `/api/tables/${tableId}/rows`,
        {
          method: #POST,
          headers: Fetch.Headers.fromObject({
            "Content-Type": "application/json",
          }),
          body: Fetch.Body.string(
            JSON.stringifyAny({
              "cells": {
                dateFieldId: {
                  "value": dateStr,
                },
                "title": {
                  "value": title,
                },
              },
            })->Option.getOr("{}"),
          ),
        },
      )

      if response->Fetch.Response.ok {
        let json = await response->Fetch.Response.json
        switch json->JSON.Decode.object->Option.flatMap(obj => obj->Dict.get("id")) {
        | Some(id) =>
          switch id->JSON.Decode.string {
          | Some(rowId) => Ok(rowId)
          | None => Error("Invalid row ID in response")
          }
        | None => Error("No row ID in response")
        }
      } else {
        Error("Failed to create event")
      }
    } catch {
    | error => Error(`API error: ${error->JSON.stringifyAny->Option.getOr("Unknown error")}`)
    }
  }

  // Delete event via API
  let deleteEvent = async (tableId: string, rowId: string): result<unit, string> => {
    try {
      let response = await Fetch.fetch(
        `/api/tables/${tableId}/rows/${rowId}`,
        {
          method: #DELETE,
        },
      )

      if response->Fetch.Response.ok {
        Ok()
      } else {
        Error("Failed to delete event")
      }
    } catch {
    | error => Error(`API error: ${error->JSON.stringifyAny->Option.getOr("Unknown error")}`)
    }
  }
}
