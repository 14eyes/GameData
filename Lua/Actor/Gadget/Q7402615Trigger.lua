require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402615Trigger = class("Q7402615Trigger", GadgetActorProxy)
Q7402615Trigger.defaultAlias = "Q7402615Trigger"
local Q74026ClientConfig = require("Quest/Client/Q74026ClientConfig")

local this
local subIDs = Q74026ClientConfig.SubIDs
local npcs = Q74026ClientConfig.Npcs
local points = Q74026ClientConfig.Points
local datas = Q74026ClientConfig.Datas

function Q7402615Trigger:OnPostDataPrepare()
    print("[MainId: 74026][Trigger: Q7402615Trigger] OnPostDataPrepare")
    this = self
end

function Q7402615Trigger:OnPostComponentPrepare()
    print("[MainId: 74026][Trigger: Q7402615Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402615Trigger:TriggerIn()
    print("[MainId: 74026][Trigger: Q7402615Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402615)
    this:DestroySelf()
end

function Q7402615Trigger:PreTriggerIn()
    print("[MainId: 74026][Trigger: Q7402615Trigger] PreTriggerIn")
end

function Q7402615Trigger:LightUpTriggerIn()
    print("[MainId: 74026][Trigger: Q7402615Trigger] LightUpTriggerIn")
end

function Q7402615Trigger:TriggerOut()
    print("[MainId: 74026][Trigger: Q7402615Trigger] TriggerOut")
end

return Q7402615Trigger
