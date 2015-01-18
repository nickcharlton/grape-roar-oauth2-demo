organisation = Organisation.create(name: 'The Company',
                                   description: 'A secret organisation.')

user = User.create(name: 'Nick Charlton')
user.organisation = organisation
user.save
