require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402607Trigger = class("Q7402607Trigger", GadgetActorProxy)
Q7402607Trigger.defaultAlias = "Q7402607Trigger"
local Q74026ClientConfig = require("Quest/Client/Q74026ClientConfig")

local this
local subIDs = Q74026ClientConfig.SubIDs
local npcs = Q74026ClientConfig.Npcs
local points = Q74026ClientConfig.Points
local datas = Q74026ClientConfig.Datas

function Q7402607Trigger:OnPostDataPrepare()
    print("[MainId: 74026][Trigger: Q7402607Trigger] OnPostDataPrepare")
    this = self
end

function Q7402607Trigger:OnPostComponentPrepare()
    print("[MainId: 74026][Trigger: Q7402607Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402607Trigger:TriggerIn()
    print("[MainId: 74026][Trigger: Q7402607Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7402607Trigger:PreTriggerIn()
    print("[MainId: 74026][Trigger: Q7402607Trigger] PreTriggerIn")
end

function Q7402607Trigger:LightUpTriggerIn()
    print("[MainId: 74026][Trigger: Q7402607Trigger] LightUpTriggerIn")
end

function Q7402607Trigger:TriggerOut()
    print("[MainId: 74026][Trigger: Q7402607Trigger] TriggerOut")
end

return Q7402607Trigger
