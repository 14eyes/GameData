require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70503Trigger = class("Q70503Trigger", GadgetActorProxy)
Q70503Trigger.defaultAlias = "Q70503Trigger"
local Q70503ClientConfig = require("Quest/Client/Q70503ClientConfig")

local subIDs = Q70503ClientConfig.SubIDs
local npcs = Q70503ClientConfig.Npcs
local gadgets = Q70503ClientConfig.Gadgets

function Q70503Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70503Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70503Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("70503"):FinishQuestID(false, 7050301)
    self:DestroySelf()
end

function Q70503Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70503Trigger
