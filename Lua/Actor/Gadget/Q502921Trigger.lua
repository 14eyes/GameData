require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502921Trigger = class("Q502921Trigger", GadgetActorProxy)
Q502921Trigger.defaultAlias = "Q502921Trigger"
local Q5029ClientConfig = require("Quest/Client/Q5029ClientConfig")

local this
local subIDs = Q5029ClientConfig.SubIDs
local datas = Q5029ClientConfig.Datas
local npcs = Q5029ClientConfig.Npcs
local points = Q5029ClientConfig.Points

function Q502921Trigger:OnPostDataPrepare()
    print("Q502921Trigger - OnPostDataPrepare")
    this = self
end

function Q502921Trigger:OnPostComponentPrepare()
    print("Q502921Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5029)
end

function Q502921Trigger:TriggerIn()
    print("Q502921Trigger - TriggerIn")
    actorMgr:GetActor("5029"):RequestInteraction(npcs.Npc1089.alias, "", true)
    this:DestroySelf()
end

function Q502921Trigger:PreTriggerIn()
    print("Q502921Trigger - PreTriggerIn")
end

function Q502921Trigger:LightUpTriggerIn()
    print("Q502921Trigger - LightUpTriggerIn")
end

function Q502921Trigger:TriggerOut()
    print("Q502921Trigger - TriggerOut")
end

return Q502921Trigger
