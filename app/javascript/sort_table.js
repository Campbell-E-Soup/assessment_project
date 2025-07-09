import Tablesort from "tablesort"

function initializeTablesort() {
  const table = document.querySelector("#customer-table");
  if (table) {
    new Tablesort(table);
    console.log("Tablesort initialized");
  }
}

// Run immediately in case the module is loaded *after* page load
initializeTablesort();

document.addEventListener("turbo:load", initializeTablesort);