require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2302708Trigger = class("Q2302708Trigger", GadgetActorProxy)
Q2302708Trigger.defaultAlias = "Q2302708Trigger"
local Q23027ClientConfig = require("Quest/Client/Q23027ClientConfig")

local subIDs = Q23027ClientConfig.SubIDs
local npcs = Q23027ClientConfig.Npcs
local datas = Q23027ClientConfig.Datas

function Q2302708Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2302708Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2302708Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 2302708)
    self:DestroySelf()
end

function Q2302708Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2302708Trigger
