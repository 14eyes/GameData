require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305521Trigger = class("Q7305521Trigger", GadgetActorProxy)
Q7305521Trigger.defaultAlias = "Q7305521Trigger"
local Q73055ClientConfig = require("Quest/Client/Q73055ClientConfig")

local subIDs = Q73055ClientConfig.SubIDs
local npcs = Q73055ClientConfig.Npcs
local datas = Q73055ClientConfig.Datas

function Q7305521Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305521Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(18, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7305521Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305521)
    self:DestroySelf()
end

function Q7305521Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305521Trigger
