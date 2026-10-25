require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2302105Trigger = class("Q2302105Trigger", GadgetActorProxy)
Q2302105Trigger.defaultAlias = "Q2302105Trigger"
local Q23021ClientConfig = require("Quest/Client/Q23021ClientConfig")

local subIDs = Q23021ClientConfig.SubIDs
local npcs = Q23021ClientConfig.Npcs
local datas = Q23021ClientConfig.Datas

function Q2302105Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2302105Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2302105Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 2302105)
    self:DestroySelf()
end

function Q2302105Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2302105Trigger
