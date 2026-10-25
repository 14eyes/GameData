require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414427Trigger = class("Q7414427Trigger", GadgetActorProxy)
Q7414427Trigger.defaultAlias = "Q7414427Trigger"
local Q74144ClientConfig = require("Quest/Client/Q74144ClientConfig")

local this
local subIDs = Q74144ClientConfig.SubIDs
local npcs = Q74144ClientConfig.Npcs
local points = Q74144ClientConfig.Points
local datas = Q74144ClientConfig.Datas

function Q7414427Trigger:OnPostDataPrepare()
    print("[MainId: 74144][Trigger: Q7414427Trigger] OnPostDataPrepare")
    this = self
end

function Q7414427Trigger:OnPostComponentPrepare()
    print("[MainId: 74144][Trigger: Q7414427Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7414427Trigger:TriggerIn()
    print("[MainId: 74144][Trigger: Q7414427Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414427)
    this:DestroySelf()
end

function Q7414427Trigger:PreTriggerIn()
    print("[MainId: 74144][Trigger: Q7414427Trigger] PreTriggerIn")
end

function Q7414427Trigger:LightUpTriggerIn()
    print("[MainId: 74144][Trigger: Q7414427Trigger] LightUpTriggerIn")
end

function Q7414427Trigger:TriggerOut()
    print("[MainId: 74144][Trigger: Q7414427Trigger] TriggerOut")
end

return Q7414427Trigger
