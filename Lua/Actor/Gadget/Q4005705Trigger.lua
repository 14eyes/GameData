require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005705Trigger = class("Q4005705Trigger", GadgetActorProxy)
Q4005705Trigger.defaultAlias = "Q4005705Trigger"
local Q40057ClientConfig = require("Quest/Client/Q40057ClientConfig")

local subIDs = Q40057ClientConfig.SubIDs
local npcs = Q40057ClientConfig.Npcs
local datas = Q40057ClientConfig.Datas

function Q4005705Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005705Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005705Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4005705)
    self:DestroySelf()
end

function Q4005705Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005705Trigger
