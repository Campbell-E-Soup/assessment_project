Day.destroy_all
BusinessType.destroy_all
Customer.destroy_all

# Add days to database
days = [
    {name: "Monday",    name_short: "M"},
    {name: "Tuesday",   name_short: "T"},
    {name: "Wednesday", name_short: "W"},
    {name: "Thursday",  name_short: "R"},
    {name: "Friday",    name_short: "F"}
]

puts "Seeding Days..."

days.each do |day|
  Day.create!(day)
  puts "Added '#{day[:name]}' to database."
end

types = [
  "Corporation",
  "LLC",
  "Sole Proprietor",
  "Other"
]

puts "Seeding Business Types..."

types.each do |type_name|
  BusinessType.create!(name: type_name)
  puts "Added '#{type_name}' to database."
end

puts "Seeding Business Types completed..."

customers = [
    {name: "Main Street Supplies", business_type: "Corporation", address1: "123 Main Street", address2: "Suite 100", city: "Knoxville", state: "TN", zip_code: "37901", days: "MTW"},
    {name: "Emerald City Goods", business_type: "LLC", address1: "404 Yellow Brick Road", city: "The Emerald City", state: "KS", zip_code: "67905", days: "MR"},
    {name: "Clearview Market", business_type: "Other", address1: "505 West Drive", city: "Louisville", state: "KY", zip_code: "40229-2544", days: "WF"}
]

puts "Seeding Customers..."

customers.each do |customer|
    days = customer[:days].chars.map do |short|
        Day.find_by(name_short: short)
    end.compact

    Customer.create!(
        name: customer[:name],
        address1: customer[:address1],
        address2: customer[:address2],
        city: customer[:city],
        state: customer[:state],
        zip_code: customer[:zip_code],
        business_type: BusinessType.find_by(name: customer[:business_type]),
        days: days
    )
    puts "Added '#{customer[:name]}' to database."
end

puts "Finished seeding customers..."