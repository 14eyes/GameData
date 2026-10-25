require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414303Trigger = class("Q7414303Trigger", GadgetActorProxy)
Q7414303Trigger.defaultAlias = "Q7414303Trigger"
local Q74143ClientConfig = require("Quest/Client/Q74143ClientConfig")

local this
local subIDs = Q74143ClientConfig.SubIDs
local npcs = Q74143ClientConfig.Npcs
local points = Q74143ClientConfig.Points
local datas = Q74143ClientConfig.Datas

function Q7414303Trigger:OnPostDataPrepare()
    print("[MainId: 74143][Trigger: Q7414303Trigger] OnPostDataPrepare")
    this = self
end

function Q7414303Trigger:OnPostComponentPrepare()
    print("[MainId: 74143][Trigger: Q7414303Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414303Trigger:TriggerIn()
    print("[MainId: 74143][Trigger: Q7414303Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414303)
    this:DestroySelf()
end

function Q7414303Trigger:PreTriggerIn()
    print("[MainId: 74143][Trigger: Q7414303Trigger] PreTriggerIn")
end

function Q7414303Trigger:LightUpTriggerIn()
    print("[MainId: 74143][Trigger: Q7414303Trigger] LightUpTriggerIn")
end

function Q7414303Trigger:TriggerOut()
    print("[MainId: 74143][Trigger: Q7414303Trigger] TriggerOut")
end

return Q7414303Trigger
