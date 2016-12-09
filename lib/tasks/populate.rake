namespace :db do

  desc "Fill dummy DB"

    task :populate => :environment do

        20.times do |n|
            time = Faker::Time.between(2.days.ago, Date.today, :all) #=> "2014-09-19 07:03:30 -0700"
            firstname = Faker::Name.first_name
            lastname =  Faker::Name.last_name
          user = User.create!(
            email:     "#{firstname}.#{lastname}#{n+1}@example.com",
            password:  "password",
            created_at: time,
            updated_at: time,
            plan_id: "2")
        end
    end
    
    task :profile_build => :environment do
      
      User.all.each do |user|
        
        puts "[DEBUG] uploading images for user #{user.id} of #{User.last.id}"
        10.times do |n|
          image = File.open(Dir.glob(File.join(Rails.root, 'sampleimages', '*')).sample)
          description = %w(cool awesome crazy wow adorbs incredible).sample
          user.pins.create!(image: image, description: description)
      end
      
    end
  end
end