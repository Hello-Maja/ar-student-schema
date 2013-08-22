require_relative '../../db/config'  # => true

class Student < ActiveRecord::Base

  def name
    "#{first_name} #{last_name}"
  end                             # => nil

  def age
    today = Date.today
    rough_age = today.year - birthday.year
    if birthday.month > today.month || (birthday.month == today.month && birthday.day >= today.day)
      rough_age -= 1
    end
    rough_age
  end        
end

# Team MF worked with Art and Noah on this
