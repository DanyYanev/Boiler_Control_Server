json.status "OK"
json.id @user.id
json.values do |json|
  json.PoolPump @user.values.where(:key => "PoolPump").first.value;
  json.FloorPump @user.values.where(:key => "FloorPump").first.value;
  json.FloorConvPump @user.values.where(:key => "FloorConvPump").first.value;
  json.BoilerSource @user.values.where(:key => "BoilerSource").first.value;
  json.BoilerState @user.values.where(:key => "BoilerState").first.value;
  json.HeatingSource @user.values.where(:key => "HeatingSource").first.value;
  json.HeatingState @user.values.where(:key => "HeatingState").first.value;
  json.Priority @user.values.where(:key => "Priority").first.value;
  json.BTempSet @user.values.where(:key => "BTempSet").first.value;
  json.BTemp @user.values.where(:key => "BTemp").first.value;
  json.HTempSet @user.values.where(:key => "HTempSet").first.value;
end
