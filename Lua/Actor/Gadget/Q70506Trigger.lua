require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70506Trigger = class("Q70506Trigger", GadgetActorProxy)
Q70506Trigger.defaultAlias = "Q70506Trigger"
local Q70506ClientConfig = require("Quest/Client/Q70506ClientConfig")

local subIDs = Q70506ClientConfig.SubIDs
local npcs = Q70506ClientConfig.Npcs
local gadgets = Q70506ClientConfig.Gadgets

function Q70506Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70506Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70506Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("70506"):FinishQuestID(false, 7050601)
    self:DestroySelf()
end

function Q70506Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70506Trigger
