require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503203Trigger_Enter = class("Q1503203Trigger_Enter", GadgetActorProxy)
Q1503203Trigger_Enter.defaultAlias = "Q1503203Trigger_Enter"
local Q15032ClientConfig = require("Quest/Client/Q15032ClientConfig")

local this
local subIDs = Q15032ClientConfig.SubIDs
local datas = Q15032ClientConfig.Datas
local npcs = Q15032ClientConfig.Npcs
local points = Q15032ClientConfig.Points

function Q1503203Trigger_Enter:OnPostDataPrepare()
    print("Q1503203Trigger_Enter - OnPostDataPrepare")
    this = self
end

function Q1503203Trigger_Enter:OnPostComponentPrepare()
    print("Q1503203Trigger_Enter - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15032)
end

function Q1503203Trigger_Enter:TriggerIn()
    print("Q1503203Trigger_Enter - TriggerIn")
    this:DestroySelf()
end

function Q1503203Trigger_Enter:PreTriggerIn()
    print("Q1503203Trigger_Enter - PreTriggerIn")
end

function Q1503203Trigger_Enter:LightUpTriggerIn()
    print("Q1503203Trigger_Enter - LightUpTriggerIn")
end

function Q1503203Trigger_Enter:TriggerOut()
    print("Q1503203Trigger_Enter - TriggerOut")
end

return Q1503203Trigger_Enter
