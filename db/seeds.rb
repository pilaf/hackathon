#TODO: chage actual seed for real

#Cities
City.create(name: 'Barranquilla', subdomain: 'bquilla', country: 'CO', latitude: 1.23, longitude: 1.24)

#Labels
Label.create(name: 'Accident', color: 'red')
Label.create(name: 'Garbage', color: 'green')

#Test users
User.create(username: 'ammancilla', email: 'almancill@hotmail.com', password_digest: '123456', collaborator: true)