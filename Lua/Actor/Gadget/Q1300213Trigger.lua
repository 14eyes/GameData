require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300213Trigger = class("Q1300213Trigger", GadgetActorProxy)
Q1300213Trigger.defaultAlias = "Q1300213Trigger"
local Q13002ClientConfig = require("Quest/Client/Q13002ClientConfig")

local subIDs = Q13002ClientConfig.SubIDs
local npcs = Q13002ClientConfig.Npcs
local datas = Q13002ClientConfig.Datas

function Q1300213Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1300213Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300213Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13002"):RequestInteraction(npcs.Npc1050Data.alias)
    self:DestroySelf()
end

function Q1300213Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1300213Trigger
