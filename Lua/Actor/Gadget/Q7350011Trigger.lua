require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7350011Trigger = class("Q7350011Trigger", GadgetActorProxy)
Q7350011Trigger.defaultAlias = "Q7350011Trigger"
local Q73500ClientConfig = require("Quest/Client/Q73500ClientConfig")

local subIDs = Q73500ClientConfig.SubIDs
local npcs = Q73500ClientConfig.Npcs
local gadgets = Q73500ClientConfig.Gadgets
local datas = Q73500ClientConfig.Datas

function Q7350011Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7350011Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7350011Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7350011)
    self:DestroySelf()
end

function Q7350011Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7350011Trigger
