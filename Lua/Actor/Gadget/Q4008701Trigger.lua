require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008701Trigger = class("Q4008701Trigger", GadgetActorProxy)
Q4008701Trigger.defaultAlias = "Q4008701Trigger"
local Q40087ClientConfig = require("Quest/Client/Q40087ClientConfig")

local subIDs = Q40087ClientConfig.SubIDs
local datas = Q40087ClientConfig.Datas

function Q4008701Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008701Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, sceneData:GetDummyPoint(3, ""), self.TriggerIn, self.TriggerOut)
end

function Q4008701Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40087"):NarratorOnlyTaskByData(datas.NarratorWithId01, nil, 40087)
    self:DestroySelf()
end

function Q4008701Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008701Trigger
