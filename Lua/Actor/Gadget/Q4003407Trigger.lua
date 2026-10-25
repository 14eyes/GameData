require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4003407Trigger = class("Q4003407Trigger", GadgetActorProxy)
Q4003407Trigger.defaultAlias = "Q4003407Trigger"
local Q40034ClientConfig = require("Quest/Client/Q40034ClientConfig")

local subIDs = Q40034ClientConfig.SubIDs
local npcs = Q40034ClientConfig.Npcs
local datas = Q40034ClientConfig.Datas

function Q4003407Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4003407Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4003407Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40034"):FinishQuestID(false, 4003407)
    self:DestroySelf()
end

function Q4003407Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4003407Trigger
