json.status "OK"
json.token @user.token
json.controller_token @user.controller_token

json.values_attributes @user.values, :key, :value
