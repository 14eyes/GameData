require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414103Trigger = class("Q7414103Trigger", GadgetActorProxy)
Q7414103Trigger.defaultAlias = "Q7414103Trigger"
local Q74141ClientConfig = require("Quest/Client/Q74141ClientConfig")

local this
local subIDs = Q74141ClientConfig.SubIDs
local npcs = Q74141ClientConfig.Npcs
local points = Q74141ClientConfig.Points
local datas = Q74141ClientConfig.Datas

function Q7414103Trigger:OnPostDataPrepare()
    print("[MainId: 74141][Trigger: Q7414103Trigger] OnPostDataPrepare")
    this = self
end

function Q7414103Trigger:OnPostComponentPrepare()
    print("[MainId: 74141][Trigger: Q7414103Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414103Trigger:TriggerIn()
    print("[MainId: 74141][Trigger: Q7414103Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414103)
    this:DestroySelf()
end

function Q7414103Trigger:PreTriggerIn()
    print("[MainId: 74141][Trigger: Q7414103Trigger] PreTriggerIn")
end

function Q7414103Trigger:LightUpTriggerIn()
    print("[MainId: 74141][Trigger: Q7414103Trigger] LightUpTriggerIn")
end

function Q7414103Trigger:TriggerOut()
    print("[MainId: 74141][Trigger: Q7414103Trigger] TriggerOut")
end

return Q7414103Trigger
