require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2016Trigger = class("Q2016Trigger", GadgetActorProxy)
Q2016Trigger.defaultAlias = "Q2016Trigger"
local Q2016ClientConfig = require("Quest/Client/Q2016ClientConfig")

local subIDs = Q2016ClientConfig.SubIDs
local npcs = Q2016ClientConfig.Npcs

function Q2016Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2016Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2016Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("2016"):FinishQuestID(false, 201606)
    self:DestroySelf()
end

function Q2016Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2016Trigger
