# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = [
  {:name => "joe", :email => "a@a.com"},
  {:name => "mary", :email => "m@m.com"},
  {:name => "sally", :email => "s@s.com"}
]
users.each do |user|
  #create user 
  u = User.create(:username => user[:name], :email => user[:email], :password => "asdfASDF1")

  200.times do
    #add a post to user
    u.posts.create(:title=> Faker::TvShows::Simpsons.location, 
      :author => Faker::TvShows::Simpsons.character, 
      :blog_entry => Faker::TvShows::Simpsons.quote )
  end
end