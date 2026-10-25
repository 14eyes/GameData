require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74183Trigger = class("Q74183Trigger", GadgetActorProxy)
Q74183Trigger.defaultAlias = "Q74183Trigger"
local Q74183ClientConfig = require("Quest/Client/Q74183ClientConfig")

local this
local subIDs = Q74183ClientConfig.SubIDs
local npcs = Q74183ClientConfig.Npcs
local points = Q74183ClientConfig.Points
local datas = Q74183ClientConfig.Datas

function Q74183Trigger:OnPostDataPrepare()
    print("[MainId: 74183][Trigger: Q74183Trigger] OnPostDataPrepare")
    this = self
end

function Q74183Trigger:OnPostComponentPrepare()
    print("[MainId: 74183][Trigger: Q74183Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(385.283, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74183Trigger:TriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7418301)
    this:DestroySelf()
end

function Q74183Trigger:PreTriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger] PreTriggerIn")
end

function Q74183Trigger:LightUpTriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger] LightUpTriggerIn")
end

function Q74183Trigger:TriggerOut()
    print("[MainId: 74183][Trigger: Q74183Trigger] TriggerOut")
end

return Q74183Trigger
