class User < ApplicationRecord
  has_one :employer, foreign_key: "user_id", class_name: "Employer"
end