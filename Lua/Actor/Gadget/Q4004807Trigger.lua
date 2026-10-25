require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4004807Trigger = class("Q4004807Trigger", GadgetActorProxy)
Q4004807Trigger.defaultAlias = "Q4004807Trigger"
local Q40048ClientConfig = require("Quest/Client/Q40048ClientConfig")

local subIDs = Q40048ClientConfig.SubIDs
local datas = Q40048ClientConfig.Datas

function Q4004807Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4004807Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(19.38085, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4004807Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40048"):FinishQuestID(false, 4004807)
    self:DestroySelf()
end

function Q4004807Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4004807Trigger
