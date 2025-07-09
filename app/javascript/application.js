import "@hotwired/turbo-rails"

function loadSortTable() {
  const indexPage = document.querySelector("#index")
  if (indexPage) {
    console.log("Loaded sort_table")
    import("sort_table")
  }
}

document.addEventListener("turbo:load", loadSortTable)
document.addEventListener("turbo:render", loadSortTable)