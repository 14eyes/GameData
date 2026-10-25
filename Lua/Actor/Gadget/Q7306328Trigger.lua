require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306328Trigger = class("Q7306328Trigger", GadgetActorProxy)
Q7306328Trigger.defaultAlias = "Q7306328Trigger"
local Q73063ClientConfig = require("Quest/Client/Q73063ClientConfig")

local subIDs = Q73063ClientConfig.SubIDs
local npcs = Q73063ClientConfig.Npcs
local datas = Q73063ClientConfig.Datas

function Q7306328Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306328Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306328Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306328)
    self:DestroySelf()
end

function Q7306328Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306328Trigger
