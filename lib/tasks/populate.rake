namespace :db do

  desc "Fill dummy DB"

    task :populate => :environment do

        10.times do |n|
            time = Faker::Time.between(2.days.ago, Date.today, :all) #=> "2014-09-19 07:03:30 -0700"
            firstname = Faker::Name.first_name
            lastname =  Faker::Name.last_name
            email = "#{firstname}.#{lastname}#{n+1}@example.com"
            jobs = ['Entrepreneur','Developer', 'Investor']
            job_title = jobs[rand(3)]
            phone = Faker::PhoneNumber.cell_phone
            description = Faker::Hipster.paragraph(2) #=> "Yolo tilde farm-to-table hashtag. Lomo kitsch disrupt forage +1."
          user = User.create!(
            email:     email,
            password:  "password",
            created_at: time,
            updated_at: time,
            plan_id: "#{rand(1..2)}")
          profile = Profile.create!(
            user_id: user.id,
            first_name: firstname,
            last_name: lastname,
            job_title: job_title,
            phone_number: phone,
            contact_email: email,
            description: description,
            created_at: time,
            updated_at: time
            )
          profile.avatar = URI.parse("http://pipsum.com/300x300.jpg")
          profile.save
        end
    end
    
    # task :profile_build => :environment do
      
    #   User.all.each do |user|
        
    #     puts "[DEBUG] uploading images for user #{user.id} of #{User.last.id}"
    #     10.times do |n|
    #       image = File.open(Dir.glob(File.join(Rails.root, 'sampleimages', '*')).sample)
    #       description = %w(cool awesome crazy wow adorbs incredible).sample
    #       user.pins.create!(image: image, description: description)
    #   end
      
    # end
end