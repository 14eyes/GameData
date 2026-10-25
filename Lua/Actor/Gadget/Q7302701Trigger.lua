require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7302701Trigger = class("Q7302701Trigger", GadgetActorProxy)
Q7302701Trigger.defaultAlias = "Q7302701Trigger"
local Q73027ClientConfig = require("Quest/Client/Q73027ClientConfig")

local subIDs = Q73027ClientConfig.SubIDs
local npcs = Q73027ClientConfig.Npcs
local datas = Q73027ClientConfig.Datas

function Q7302701Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7302701Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7302701Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7302701)
    self:DestroySelf()
end

function Q7302701Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7302701Trigger
