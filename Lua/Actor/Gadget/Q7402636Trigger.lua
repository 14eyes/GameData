require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402636Trigger = class("Q7402636Trigger", GadgetActorProxy)
Q7402636Trigger.defaultAlias = "Q7402636Trigger"
local Q74026ClientConfig = require("Quest/Client/Q74026ClientConfig")

local this
local subIDs = Q74026ClientConfig.SubIDs
local npcs = Q74026ClientConfig.Npcs
local points = Q74026ClientConfig.Points
local datas = Q74026ClientConfig.Datas

function Q7402636Trigger:OnPostDataPrepare()
    print("[MainId: 74026][Trigger: Q7402636Trigger] OnPostDataPrepare")
    this = self
end

function Q7402636Trigger:OnPostComponentPrepare()
    print("[MainId: 74026][Trigger: Q7402636Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402636Trigger:TriggerIn()
    print("[MainId: 74026][Trigger: Q7402636Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402636)
    this:DestroySelf()
end

function Q7402636Trigger:PreTriggerIn()
    print("[MainId: 74026][Trigger: Q7402636Trigger] PreTriggerIn")
end

function Q7402636Trigger:LightUpTriggerIn()
    print("[MainId: 74026][Trigger: Q7402636Trigger] LightUpTriggerIn")
end

function Q7402636Trigger:TriggerOut()
    print("[MainId: 74026][Trigger: Q7402636Trigger] TriggerOut")
end

return Q7402636Trigger
