require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7280603Trigger = class("Q7280603Trigger", GadgetActorProxy)
Q7280603Trigger.defaultAlias = "Q7280603Trigger"
local Q72806ClientConfig = require("Quest/Client/Q72806ClientConfig")

local subIDs = Q72806ClientConfig.SubIDs
local npcs = Q72806ClientConfig.Npcs
local datas = Q72806ClientConfig.Datas

function Q7280603Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7280603Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7280603Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("72806")
    actor:NarratorOnlyTask(datas.NarratorTable02, nil, "Story")
    actor:FinishQuestID(false, 7280603)
    self:DestroySelf()
end

function Q7280603Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7280603Trigger
