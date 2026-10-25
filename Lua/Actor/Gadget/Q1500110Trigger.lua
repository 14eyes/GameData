require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500110Trigger = class("Q1500110Trigger", GadgetActorProxy)
Q1500110Trigger.defaultAlias = "Q1500110Trigger"
local Q15001ClientConfig = require("Quest/Client/Q15001ClientConfig")

local this
local subIDs = Q15001ClientConfig.SubIDs
local npcs = Q15001ClientConfig.Npcs
local points = Q15001ClientConfig.Points
local datas = Q15001ClientConfig.Datas

function Q1500110Trigger:OnPostDataPrepare()
    print("[MainId: 15001][Trigger: Q1500110Trigger] OnPostDataPrepare")
    this = self
end

function Q1500110Trigger:OnPostComponentPrepare()
    print("[MainId: 15001][Trigger: Q1500110Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15001)
end

function Q1500110Trigger:TriggerIn()
    print("[MainId: 15001][Trigger: Q1500110Trigger] TriggerIn")
    this:DestroySelf()
end

function Q1500110Trigger:PreTriggerIn()
    print("[MainId: 15001][Trigger: Q1500110Trigger] PreTriggerIn")
end

function Q1500110Trigger:LightUpTriggerIn()
    print("[MainId: 15001][Trigger: Q1500110Trigger] LightUpTriggerIn")
end

function Q1500110Trigger:TriggerOut()
    print("[MainId: 15001][Trigger: Q1500110Trigger] TriggerOut")
end

return Q1500110Trigger
