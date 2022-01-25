class Order < ApplicationRecord


def user 
  User.find(user_id)
end 

belongs_to :product
belongs_to :user

end
