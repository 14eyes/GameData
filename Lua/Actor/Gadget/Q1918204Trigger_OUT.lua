require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918204Trigger_OUT = class("Q1918204Trigger_OUT", GadgetActorProxy)
Q1918204Trigger_OUT.defaultAlias = "Q1918204Trigger_OUT"
local Q19182ClientConfig = require("Quest/Client/Q19182ClientConfig")

local this
local subIDs = Q19182ClientConfig.SubIDs
local npcs = Q19182ClientConfig.Npcs
local points = Q19182ClientConfig.Points

function Q1918204Trigger_OUT:OnPostDataPrepare()
    print("[MainId: 19182][Trigger: Q1918204Trigger_OUT] OnPostDataPrepare")
    this = self
end

function Q1918204Trigger_OUT:OnPostComponentPrepare()
    print("[MainId: 19182][Trigger: Q1918204Trigger_OUT] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 19182)
end

function Q1918204Trigger_OUT:TriggerIn()
    print("[MainId: 19182][Trigger: Q1918204Trigger_OUT] TriggerIn")
end

function Q1918204Trigger_OUT:PreTriggerIn()
    print("[MainId: 19182][Trigger: Q1918204Trigger_OUT] PreTriggerIn")
end

function Q1918204Trigger_OUT:LightUpTriggerIn()
    print("[MainId: 19182][Trigger: Q1918204Trigger_OUT] LightUpTriggerIn")
end

function Q1918204Trigger_OUT:TriggerOut()
    print("[MainId: 19182][Trigger: Q1918204Trigger_OUT] TriggerOut")
end

return Q1918204Trigger_OUT
