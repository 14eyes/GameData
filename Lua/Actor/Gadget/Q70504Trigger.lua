require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70504Trigger = class("Q70504Trigger", GadgetActorProxy)
Q70504Trigger.defaultAlias = "Q70504Trigger"
local Q70504ClientConfig = require("Quest/Client/Q70504ClientConfig")

local subIDs = Q70504ClientConfig.SubIDs
local npcs = Q70504ClientConfig.Npcs
local gadgets = Q70504ClientConfig.Gadgets

function Q70504Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70504Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70504Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("70504"):FinishQuestID(false, 7050401)
    self:DestroySelf()
end

function Q70504Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70504Trigger
