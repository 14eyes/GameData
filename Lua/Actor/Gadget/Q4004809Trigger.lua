require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4004809Trigger = class("Q4004809Trigger", GadgetActorProxy)
Q4004809Trigger.defaultAlias = "Q4004809Trigger"
local Q40048ClientConfig = require("Quest/Client/Q40048ClientConfig")

local subIDs = Q40048ClientConfig.SubIDs
local datas = Q40048ClientConfig.Datas

function Q4004809Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4004809Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30.07977, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4004809Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40048")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId4004802, nil, 40048)
    actor:FinishQuestID(false, 4004809)
    self:DestroySelf()
end

function Q4004809Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4004809Trigger
