require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11015Trigger = class("Q11015Trigger", GadgetActorProxy)
Q11015Trigger.defaultAlias = "Q11015Trigger"
local Q11015ClientConfig = require("Quest/Client/Q11015ClientConfig")

local subIDs = Q11015ClientConfig.SubIDs
local npcs = Q11015ClientConfig.Npcs
local datas = Q11015ClientConfig.Datas

function Q11015Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11015Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11015Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11015"):FinishQuestID(false, 1101504)
    self:DestroySelf()
end

function Q11015Trigger:TriggerOut()
    print("TriggerOut")
end

return Q11015Trigger
