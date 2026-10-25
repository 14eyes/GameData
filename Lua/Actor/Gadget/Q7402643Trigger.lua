require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402643Trigger = class("Q7402643Trigger", GadgetActorProxy)
Q7402643Trigger.defaultAlias = "Q7402643Trigger"
local Q74026ClientConfig = require("Quest/Client/Q74026ClientConfig")

local this
local subIDs = Q74026ClientConfig.SubIDs
local npcs = Q74026ClientConfig.Npcs
local points = Q74026ClientConfig.Points
local datas = Q74026ClientConfig.Datas

function Q7402643Trigger:OnPostDataPrepare()
    print("[MainId: 74026][Trigger: Q7402643Trigger] OnPostDataPrepare")
    this = self
end

function Q7402643Trigger:OnPostComponentPrepare()
    print("[MainId: 74026][Trigger: Q7402643Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(7, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402643Trigger:TriggerIn()
    print("[MainId: 74026][Trigger: Q7402643Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402643)
    this:DestroySelf()
end

function Q7402643Trigger:PreTriggerIn()
    print("[MainId: 74026][Trigger: Q7402643Trigger] PreTriggerIn")
end

function Q7402643Trigger:LightUpTriggerIn()
    print("[MainId: 74026][Trigger: Q7402643Trigger] LightUpTriggerIn")
end

function Q7402643Trigger:TriggerOut()
    print("[MainId: 74026][Trigger: Q7402643Trigger] TriggerOut")
end

return Q7402643Trigger
