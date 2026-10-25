require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005008Trigger = class("Q4005008Trigger", GadgetActorProxy)
Q4005008Trigger.defaultAlias = "Q4005008Trigger"
local Q40050ClientConfig = require("Quest/Client/Q40050ClientConfig")

local subIDs = Q40050ClientConfig.SubIDs
local datas = Q40050ClientConfig.Datas

function Q4005008Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005008Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005008Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40050"):FinishQuestID(false, 4005008)
    self:DestroySelf()
end

function Q4005008Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005008Trigger
