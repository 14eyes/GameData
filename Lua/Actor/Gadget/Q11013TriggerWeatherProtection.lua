require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11013TriggerWeatherProtection = class("Q11013TriggerWeatherProtection", GadgetActorProxy)
Q11013TriggerWeatherProtection.defaultAlias = "Q11013TriggerWeatherProtection"
local Q11013ClientConfig = require("Quest/Client/Q11013ClientConfig")

local subIDs = Q11013ClientConfig.SubIDs
local npcs = Q11013ClientConfig.Npcs
local datas = Q11013ClientConfig.Datas

function Q11013TriggerWeatherProtection:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11013TriggerWeatherProtection:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(70, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11013TriggerWeatherProtection:TriggerIn()
    print("TriggerIn")
end

function Q11013TriggerWeatherProtection:TriggerOut()
    print("TriggerOut")
    print("TriggerOut")
    globalActor:LeaveWeather()
    local actor = actorMgr:GetActor(Q11013ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1101328) == 2 then
        actor:FinishQuestID(true, 1101328)
        globalActor:LeaveWeather()
    end

    self:DestroySelf()
    self:DestroySelf()
end

return Q11013TriggerWeatherProtection
