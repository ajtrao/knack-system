class Employer < ApplicationRecord
    belongs_to :user, class_name: "User"
    before_save {self.email = email.downcase}
    def self.search(search)
        if search
            where(["name LIKE ?","%#{search}%"])
        else
            all
        end
    end

  validates :name, :age, :salary, :department, presence: true, 
                      length: { maximum: 20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
                      uniqueness: { case_sensitive: false }, 
                      length: { maximum: 105 },
                      format: { with: VALID_EMAIL_REGEX }


end
