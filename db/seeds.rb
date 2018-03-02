# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

user = User.create(token: "12345", controller_token: "testing");
Value.create(user_id: user.id, key: "PoolPump", value: 0);
Value.create(user_id: user.id, key: "FloorPump", value: 0);
Value.create(user_id: user.id, key: "ConvPump", value: 0);
Value.create(user_id: user.id, key: "FloorConvPump", value: 0);
Value.create(user_id: user.id, key: "BoilerSource", value: 0);
Value.create(user_id: user.id, key: "BoilerPic", value: 0);
Value.create(user_id: user.id, key: "HeatingSource", value: 0);
Value.create(user_id: user.id, key: "HeatingPic", value: 0);
Value.create(user_id: user.id, key: "Priority", value: 0);
Value.create(user_id: user.id, key: "BTempSet", value: 80);
Value.create(user_id: user.id, key: "BTemp", value: 70);
Value.create(user_id: user.id, key: "HTempSet", value: 32);
