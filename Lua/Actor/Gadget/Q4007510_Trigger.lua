require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007510_Trigger = class("Q4007510_Trigger", GadgetActorProxy)
Q4007510_Trigger.defaultAlias = "Q4007510_Trigger"
local Q40075ClientConfig = require("Quest/Client/Q40075ClientConfig")

local subIDs = Q40075ClientConfig.SubIDs
local npcs = Q40075ClientConfig.Npcs
local datas = Q40075ClientConfig.Datas

function Q4007510_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007510_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007510_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007510)
    self:DestroySelf()
end

function Q4007510_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007510_Trigger
