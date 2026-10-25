require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local SetWeatherTrigger = class("SetWeatherTrigger", GadgetActorProxy)
SetWeatherTrigger.defaultAlias = "SetWeatherTrigger"

function SetWeatherTrigger:OnPostDataPrepare()
    print("CreateRepeatableNPCTrigger - OnPostDataPrepare")
end

function SetWeatherTrigger:OnPostComponentPrepare()
    print("CreateRepeatableNPCTrigger:" .. self.alias)
    local weatherGadgetTrigger = actorMgr.WeatherGadgetTriggerDic[self.alias]
    if weatherGadgetTrigger == nil then
        print("triggerData is nil " .. self.alias)
        return
    end

    if weatherGadgetTrigger.useQuestMode then
        self:AddComponentTrigger(weatherGadgetTrigger.dist, DistType.EULER, weatherGadgetTrigger.offset, self.TriggerIn, self.TriggerOut, nil, nil, nil, weatherGadgetTrigger.mainQuestID)
    else
        self:AddComponentTrigger(weatherGadgetTrigger.dist, DistType.EULER, weatherGadgetTrigger.offset, self.TriggerIn, self.TriggerOut)
    end
end

function SetWeatherTrigger:TriggerIn()
    local weatherGadgetTrigger = actorMgr.WeatherGadgetTriggerDic[self.alias]
    if weatherGadgetTrigger == nil then
        print("triggerData is nil " .. self.alias)
        return
    end

    print("SetWeatherTrigger TriggerIn alias:" .. self.alias .. " weather =" .. weatherGadgetTrigger.weatherName)
    local actorInternal = actorMgr:GetActorInternal(weatherGadgetTrigger.actorAlias)
    if actorInternal ~= nil then
        actorInternal:SetWeather(weatherGadgetTrigger.weatherName)
    end
end

function SetWeatherTrigger:TriggerOut()
    local weatherGadgetTrigger = actorMgr.WeatherGadgetTriggerDic[self.alias]
    if weatherGadgetTrigger == nil then
        print("triggerData is nil " .. self.alias)
        return
    end

    print("SetWeatherTrigger TriggerOut")
    local actorInternal = actorMgr:GetActorInternal(weatherGadgetTrigger.actorAlias)
    if actorInternal ~= nil then
        actorInternal:CancelWeather()
    end
end

return SetWeatherTrigger
