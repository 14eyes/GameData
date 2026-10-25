require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007806Trigger = class("Q4007806Trigger", GadgetActorProxy)
Q4007806Trigger.defaultAlias = "Q4007806Trigger"
local Q40078ClientConfig = require("Quest/Client/Q40078ClientConfig")

local subIDs = Q40078ClientConfig.SubIDs
local npcs = Q40078ClientConfig.Npcs
local gadgets = Q40078ClientConfig.Gadgets
local datas = Q40078ClientConfig.Datas

function Q4007806Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007806Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10.30739, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007806Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007806)
    actorMgr:GetActor("40078"):NarratorOnlyTaskByData(datas.NarratorWithId4007803)
    self:DestroySelf()
end

function Q4007806Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007806Trigger
