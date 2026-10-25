require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7302802Trigger = class("Q7302802Trigger", GadgetActorProxy)
Q7302802Trigger.defaultAlias = "Q7302802Trigger"
local Q73028ClientConfig = require("Quest/Client/Q73028ClientConfig")

local subIDs = Q73028ClientConfig.SubIDs
local npcs = Q73028ClientConfig.Npcs
local datas = Q73028ClientConfig.Datas

function Q7302802Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7302802Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(34, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7302802Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7302802)
    self:DestroySelf()
end

function Q7302802Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7302802Trigger
