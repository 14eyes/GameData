require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402617Trigger = class("Q7402617Trigger", GadgetActorProxy)
Q7402617Trigger.defaultAlias = "Q7402617Trigger"
local Q74026ClientConfig = require("Quest/Client/Q74026ClientConfig")

local this
local subIDs = Q74026ClientConfig.SubIDs
local npcs = Q74026ClientConfig.Npcs
local points = Q74026ClientConfig.Points
local datas = Q74026ClientConfig.Datas

function Q7402617Trigger:OnPostDataPrepare()
    print("[MainId: 74026][Trigger: Q7402617Trigger] OnPostDataPrepare")
    this = self
end

function Q7402617Trigger:OnPostComponentPrepare()
    print("[MainId: 74026][Trigger: Q7402617Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402617Trigger:TriggerIn()
    print("[MainId: 74026][Trigger: Q7402617Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402617)
    this:DestroySelf()
end

function Q7402617Trigger:PreTriggerIn()
    print("[MainId: 74026][Trigger: Q7402617Trigger] PreTriggerIn")
end

function Q7402617Trigger:LightUpTriggerIn()
    print("[MainId: 74026][Trigger: Q7402617Trigger] LightUpTriggerIn")
end

function Q7402617Trigger:TriggerOut()
    print("[MainId: 74026][Trigger: Q7402617Trigger] TriggerOut")
end

return Q7402617Trigger
