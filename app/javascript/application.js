import Tablesort from "tablesort"

document.addEventListener("DOMContentLoaded", () => {
  const table = document.querySelector("table")
  if (table) new Tablesort(table)
})
