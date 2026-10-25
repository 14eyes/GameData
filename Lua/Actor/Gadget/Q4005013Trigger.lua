require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005013Trigger = class("Q4005013Trigger", GadgetActorProxy)
Q4005013Trigger.defaultAlias = "Q4005013Trigger"
local Q40050ClientConfig = require("Quest/Client/Q40050ClientConfig")

local subIDs = Q40050ClientConfig.SubIDs
local datas = Q40050ClientConfig.Datas

function Q4005013Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005013Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15.83169, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005013Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40050"):FinishQuestID(false, 4005013)
    self:DestroySelf()
end

function Q4005013Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005013Trigger
