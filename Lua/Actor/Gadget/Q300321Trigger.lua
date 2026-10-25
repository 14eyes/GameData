require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300321Trigger = class("Q300321Trigger", GadgetActorProxy)
Q300321Trigger.defaultAlias = "Q300321Trigger"
local Q3003ClientConfig = require("Quest/Client/Q3003ClientConfig")

local subIDs = Q3003ClientConfig.SubIDs
local npcs = Q3003ClientConfig.Npcs
local gadgets = Q3003ClientConfig.Gadgets
local points = Q3003ClientConfig.Points
local datas = Q3003ClientConfig.Datas

function Q300321Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300321Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300321Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3003"):TransmitPlayerByQuestId(300321, 300321)
    self:DestroySelf()
end

function Q300321Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300321Trigger
