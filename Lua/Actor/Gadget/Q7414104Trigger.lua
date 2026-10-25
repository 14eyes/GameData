require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414104Trigger = class("Q7414104Trigger", GadgetActorProxy)
Q7414104Trigger.defaultAlias = "Q7414104Trigger"
local Q74141ClientConfig = require("Quest/Client/Q74141ClientConfig")

local this
local subIDs = Q74141ClientConfig.SubIDs
local npcs = Q74141ClientConfig.Npcs
local points = Q74141ClientConfig.Points
local datas = Q74141ClientConfig.Datas

function Q7414104Trigger:OnPostDataPrepare()
    print("[MainId: 74141][Trigger: Q7414104Trigger] OnPostDataPrepare")
    this = self
end

function Q7414104Trigger:OnPostComponentPrepare()
    print("[MainId: 74141][Trigger: Q7414104Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(16, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414104Trigger:TriggerIn()
    print("[MainId: 74141][Trigger: Q7414104Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414104)
    this:DestroySelf()
end

function Q7414104Trigger:PreTriggerIn()
    print("[MainId: 74141][Trigger: Q7414104Trigger] PreTriggerIn")
end

function Q7414104Trigger:LightUpTriggerIn()
    print("[MainId: 74141][Trigger: Q7414104Trigger] LightUpTriggerIn")
end

function Q7414104Trigger:TriggerOut()
    print("[MainId: 74141][Trigger: Q7414104Trigger] TriggerOut")
end

return Q7414104Trigger
