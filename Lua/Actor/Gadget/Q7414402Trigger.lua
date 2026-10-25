require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414402Trigger = class("Q7414402Trigger", GadgetActorProxy)
Q7414402Trigger.defaultAlias = "Q7414402Trigger"
local Q74144ClientConfig = require("Quest/Client/Q74144ClientConfig")

local this
local subIDs = Q74144ClientConfig.SubIDs
local npcs = Q74144ClientConfig.Npcs
local points = Q74144ClientConfig.Points
local datas = Q74144ClientConfig.Datas

function Q7414402Trigger:OnPostDataPrepare()
    print("[MainId: 74144][Trigger: Q7414402Trigger] OnPostDataPrepare")
    this = self
end

function Q7414402Trigger:OnPostComponentPrepare()
    print("[MainId: 74144][Trigger: Q7414402Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414402Trigger:TriggerIn()
    print("[MainId: 74144][Trigger: Q7414402Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414402)
    this:DestroySelf()
end

function Q7414402Trigger:PreTriggerIn()
    print("[MainId: 74144][Trigger: Q7414402Trigger] PreTriggerIn")
end

function Q7414402Trigger:LightUpTriggerIn()
    print("[MainId: 74144][Trigger: Q7414402Trigger] LightUpTriggerIn")
end

function Q7414402Trigger:TriggerOut()
    print("[MainId: 74144][Trigger: Q7414402Trigger] TriggerOut")
end

return Q7414402Trigger
