require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7303405Trigger = class("Q7303405Trigger", GadgetActorProxy)
Q7303405Trigger.defaultAlias = "Q7303405Trigger"
local Q73034ClientConfig = require("Quest/Client/Q73034ClientConfig")

local subIDs = Q73034ClientConfig.SubIDs
local npcs = Q73034ClientConfig.Npcs
local datas = Q73034ClientConfig.Datas

function Q7303405Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7303405Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7303405Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7303405)
    self:DestroySelf()
end

function Q7303405Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7303405Trigger
