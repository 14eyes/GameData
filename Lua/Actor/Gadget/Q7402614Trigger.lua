require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402614Trigger = class("Q7402614Trigger", GadgetActorProxy)
Q7402614Trigger.defaultAlias = "Q7402614Trigger"
local Q74026ClientConfig = require("Quest/Client/Q74026ClientConfig")

local this
local subIDs = Q74026ClientConfig.SubIDs
local npcs = Q74026ClientConfig.Npcs
local points = Q74026ClientConfig.Points
local datas = Q74026ClientConfig.Datas

function Q7402614Trigger:OnPostDataPrepare()
    print("[MainId: 74026][Trigger: Q7402614Trigger] OnPostDataPrepare")
    this = self
end

function Q7402614Trigger:OnPostComponentPrepare()
    print("[MainId: 74026][Trigger: Q7402614Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402614Trigger:TriggerIn()
    print("[MainId: 74026][Trigger: Q7402614Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402614)
    this:DestroySelf()
end

function Q7402614Trigger:PreTriggerIn()
    print("[MainId: 74026][Trigger: Q7402614Trigger] PreTriggerIn")
end

function Q7402614Trigger:LightUpTriggerIn()
    print("[MainId: 74026][Trigger: Q7402614Trigger] LightUpTriggerIn")
end

function Q7402614Trigger:TriggerOut()
    print("[MainId: 74026][Trigger: Q7402614Trigger] TriggerOut")
end

return Q7402614Trigger
