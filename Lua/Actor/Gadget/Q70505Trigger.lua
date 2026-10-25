require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70505Trigger = class("Q70505Trigger", GadgetActorProxy)
Q70505Trigger.defaultAlias = "Q70505Trigger"
local Q70505ClientConfig = require("Quest/Client/Q70505ClientConfig")

local subIDs = Q70505ClientConfig.SubIDs
local npcs = Q70505ClientConfig.Npcs
local gadgets = Q70505ClientConfig.Gadgets

function Q70505Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70505Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70505Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("70505"):FinishQuestID(false, 7050501)
    self:DestroySelf()
end

function Q70505Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70505Trigger
