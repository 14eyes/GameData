require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7111008Trigger = class("Q7111008Trigger", GadgetActorProxy)
Q7111008Trigger.defaultAlias = "Q7111008Trigger"
local Q71110ClientConfig = require("Quest/Client/Q71110ClientConfig")

local this
local subIDs = Q71110ClientConfig.SubIDs
local npcs = Q71110ClientConfig.Npcs
local points = Q71110ClientConfig.Points
local datas = Q71110ClientConfig.Datas

function Q7111008Trigger:OnPostDataPrepare()
    print("[MainId: 71110][Trigger: Q7111008Trigger] OnPostDataPrepare")
    this = self
end

function Q7111008Trigger:OnPostComponentPrepare()
    print("[MainId: 71110][Trigger: Q7111008Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7111008Trigger:TriggerIn()
    print("[MainId: 71110][Trigger: Q7111008Trigger] TriggerIn")
    actorMgr:GetActor("71110"):RequestInteraction(npcs.Npc2472Data.alias, "", true)
    this:DestroySelf()
end

function Q7111008Trigger:PreTriggerIn()
    print("[MainId: 71110][Trigger: Q7111008Trigger] PreTriggerIn")
end

function Q7111008Trigger:LightUpTriggerIn()
    print("[MainId: 71110][Trigger: Q7111008Trigger] LightUpTriggerIn")
end

function Q7111008Trigger:TriggerOut()
    print("[MainId: 71110][Trigger: Q7111008Trigger] TriggerOut")
end

return Q7111008Trigger
