# Pin npm packages by running ./bin/importmap

pin "application"
pin "tablesort" # @5.6.0
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "sort_table", to: "sort_table.js"
