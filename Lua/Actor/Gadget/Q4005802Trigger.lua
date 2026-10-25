require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005802Trigger = class("Q4005802Trigger", GadgetActorProxy)
Q4005802Trigger.defaultAlias = "Q4005802Trigger"
local Q40058ClientConfig = require("Quest/Client/Q40058ClientConfig")

local subIDs = Q40058ClientConfig.SubIDs
local npcs = Q40058ClientConfig.Npcs
local datas = Q40058ClientConfig.Datas

function Q4005802Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005802Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005802Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4005802)
    self:DestroySelf()
end

function Q4005802Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005802Trigger
