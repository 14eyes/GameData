require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008702Trigger = class("Q4008702Trigger", GadgetActorProxy)
Q4008702Trigger.defaultAlias = "Q4008702Trigger"
local Q40087ClientConfig = require("Quest/Client/Q40087ClientConfig")

local subIDs = Q40087ClientConfig.SubIDs
local datas = Q40087ClientConfig.Datas

function Q4008702Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008702Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, sceneData:GetDummyPoint(3, ""), self.TriggerIn, self.TriggerOut)
end

function Q4008702Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40087"):NarratorOnlyTaskByData(datas.NarratorWithId01, nil, 40087)
    actorUtils.FinishQuestID(false, 4008702)
    self:DestroySelf()
end

function Q4008702Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008702Trigger
