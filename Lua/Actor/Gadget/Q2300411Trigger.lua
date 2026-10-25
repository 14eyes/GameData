require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2300411Trigger = class("Q2300411Trigger", GadgetActorProxy)
Q2300411Trigger.defaultAlias = "Q2300411Trigger"
local Q23004ClientConfig = require("Quest/Client/Q23004ClientConfig")

local subIDs = Q23004ClientConfig.SubIDs
local npcs = Q23004ClientConfig.Npcs
local datas = Q23004ClientConfig.Datas

function Q2300411Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2300411Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2300411Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23004"):NarratorOnlyTaskByData(datas.Narrator_23004)
    actorUtils.FinishQuestID(false, 2300411)
    self:DestroySelf()
end

function Q2300411Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2300411Trigger
