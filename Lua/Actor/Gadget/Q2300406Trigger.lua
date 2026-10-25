require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2300406Trigger = class("Q2300406Trigger", GadgetActorProxy)
Q2300406Trigger.defaultAlias = "Q2300406Trigger"
local Q23004ClientConfig = require("Quest/Client/Q23004ClientConfig")

local subIDs = Q23004ClientConfig.SubIDs
local datas = Q23004ClientConfig.Datas

function Q2300406Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2300406Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2300406Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23004"):NarratorOnlyTask(datas.NarratorTable06, nil, "")
    actorUtils.FinishQuestID(false, 2301107)
    self:DestroySelf()
end

function Q2300406Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2300406Trigger
