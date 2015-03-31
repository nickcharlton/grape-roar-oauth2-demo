def create_doorkeeper
  @user = FactoryGirl.create(:user)
  @application = Doorkeeper::Application.create(name: 'Example App',
                                                redirect_uri: 'https://example.com/')
end

def create_doorkeeper_app(opts = {})
  create_doorkeeper

  @token = Doorkeeper::AccessToken.create!(application_id: @application.id,
                                           resource_owner_id: @user.id,
                                           scopes: opts && opts[:scopes])
end
