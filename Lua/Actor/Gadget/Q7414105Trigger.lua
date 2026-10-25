require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414105Trigger = class("Q7414105Trigger", GadgetActorProxy)
Q7414105Trigger.defaultAlias = "Q7414105Trigger"
local Q74141ClientConfig = require("Quest/Client/Q74141ClientConfig")

local this
local subIDs = Q74141ClientConfig.SubIDs
local npcs = Q74141ClientConfig.Npcs
local points = Q74141ClientConfig.Points
local datas = Q74141ClientConfig.Datas

function Q7414105Trigger:OnPostDataPrepare()
    print("[MainId: 74141][Trigger: Q7414105Trigger] OnPostDataPrepare")
    this = self
end

function Q7414105Trigger:OnPostComponentPrepare()
    print("[MainId: 74141][Trigger: Q7414105Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414105Trigger:TriggerIn()
    print("[MainId: 74141][Trigger: Q7414105Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414105)
    this:DestroySelf()
end

function Q7414105Trigger:PreTriggerIn()
    print("[MainId: 74141][Trigger: Q7414105Trigger] PreTriggerIn")
end

function Q7414105Trigger:LightUpTriggerIn()
    print("[MainId: 74141][Trigger: Q7414105Trigger] LightUpTriggerIn")
end

function Q7414105Trigger:TriggerOut()
    print("[MainId: 74141][Trigger: Q7414105Trigger] TriggerOut")
end

return Q7414105Trigger
