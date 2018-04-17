# Boiler_Control_Server

Server side for Boiler_Control project. *ELSYS-2018*

Idea: Вдигане на сървър и мобилно приложение за андройд, посредством което да се предлага отдалечен достъп за контрол на отоплителната система у дома.
На място се помещава ардуино с тъчскриин дисплей за лесен достъп (GUI), което посредством релета включва изключва бойлер, конвектори и т.н.

App Repo - https://github.com/DanyYanev/Boiler_Control_App

Controller Repo - https://github.com/DanyYanev/Boiler_Control_Controller


#API Instructions:
  GET "/users/id.json" -> Json with all variables of current user
  Example:
    {
    "token": "12345",
    "controller_token": "testing",
    "values_attributes": [{
      "key": "PoolPump",
      "value": 0
    }, {
      "key": "FloorPump",
      "value": 0
    }, {
      "key": "ConvPump",
      "value": 0
    }, {
      "key": "FloorConvPump",
      "value": 0
    }, {
      "key": "BoilerSource",
      "value": 0
    }, {
      "key": "BoilerPic",
      "value": 0
    }, {
      "key": "HeatingSource",
      "value": 0
    }, {
      "key": "HeatingPic",
      "value": 0
    }, {
      "key": "Priority",
      "value": 0
    }, {
      "key": "BTempSet",
      "value": 80
    }, {
      "key": "BTemp",
      "value": 100
    }, {
      "key": "HTempSet",
      "value": 32
    }, {
      "key": "HTemp",
      "value": 32
    }]
}
  
  PUT "/users/id" With json -> Updates current variables for user.
  Example:
  {
  "token": "12345",
  "controller_token": "testing",
  "values_attributes": [{
    "key": "PoolPump",
    "value": 0
  }, {
    "key": "FloorPump",
    "value": 0
  }, {
    "key": "ConvPump",
    "value": 0
  }, {
    "key": "FloorConvPump",
    "value": 0
  }, {
    "key": "BoilerSource",
    "value": 0
  }, {
    "key": "BoilerPic",
    "value": 0
  }, {
    "key": "HeatingSource",
    "value": 0
  }, {
    "key": "HeatingPic",
    "value": 0
  }, {
    "key": "Priority",
    "value": 0
  }, {
    "key": "BTempSet",
    "value": 80
  }, {
    "key": "BTemp",
    "value": 100
  }, {
    "key": "HTempSet",
    "value": 32
  }, {
    "key": "HTemp",
    "value": 32
  }]
}
