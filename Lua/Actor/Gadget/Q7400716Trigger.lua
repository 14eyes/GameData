require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400716Trigger = class("Q7400716Trigger", GadgetActorProxy)
Q7400716Trigger.defaultAlias = "Q7400716Trigger"
local Q74007ClientConfig = require("Quest/Client/Q74007ClientConfig")

local this
local subIDs = Q74007ClientConfig.SubIDs
local npcs = Q74007ClientConfig.Npcs
local points = Q74007ClientConfig.Points
local datas = Q74007ClientConfig.Datas

function Q7400716Trigger:OnPostDataPrepare()
    print("[MainId: 74007][Trigger: Q7400716Trigger] OnPostDataPrepare")
    this = self
end

function Q7400716Trigger:OnPostComponentPrepare()
    print("[MainId: 74007][Trigger: Q7400716Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400716Trigger:TriggerIn()
    print("[MainId: 74007][Trigger: Q7400716Trigger] TriggerIn")
    actorMgr:GetActor("74007"):RequestInteraction(npcs.Npc20985Data.alias)
    this:DestroySelf()
end

function Q7400716Trigger:PreTriggerIn()
    print("[MainId: 74007][Trigger: Q7400716Trigger] PreTriggerIn")
end

function Q7400716Trigger:LightUpTriggerIn()
    print("[MainId: 74007][Trigger: Q7400716Trigger] LightUpTriggerIn")
end

function Q7400716Trigger:TriggerOut()
    print("[MainId: 74007][Trigger: Q7400716Trigger] TriggerOut")
end

return Q7400716Trigger
