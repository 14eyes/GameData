require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7302703Trigger = class("Q7302703Trigger", GadgetActorProxy)
Q7302703Trigger.defaultAlias = "Q7302703Trigger"
local Q73027ClientConfig = require("Quest/Client/Q73027ClientConfig")

local subIDs = Q73027ClientConfig.SubIDs
local npcs = Q73027ClientConfig.Npcs
local datas = Q73027ClientConfig.Datas

function Q7302703Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7302703Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7302703Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7302703)
    self:DestroySelf()
end

function Q7302703Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7302703Trigger
