require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305524Trigger = class("Q7305524Trigger", GadgetActorProxy)
Q7305524Trigger.defaultAlias = "Q7305524Trigger"
local Q73055ClientConfig = require("Quest/Client/Q73055ClientConfig")

local subIDs = Q73055ClientConfig.SubIDs
local npcs = Q73055ClientConfig.Npcs
local datas = Q73055ClientConfig.Datas

function Q7305524Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305524Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7305524Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305524)
    self:DestroySelf()
end

function Q7305524Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305524Trigger
