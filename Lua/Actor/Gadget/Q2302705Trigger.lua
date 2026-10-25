require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2302705Trigger = class("Q2302705Trigger", GadgetActorProxy)
Q2302705Trigger.defaultAlias = "Q2302705Trigger"
local Q23027ClientConfig = require("Quest/Client/Q23027ClientConfig")

local subIDs = Q23027ClientConfig.SubIDs
local npcs = Q23027ClientConfig.Npcs
local datas = Q23027ClientConfig.Datas

function Q2302705Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2302705Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2302705Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 2302705)
    self:DestroySelf()
end

function Q2302705Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2302705Trigger
