require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202518weatherTrigger = class("Q1202518weatherTrigger", GadgetActorProxy)
Q1202518weatherTrigger.defaultAlias = "Q1202518weatherTrigger"
local Q12025ClientConfig = require("Quest/Client/Q12025ClientConfig")

local subIDs = Q12025ClientConfig.SubIDs
local npcs = Q12025ClientConfig.Npcs
local gadgets = Q12025ClientConfig.Gadgets
local datas = Q12025ClientConfig.Datas

function Q1202518weatherTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202518weatherTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(70, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202518weatherTrigger:TriggerIn()
    print("TriggerIn")
end

function Q1202518weatherTrigger:TriggerOut()
    print("TriggerOut")
    globalActor:LeaveAllWeather()
end

return Q1202518weatherTrigger
