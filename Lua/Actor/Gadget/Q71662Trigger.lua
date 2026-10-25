require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71662Trigger = class("Q71662Trigger", GadgetActorProxy)
Q71662Trigger.defaultAlias = "Q71662Trigger"
local Q71662ClientConfig = require("Quest/Client/Q71662ClientConfig")

local subIDs = Q71662ClientConfig.SubIDs
local npcs = Q71662ClientConfig.Npcs

function Q71662Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q71662Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q71662Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("71662"):FinishQuestID(false, 7166208)
    self:DestroySelf()
end

function Q71662Trigger:TriggerOut()
    print("TriggerOut")
end

return Q71662Trigger
