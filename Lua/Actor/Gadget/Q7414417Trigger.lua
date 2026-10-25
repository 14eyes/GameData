require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414417Trigger = class("Q7414417Trigger", GadgetActorProxy)
Q7414417Trigger.defaultAlias = "Q7414417Trigger"
local Q74144ClientConfig = require("Quest/Client/Q74144ClientConfig")

local this
local subIDs = Q74144ClientConfig.SubIDs
local npcs = Q74144ClientConfig.Npcs
local points = Q74144ClientConfig.Points
local datas = Q74144ClientConfig.Datas

function Q7414417Trigger:OnPostDataPrepare()
    print("[MainId: 74144][Trigger: Q7414417Trigger] OnPostDataPrepare")
    this = self
end

function Q7414417Trigger:OnPostComponentPrepare()
    print("[MainId: 74144][Trigger: Q7414417Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(22, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414417Trigger:TriggerIn()
    print("[MainId: 74144][Trigger: Q7414417Trigger] TriggerIn")
    actorMgr:GetActor("74144"):RequestInteraction(npcs.Npc21232Data.alias, "", true)
    this:DestroySelf()
end

function Q7414417Trigger:PreTriggerIn()
    print("[MainId: 74144][Trigger: Q7414417Trigger] PreTriggerIn")
end

function Q7414417Trigger:LightUpTriggerIn()
    print("[MainId: 74144][Trigger: Q7414417Trigger] LightUpTriggerIn")
end

function Q7414417Trigger:TriggerOut()
    print("[MainId: 74144][Trigger: Q7414417Trigger] TriggerOut")
end

return Q7414417Trigger
