require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305539Trigger = class("Q7305539Trigger", GadgetActorProxy)
Q7305539Trigger.defaultAlias = "Q7305539Trigger"
local Q73055ClientConfig = require("Quest/Client/Q73055ClientConfig")

local subIDs = Q73055ClientConfig.SubIDs
local npcs = Q73055ClientConfig.Npcs
local datas = Q73055ClientConfig.Datas

function Q7305539Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305539Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7305539Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305539)
    self:DestroySelf()
end

function Q7305539Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305539Trigger
