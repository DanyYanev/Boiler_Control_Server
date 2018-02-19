# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(ip: '192.168.x.x', port: 12345);
Value.create(user_id: user.id, key: "PoolPump", value: 0);
Value.create(user_id: user.id, key: "FloorPump", value: 0);
Value.create(user_id: user.id, key: "ConvPump", value: 0);
Value.create(user_id: user.id, key: "FloorConvPump", value: 0);
Value.create(user_id: user.id, key: "BoilerSource", value: 0);
Value.create(user_id: user.id, key: "BoilerState", value: 0);
Value.create(user_id: user.id, key: "HeatingSource", value: 0);
Value.create(user_id: user.id, key: "HeatingState", value: 0);
Value.create(user_id: user.id, key: "Priority", value: 0);
Value.create(user_id: user.id, key: "BTempSet", value: 80);
Value.create(user_id: user.id, key: "BTemp", value: 70);
Value.create(user_id: user.id, key: "HTempSet", value: 32);
