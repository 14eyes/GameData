require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2302202Trigger = class("Q2302202Trigger", GadgetActorProxy)
Q2302202Trigger.defaultAlias = "Q2302202Trigger"
local Q23022ClientConfig = require("Quest/Client/Q23022ClientConfig")

local subIDs = Q23022ClientConfig.SubIDs
local npcs = Q23022ClientConfig.Npcs
local datas = Q23022ClientConfig.Datas

function Q2302202Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2302202Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2302202Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 2302202)
    self:DestroySelf()
end

function Q2302202Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2302202Trigger
