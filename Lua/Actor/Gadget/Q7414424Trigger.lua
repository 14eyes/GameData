require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414424Trigger = class("Q7414424Trigger", GadgetActorProxy)
Q7414424Trigger.defaultAlias = "Q7414424Trigger"
local Q74144ClientConfig = require("Quest/Client/Q74144ClientConfig")

local this
local subIDs = Q74144ClientConfig.SubIDs
local npcs = Q74144ClientConfig.Npcs
local points = Q74144ClientConfig.Points
local datas = Q74144ClientConfig.Datas

function Q7414424Trigger:OnPostDataPrepare()
    print("[MainId: 74144][Trigger: Q7414424Trigger] OnPostDataPrepare")
    this = self
end

function Q7414424Trigger:OnPostComponentPrepare()
    print("[MainId: 74144][Trigger: Q7414424Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414424Trigger:TriggerIn()
    print("[MainId: 74144][Trigger: Q7414424Trigger] TriggerIn")
    actorMgr:GetActor("74144"):RequestInteraction(npcs.Npc21318Data.alias, "", true)
    this:DestroySelf()
end

function Q7414424Trigger:PreTriggerIn()
    print("[MainId: 74144][Trigger: Q7414424Trigger] PreTriggerIn")
end

function Q7414424Trigger:LightUpTriggerIn()
    print("[MainId: 74144][Trigger: Q7414424Trigger] LightUpTriggerIn")
end

function Q7414424Trigger:TriggerOut()
    print("[MainId: 74144][Trigger: Q7414424Trigger] TriggerOut")
end

return Q7414424Trigger
