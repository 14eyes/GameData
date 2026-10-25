require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402601Trigger = class("Q7402601Trigger", GadgetActorProxy)
Q7402601Trigger.defaultAlias = "Q7402601Trigger"
local Q74026ClientConfig = require("Quest/Client/Q74026ClientConfig")

local this
local subIDs = Q74026ClientConfig.SubIDs
local npcs = Q74026ClientConfig.Npcs
local points = Q74026ClientConfig.Points
local datas = Q74026ClientConfig.Datas

function Q7402601Trigger:OnPostDataPrepare()
    print("[MainId: 74026][Trigger: Q7402601Trigger] OnPostDataPrepare")
    this = self
end

function Q7402601Trigger:OnPostComponentPrepare()
    print("[MainId: 74026][Trigger: Q7402601Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402601Trigger:TriggerIn()
    print("[MainId: 74026][Trigger: Q7402601Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402601)
    this:DestroySelf()
end

function Q7402601Trigger:PreTriggerIn()
    print("[MainId: 74026][Trigger: Q7402601Trigger] PreTriggerIn")
end

function Q7402601Trigger:LightUpTriggerIn()
    print("[MainId: 74026][Trigger: Q7402601Trigger] LightUpTriggerIn")
end

function Q7402601Trigger:TriggerOut()
    print("[MainId: 74026][Trigger: Q7402601Trigger] TriggerOut")
end

return Q7402601Trigger
