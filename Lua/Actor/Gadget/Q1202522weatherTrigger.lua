require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202522weatherTrigger = class("Q1202522weatherTrigger", GadgetActorProxy)
Q1202522weatherTrigger.defaultAlias = "Q1202522weatherTrigger"
local Q12025ClientConfig = require("Quest/Client/Q12025ClientConfig")

local subIDs = Q12025ClientConfig.SubIDs
local npcs = Q12025ClientConfig.Npcs
local gadgets = Q12025ClientConfig.Gadgets
local datas = Q12025ClientConfig.Datas

function Q1202522weatherTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202522weatherTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(70, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202522weatherTrigger:TriggerIn()
    print("TriggerIn")
end

function Q1202522weatherTrigger:TriggerOut()
    print("TriggerOut")
    globalActor:LeaveAllWeather()
    self:DestroySelf()
end

return Q1202522weatherTrigger
