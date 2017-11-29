module CurrentUserConcern
  extend ActiveSupport::Concern 

  def current_user
    # super takes the parent method that we are trying to override
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Guest User", 
                  first_name: "Guest",
                  last_name: "User", 
                  email: "guest@example.com"
                  )
  end
end
