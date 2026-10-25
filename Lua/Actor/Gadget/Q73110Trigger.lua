require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73110Trigger = class("Q73110Trigger", GadgetActorProxy)
Q73110Trigger.defaultAlias = "Q73110Trigger"
local Q73110ClientConfig = require("Quest/Client/Q73110ClientConfig")

local subIDs = Q73110ClientConfig.SubIDs
local npcs = Q73110ClientConfig.Npcs
local datas = Q73110ClientConfig.Datas

function Q73110Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73110Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73110Trigger:TriggerIn()
    print("TriggerIn")
end

function Q73110Trigger:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(false, 7311013)
    self:DestroySelf()
end

return Q73110Trigger
