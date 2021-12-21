class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list 
    self.actors.map do |actor|
        # "#{actor.first_name} #{actor.last_name}"
        # uses the method from actor on the actor instance 
        actor.full_name
    end
  end

end