require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70509Trigger = class("Q70509Trigger", GadgetActorProxy)
Q70509Trigger.defaultAlias = "Q70509Trigger"
local Q70509ClientConfig = require("Quest/Client/Q70509ClientConfig")

local subIDs = Q70509ClientConfig.SubIDs
local npcs = Q70509ClientConfig.Npcs
local gadgets = Q70509ClientConfig.Gadgets

function Q70509Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70509Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70509Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("70509"):FinishQuestID(false, 7050901)
    self:DestroySelf()
end

function Q70509Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70509Trigger
