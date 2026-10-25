require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414112Trigger = class("Q7414112Trigger", GadgetActorProxy)
Q7414112Trigger.defaultAlias = "Q7414112Trigger"
local Q74141ClientConfig = require("Quest/Client/Q74141ClientConfig")

local this
local subIDs = Q74141ClientConfig.SubIDs
local npcs = Q74141ClientConfig.Npcs
local points = Q74141ClientConfig.Points
local datas = Q74141ClientConfig.Datas

function Q7414112Trigger:OnPostDataPrepare()
    print("[MainId: 74141][Trigger: Q7414112Trigger] OnPostDataPrepare")
    this = self
end

function Q7414112Trigger:OnPostComponentPrepare()
    print("[MainId: 74141][Trigger: Q7414112Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(400, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414112Trigger:TriggerIn()
    print("[MainId: 74141][Trigger: Q7414112Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414112)
    this:DestroySelf()
end

function Q7414112Trigger:PreTriggerIn()
    print("[MainId: 74141][Trigger: Q7414112Trigger] PreTriggerIn")
end

function Q7414112Trigger:LightUpTriggerIn()
    print("[MainId: 74141][Trigger: Q7414112Trigger] LightUpTriggerIn")
end

function Q7414112Trigger:TriggerOut()
    print("[MainId: 74141][Trigger: Q7414112Trigger] TriggerOut")
end

return Q7414112Trigger
