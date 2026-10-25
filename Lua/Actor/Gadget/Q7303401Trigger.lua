require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7303401Trigger = class("Q7303401Trigger", GadgetActorProxy)
Q7303401Trigger.defaultAlias = "Q7303401Trigger"
local Q73034ClientConfig = require("Quest/Client/Q73034ClientConfig")

local subIDs = Q73034ClientConfig.SubIDs
local npcs = Q73034ClientConfig.Npcs
local datas = Q73034ClientConfig.Datas

function Q7303401Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7303401Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7303401Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7303401)
    self:DestroySelf()
end

function Q7303401Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7303401Trigger
