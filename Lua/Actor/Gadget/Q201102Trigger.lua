require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q201102Trigger = class("Q201102Trigger", GadgetActorProxy)
Q201102Trigger.defaultAlias = "Q201102Trigger"
local Q2011ClientConfig = require("Quest/Client/Q2011ClientConfig")

local subIDs = Q2011ClientConfig.SubIDs
local npcs = Q2011ClientConfig.Npcs

function Q201102Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q201102Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q201102Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("2011"):FinishQuestID(false, 201102)
    self:DestroySelf()
end

function Q201102Trigger:TriggerOut()
    print("TriggerOut")
end

return Q201102Trigger
