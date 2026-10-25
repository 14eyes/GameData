require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402604Trigger = class("Q7402604Trigger", GadgetActorProxy)
Q7402604Trigger.defaultAlias = "Q7402604Trigger"
local Q74026ClientConfig = require("Quest/Client/Q74026ClientConfig")

local this
local subIDs = Q74026ClientConfig.SubIDs
local npcs = Q74026ClientConfig.Npcs
local points = Q74026ClientConfig.Points
local datas = Q74026ClientConfig.Datas

function Q7402604Trigger:OnPostDataPrepare()
    print("[MainId: 74026][Trigger: Q7402604Trigger] OnPostDataPrepare")
    this = self
end

function Q7402604Trigger:OnPostComponentPrepare()
    print("[MainId: 74026][Trigger: Q7402604Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402604Trigger:TriggerIn()
    print("[MainId: 74026][Trigger: Q7402604Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7402604Trigger:PreTriggerIn()
    print("[MainId: 74026][Trigger: Q7402604Trigger] PreTriggerIn")
end

function Q7402604Trigger:LightUpTriggerIn()
    print("[MainId: 74026][Trigger: Q7402604Trigger] LightUpTriggerIn")
end

function Q7402604Trigger:TriggerOut()
    print("[MainId: 74026][Trigger: Q7402604Trigger] TriggerOut")
end

return Q7402604Trigger
