require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71110Trigger = class("Q71110Trigger", GadgetActorProxy)
Q71110Trigger.defaultAlias = "Q71110Trigger"
local Q71110ClientConfig = require("Quest/Client/Q71110ClientConfig")

local this
local subIDs = Q71110ClientConfig.SubIDs
local npcs = Q71110ClientConfig.Npcs
local points = Q71110ClientConfig.Points
local datas = Q71110ClientConfig.Datas

function Q71110Trigger:OnPostDataPrepare()
    print("[MainId: 71110][Trigger: Q71110Trigger] OnPostDataPrepare")
    this = self
end

function Q71110Trigger:OnPostComponentPrepare()
    print("[MainId: 71110][Trigger: Q71110Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71110)
end

function Q71110Trigger:TriggerIn()
    print("[MainId: 71110][Trigger: Q71110Trigger] TriggerIn")
    actorMgr:GetActor("71110"):RequestInteraction(npcs.Npc21222Data.alias, "", true)
    this:DestroySelf()
end

function Q71110Trigger:PreTriggerIn()
    print("[MainId: 71110][Trigger: Q71110Trigger] PreTriggerIn")
end

function Q71110Trigger:LightUpTriggerIn()
    print("[MainId: 71110][Trigger: Q71110Trigger] LightUpTriggerIn")
end

function Q71110Trigger:TriggerOut()
    print("[MainId: 71110][Trigger: Q71110Trigger] TriggerOut")
end

return Q71110Trigger
