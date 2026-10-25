require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005114Trigger = class("Q4005114Trigger", GadgetActorProxy)
Q4005114Trigger.defaultAlias = "Q4005114Trigger"
local Q40051ClientConfig = require("Quest/Client/Q40051ClientConfig")

local subIDs = Q40051ClientConfig.SubIDs
local npcs = Q40051ClientConfig.Npcs
local datas = Q40051ClientConfig.Datas

function Q4005114Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005114Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005114Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40051"):FinishQuestID(false, 4005114)
    self:DestroySelf()
end

function Q4005114Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005114Trigger
