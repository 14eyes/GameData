require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2303203Trigger = class("Q2303203Trigger", GadgetActorProxy)
Q2303203Trigger.defaultAlias = "Q2303203Trigger"
local Q23032ClientConfig = require("Quest/Client/Q23032ClientConfig")

local subIDs = Q23032ClientConfig.SubIDs
local npcs = Q23032ClientConfig.Npcs
local datas = Q23032ClientConfig.Datas

function Q2303203Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2303203Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2303203Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 2303203)
    self:DestroySelf()
end

function Q2303203Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2303203Trigger
