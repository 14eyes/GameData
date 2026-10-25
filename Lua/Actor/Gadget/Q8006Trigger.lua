require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8006Trigger = class("Q8006Trigger", GadgetActorProxy)
Q8006Trigger.defaultAlias = "Q8006Trigger"
local Q8006ClientConfig = require("Quest/Client/Q8006ClientConfig")

local subIDs = Q8006ClientConfig.SubIDs
local npcs = Q8006ClientConfig.Npcs
local datas = Q8006ClientConfig.Datas

function Q8006Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q8006Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q8006Trigger:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
end

function Q8006Trigger:TriggerOut()
    print("TriggerOut")
end

return Q8006Trigger
