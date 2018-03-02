json.status "OK"
json.token @user.token
json.controller_token @user.controller_token
json.values do |json|
  @user.values.each do |val|
    json.set! val.key, val.value
  end

end
