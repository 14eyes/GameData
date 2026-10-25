require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72201Trigger = class("Q72201Trigger", GadgetActorProxy)
Q72201Trigger.defaultAlias = "Q72201Trigger"
local Q72201ClientConfig = require("Quest/Client/Q72201ClientConfig")

local subIDs = Q72201ClientConfig.SubIDs
local npcs = Q72201ClientConfig.Npcs

function Q72201Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72201Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72201Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72201"):FinishQuestID(false, 7220108)
    self:DestroySelf()
end

function Q72201Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72201Trigger
