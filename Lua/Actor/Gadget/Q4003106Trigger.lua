require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4003106Trigger = class("Q4003106Trigger", GadgetActorProxy)
Q4003106Trigger.defaultAlias = "Q4003106Trigger"
local Q40031ClientConfig = require("Quest/Client/Q40031ClientConfig")

local subIDs = Q40031ClientConfig.SubIDs
local npcs = Q40031ClientConfig.Npcs
local datas = Q40031ClientConfig.Datas

function Q4003106Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4003106Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4003106Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40031")
    actor:NarratorOnlyTask(datas.NarratorTable4003106, nil, "")
    actor:FinishQuestID(false, 4003106)
    self:DestroySelf()
end

function Q4003106Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4003106Trigger
