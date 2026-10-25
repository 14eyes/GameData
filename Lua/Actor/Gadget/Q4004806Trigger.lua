require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4004806Trigger = class("Q4004806Trigger", GadgetActorProxy)
Q4004806Trigger.defaultAlias = "Q4004806Trigger"
local Q40048ClientConfig = require("Quest/Client/Q40048ClientConfig")

local subIDs = Q40048ClientConfig.SubIDs
local datas = Q40048ClientConfig.Datas

function Q4004806Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4004806Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(24.46929, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4004806Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40048"):FinishQuestID(false, 4004806)
    self:DestroySelf()
end

function Q4004806Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4004806Trigger
