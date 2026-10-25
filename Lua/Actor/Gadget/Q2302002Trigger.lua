require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2302002Trigger = class("Q2302002Trigger", GadgetActorProxy)
Q2302002Trigger.defaultAlias = "Q2302002Trigger"
local Q23020ClientConfig = require("Quest/Client/Q23020ClientConfig")

local subIDs = Q23020ClientConfig.SubIDs
local npcs = Q23020ClientConfig.Npcs
local datas = Q23020ClientConfig.Datas

function Q2302002Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2302002Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2302002Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 2302002)
    self:DestroySelf()
end

function Q2302002Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2302002Trigger
