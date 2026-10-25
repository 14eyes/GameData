require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005007Trigger = class("Q4005007Trigger", GadgetActorProxy)
Q4005007Trigger.defaultAlias = "Q4005007Trigger"
local Q40050ClientConfig = require("Quest/Client/Q40050ClientConfig")

local subIDs = Q40050ClientConfig.SubIDs
local datas = Q40050ClientConfig.Datas

function Q4005007Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005007Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15.02711, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005007Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40050"):FinishQuestID(false, 4005007)
    self:DestroySelf()
end

function Q4005007Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005007Trigger
