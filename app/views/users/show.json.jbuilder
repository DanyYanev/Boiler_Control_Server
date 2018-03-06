json.status "OK"
json.token @user.token
json.controller_token @user.controller_token

json.values @user.values, :key, :value
