#TODO: chage actual seed for real

# Cities
# City.create(name: 'Barranquilla', subdomain: 'bquilla', country: 'CO', latitude: 1.23, longitude: 1.24)

# Labels
Label.create(name: 'accident', color: 'red')
Label.create(name: 'garbage', color: 'green')
Label.create(name: 'security', color: 'white')

# Test users
User.create(username: 'turizo', email: 't@gmail.com', password: '123456')
User.create(username: 'mancilla', email: 'm@gmail.com', password: '123456')
User.create(username: 'garcia', email: 'g@gmail.com', password: '123456')
User.create(username: 'iguaran', email: 'i@gmail.com', password: '123456')

User.create(username: 'movilidad', email: 'm@gmail.com', password: '123456', collaborator: true)
User.create(username: 'policia', email: 'p@gmail.com', password: '123456', collaborator: true)
