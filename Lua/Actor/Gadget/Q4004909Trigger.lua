require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4004909Trigger = class("Q4004909Trigger", GadgetActorProxy)
Q4004909Trigger.defaultAlias = "Q4004909Trigger"
local Q40049ClientConfig = require("Quest/Client/Q40049ClientConfig")

local subIDs = Q40049ClientConfig.SubIDs
local datas = Q40049ClientConfig.Datas

function Q4004909Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4004909Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(46.84653, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4004909Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40049")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId4004901, nil, 40049)
    actor:FinishQuestID(false, 4004909)
    self:DestroySelf()
end

function Q4004909Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4004909Trigger
