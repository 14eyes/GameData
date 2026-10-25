require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005006Trigger = class("Q4005006Trigger", GadgetActorProxy)
Q4005006Trigger.defaultAlias = "Q4005006Trigger"
local Q40050ClientConfig = require("Quest/Client/Q40050ClientConfig")

local subIDs = Q40050ClientConfig.SubIDs
local datas = Q40050ClientConfig.Datas

function Q4005006Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005006Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30.06051, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005006Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40050"):FinishQuestID(false, 4005006)
    self:DestroySelf()
end

function Q4005006Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005006Trigger
