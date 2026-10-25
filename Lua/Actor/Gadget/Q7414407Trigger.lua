require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414407Trigger = class("Q7414407Trigger", GadgetActorProxy)
Q7414407Trigger.defaultAlias = "Q7414407Trigger"
local Q74144ClientConfig = require("Quest/Client/Q74144ClientConfig")

local this
local subIDs = Q74144ClientConfig.SubIDs
local npcs = Q74144ClientConfig.Npcs
local points = Q74144ClientConfig.Points
local datas = Q74144ClientConfig.Datas

function Q7414407Trigger:OnPostDataPrepare()
    print("[MainId: 74144][Trigger: Q7414407Trigger] OnPostDataPrepare")
    this = self
end

function Q7414407Trigger:OnPostComponentPrepare()
    print("[MainId: 74144][Trigger: Q7414407Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414407Trigger:TriggerIn()
    print("[MainId: 74144][Trigger: Q7414407Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414407)
    this:DestroySelf()
end

function Q7414407Trigger:PreTriggerIn()
    print("[MainId: 74144][Trigger: Q7414407Trigger] PreTriggerIn")
end

function Q7414407Trigger:LightUpTriggerIn()
    print("[MainId: 74144][Trigger: Q7414407Trigger] LightUpTriggerIn")
end

function Q7414407Trigger:TriggerOut()
    print("[MainId: 74144][Trigger: Q7414407Trigger] TriggerOut")
end

return Q7414407Trigger
