organisation = Organisation.create(name: 'The Company',
                                   description: 'A secret organisation.')

user = User.create(name: 'Nick Charlton', email: 'nick@nickcharlton.net',
                   password: 'password', password_confirmation: 'password')
user.organisation = organisation
user.save

app = Doorkeeper::Application.new name: 'Example OAuth Client',
                                  redirect_uri: 'http://localhost:4000'
app.owner = user
app.save
