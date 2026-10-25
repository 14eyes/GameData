require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7304921Trigger = class("Q7304921Trigger", GadgetActorProxy)
Q7304921Trigger.defaultAlias = "Q7304921Trigger"
local Q73049ClientConfig = require("Quest/Client/Q73049ClientConfig")

local subIDs = Q73049ClientConfig.SubIDs
local npcs = Q73049ClientConfig.Npcs
local datas = Q73049ClientConfig.Datas

function Q7304921Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7304921Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7304921Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7304921)
    self:DestroySelf()
end

function Q7304921Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7304921Trigger
