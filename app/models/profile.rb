class Profile < ActiveRecord::Base
    attr_reader :avatar_remote_url
    belongs_to :user
    
    
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  
    # def avatar_remote_url=(url_value)
    #     self.avatar = URI.parse(url_value)
    #     # Assuming url_value is http://example.com/photos/face.png
    #     # avatar_file_name == "face.png"
    #     # avatar_content_type == "image/png"
    #     @avatar_remote_url = url_value
    # end
end