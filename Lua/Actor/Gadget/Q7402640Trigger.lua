require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402640Trigger = class("Q7402640Trigger", GadgetActorProxy)
Q7402640Trigger.defaultAlias = "Q7402640Trigger"
local Q74026ClientConfig = require("Quest/Client/Q74026ClientConfig")

local this
local subIDs = Q74026ClientConfig.SubIDs
local npcs = Q74026ClientConfig.Npcs
local points = Q74026ClientConfig.Points
local datas = Q74026ClientConfig.Datas

function Q7402640Trigger:OnPostDataPrepare()
    print("[MainId: 74026][Trigger: Q7402640Trigger] OnPostDataPrepare")
    this = self
end

function Q7402640Trigger:OnPostComponentPrepare()
    print("[MainId: 74026][Trigger: Q7402640Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402640Trigger:TriggerIn()
    print("[MainId: 74026][Trigger: Q7402640Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402640)
    this:DestroySelf()
end

function Q7402640Trigger:PreTriggerIn()
    print("[MainId: 74026][Trigger: Q7402640Trigger] PreTriggerIn")
end

function Q7402640Trigger:LightUpTriggerIn()
    print("[MainId: 74026][Trigger: Q7402640Trigger] LightUpTriggerIn")
end

function Q7402640Trigger:TriggerOut()
    print("[MainId: 74026][Trigger: Q7402640Trigger] TriggerOut")
end

return Q7402640Trigger
