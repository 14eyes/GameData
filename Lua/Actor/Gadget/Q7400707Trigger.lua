require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400707Trigger = class("Q7400707Trigger", GadgetActorProxy)
Q7400707Trigger.defaultAlias = "Q7400707Trigger"
local Q74007ClientConfig = require("Quest/Client/Q74007ClientConfig")

local this
local subIDs = Q74007ClientConfig.SubIDs
local npcs = Q74007ClientConfig.Npcs
local points = Q74007ClientConfig.Points
local datas = Q74007ClientConfig.Datas

function Q7400707Trigger:OnPostDataPrepare()
    print("[MainId: 74007][Trigger: Q7400707Trigger] OnPostDataPrepare")
    this = self
end

function Q7400707Trigger:OnPostComponentPrepare()
    print("[MainId: 74007][Trigger: Q7400707Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400707Trigger:TriggerIn()
    print("[MainId: 74007][Trigger: Q7400707Trigger] TriggerIn")
    actorMgr:GetActor("74007"):RequestInteraction(npcs.Npc21031Data.alias)
    this:DestroySelf()
end

function Q7400707Trigger:PreTriggerIn()
    print("[MainId: 74007][Trigger: Q7400707Trigger] PreTriggerIn")
end

function Q7400707Trigger:LightUpTriggerIn()
    print("[MainId: 74007][Trigger: Q7400707Trigger] LightUpTriggerIn")
end

function Q7400707Trigger:TriggerOut()
    print("[MainId: 74007][Trigger: Q7400707Trigger] TriggerOut")
end

return Q7400707Trigger
