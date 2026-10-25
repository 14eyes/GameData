require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7350006Trigger = class("Q7350006Trigger", GadgetActorProxy)
Q7350006Trigger.defaultAlias = "Q7350006Trigger"
local Q73500ClientConfig = require("Quest/Client/Q73500ClientConfig")

local subIDs = Q73500ClientConfig.SubIDs
local npcs = Q73500ClientConfig.Npcs
local gadgets = Q73500ClientConfig.Gadgets
local datas = Q73500ClientConfig.Datas

function Q7350006Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7350006Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7350006Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7350006)
    self:DestroySelf()
end

function Q7350006Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7350006Trigger
