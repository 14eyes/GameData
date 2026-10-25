require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005707Trigger = class("Q4005707Trigger", GadgetActorProxy)
Q4005707Trigger.defaultAlias = "Q4005707Trigger"
local Q40057ClientConfig = require("Quest/Client/Q40057ClientConfig")

local subIDs = Q40057ClientConfig.SubIDs
local npcs = Q40057ClientConfig.Npcs
local datas = Q40057ClientConfig.Datas

function Q4005707Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005707Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005707Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4005707)
    self:DestroySelf()
end

function Q4005707Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005707Trigger
