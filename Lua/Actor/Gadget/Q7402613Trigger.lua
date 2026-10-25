require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402613Trigger = class("Q7402613Trigger", GadgetActorProxy)
Q7402613Trigger.defaultAlias = "Q7402613Trigger"
local Q74026ClientConfig = require("Quest/Client/Q74026ClientConfig")

local this
local subIDs = Q74026ClientConfig.SubIDs
local npcs = Q74026ClientConfig.Npcs
local points = Q74026ClientConfig.Points
local datas = Q74026ClientConfig.Datas

function Q7402613Trigger:OnPostDataPrepare()
    print("[MainId: 74026][Trigger: Q7402613Trigger] OnPostDataPrepare")
    this = self
end

function Q7402613Trigger:OnPostComponentPrepare()
    print("[MainId: 74026][Trigger: Q7402613Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402613Trigger:TriggerIn()
    print("[MainId: 74026][Trigger: Q7402613Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402613)
    this:DestroySelf()
end

function Q7402613Trigger:PreTriggerIn()
    print("[MainId: 74026][Trigger: Q7402613Trigger] PreTriggerIn")
end

function Q7402613Trigger:LightUpTriggerIn()
    print("[MainId: 74026][Trigger: Q7402613Trigger] LightUpTriggerIn")
end

function Q7402613Trigger:TriggerOut()
    print("[MainId: 74026][Trigger: Q7402613Trigger] TriggerOut")
end

return Q7402613Trigger
