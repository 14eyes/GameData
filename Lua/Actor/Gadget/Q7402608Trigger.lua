require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402608Trigger = class("Q7402608Trigger", GadgetActorProxy)
Q7402608Trigger.defaultAlias = "Q7402608Trigger"
local Q74026ClientConfig = require("Quest/Client/Q74026ClientConfig")

local this
local subIDs = Q74026ClientConfig.SubIDs
local npcs = Q74026ClientConfig.Npcs
local points = Q74026ClientConfig.Points
local datas = Q74026ClientConfig.Datas

function Q7402608Trigger:OnPostDataPrepare()
    print("[MainId: 74026][Trigger: Q7402608Trigger] OnPostDataPrepare")
    this = self
end

function Q7402608Trigger:OnPostComponentPrepare()
    print("[MainId: 74026][Trigger: Q7402608Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402608Trigger:TriggerIn()
    print("[MainId: 74026][Trigger: Q7402608Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402608)
    this:DestroySelf()
end

function Q7402608Trigger:PreTriggerIn()
    print("[MainId: 74026][Trigger: Q7402608Trigger] PreTriggerIn")
end

function Q7402608Trigger:LightUpTriggerIn()
    print("[MainId: 74026][Trigger: Q7402608Trigger] LightUpTriggerIn")
end

function Q7402608Trigger:TriggerOut()
    print("[MainId: 74026][Trigger: Q7402608Trigger] TriggerOut")
end

return Q7402608Trigger
