require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7267002Trigger = class("Q7267002Trigger", GadgetActorProxy)
Q7267002Trigger.defaultAlias = "Q7267002Trigger"
local Q72670ClientConfig = require("Quest/Client/Q72670ClientConfig")

local subIDs = Q72670ClientConfig.SubIDs
local npcs = Q72670ClientConfig.Npcs
local datas = Q72670ClientConfig.Datas

function Q7267002Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7267002Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7267002Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72670"):FinishQuestID(false, 7267002)
    self:DestroySelf()
end

function Q7267002Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7267002Trigger
