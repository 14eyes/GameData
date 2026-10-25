require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306309Trigger = class("Q7306309Trigger", GadgetActorProxy)
Q7306309Trigger.defaultAlias = "Q7306309Trigger"
local Q73063ClientConfig = require("Quest/Client/Q73063ClientConfig")

local subIDs = Q73063ClientConfig.SubIDs
local npcs = Q73063ClientConfig.Npcs
local datas = Q73063ClientConfig.Datas

function Q7306309Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306309Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306309Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306309)
    self:DestroySelf()
end

function Q7306309Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306309Trigger
