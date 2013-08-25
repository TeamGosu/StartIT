UserSession.create(:login => "bjohnson", :password => "my password", :remember_me => true)

session = UserSession.new(:login => "bjohnson", :password => "my password", :remember_me => true); session.save

UserSession.create(:openid_identifier => "identifier", :remember_me => true) # requires the authlogic-oid "add on" gem

UserSession.create(my_user_object, true) # skip authentication and log the user in directly, the true means "remember me"