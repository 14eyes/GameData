require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12025WeatherTrigger = class("Q12025WeatherTrigger", GadgetActorProxy)
Q12025WeatherTrigger.defaultAlias = "Q12025WeatherTrigger"
local Q12025ClientConfig = require("Quest/Client/Q12025ClientConfig")

local subIDs = Q12025ClientConfig.SubIDs
local npcs = Q12025ClientConfig.Npcs
local gadgets = Q12025ClientConfig.Gadgets
local datas = Q12025ClientConfig.Datas

function Q12025WeatherTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12025WeatherTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12025WeatherTrigger:TriggerIn()
    print("TriggerIn")
end

function Q12025WeatherTrigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("12025"):FinishQuestID(true, 1202507)
    self:DestroySelf()
end

return Q12025WeatherTrigger
