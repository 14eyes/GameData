require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70507Trigger = class("Q70507Trigger", GadgetActorProxy)
Q70507Trigger.defaultAlias = "Q70507Trigger"
local Q70507ClientConfig = require("Quest/Client/Q70507ClientConfig")

local subIDs = Q70507ClientConfig.SubIDs
local npcs = Q70507ClientConfig.Npcs
local gadgets = Q70507ClientConfig.Gadgets

function Q70507Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70507Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70507Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("70507"):FinishQuestID(false, 7050701)
    self:DestroySelf()
end

function Q70507Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70507Trigger
