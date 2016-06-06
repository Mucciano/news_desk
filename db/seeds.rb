# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pub_list = ['nytimes', 'demnow', 'guardian', 'wapost']


5.times do
  pub_list.each do |name|
    KeywordDatum.create(publication: name, political_score: (rand(9)+1),
    conflict_score: (rand(9)+1),
    econ_score: (rand(9)+1),
    tech_score: (rand(9)+1)
    )
  end

end
