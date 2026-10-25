require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005009Trigger = class("Q4005009Trigger", GadgetActorProxy)
Q4005009Trigger.defaultAlias = "Q4005009Trigger"
local Q40050ClientConfig = require("Quest/Client/Q40050ClientConfig")

local subIDs = Q40050ClientConfig.SubIDs
local datas = Q40050ClientConfig.Datas

function Q4005009Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005009Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(31.60117, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005009Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40050")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId4005001, nil, 40050)
    actor:FinishQuestID(false, 4005009)
    self:DestroySelf()
end

function Q4005009Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005009Trigger
