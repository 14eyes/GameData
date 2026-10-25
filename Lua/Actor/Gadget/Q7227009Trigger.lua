require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7227009Trigger = class("Q7227009Trigger", GadgetActorProxy)
Q7227009Trigger.defaultAlias = "Q7227009Trigger"
local Q72270ClientConfig = require("Quest/Client/Q72270ClientConfig")

local subIDs = Q72270ClientConfig.SubIDs
local npcs = Q72270ClientConfig.Npcs

function Q7227009Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7227009Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3.913826, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7227009Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72270"):FinishQuestID(false, 7227009)
    self:DestroySelf()
end

function Q7227009Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7227009Trigger
