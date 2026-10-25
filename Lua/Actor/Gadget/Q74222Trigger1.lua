require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74222Trigger1 = class("Q74222Trigger1", GadgetActorProxy)
Q74222Trigger1.defaultAlias = "Q74222Trigger1"
local Q74222ClientConfig = require("Quest/Client/Q74222ClientConfig")

local this
local subIDs = Q74222ClientConfig.SubIDs
local npcs = Q74222ClientConfig.Npcs
local points = Q74222ClientConfig.Points

function Q74222Trigger1:OnPostDataPrepare()
    print("[MainId: 74222][Trigger: Q74222Trigger1] OnPostDataPrepare")
    this = self
end

function Q74222Trigger1:OnPostComponentPrepare()
    print("[MainId: 74222][Trigger: Q74222Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(200, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74222)
end

function Q74222Trigger1:TriggerIn()
    print("[MainId: 74222][Trigger: Q74222Trigger1] TriggerIn")
    actorUtils.FinishQuestID(false, 7422211)
    this:DestroySelf()
end

function Q74222Trigger1:PreTriggerIn()
    print("[MainId: 74222][Trigger: Q74222Trigger1] PreTriggerIn")
end

function Q74222Trigger1:LightUpTriggerIn()
    print("[MainId: 74222][Trigger: Q74222Trigger1] LightUpTriggerIn")
end

function Q74222Trigger1:TriggerOut()
    print("[MainId: 74222][Trigger: Q74222Trigger1] TriggerOut")
end

return Q74222Trigger1
