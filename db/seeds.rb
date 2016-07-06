require 'csv'


Company.delete_all
CSV.foreach(Rails.root.join("db/seeds_data/companies_database.csv"), headers: true) do |row|
 Company.find_or_create_by(name: row[0])
end

Location.delete_all
CSV.foreach(Rails.root.join("db/seeds_data/location.csv"), headers: true) do |row|
Location.find_or_create_by(name: row[0])
end


Job.delete_all
CSV.foreach(Rails.root.join("db/seeds_data/Job_database.csv"), headers: true) do |row|
  company = Company.find_by name: row[2]
 Job.find_or_create_by( description: row[0] , link: row[1],  company_id: company.id , place: row[3], posted: Date.strptime(row[4], '%Y-%m-%d') )
end