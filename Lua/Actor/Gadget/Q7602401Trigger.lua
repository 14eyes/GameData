require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602401Trigger = class("Q7602401Trigger", GadgetActorProxy)
Q7602401Trigger.defaultAlias = "Q7602401Trigger"
local Q76024ClientConfig = require("Quest/Client/Q76024ClientConfig")

local this
local subIDs = Q76024ClientConfig.SubIDs
local datas = Q76024ClientConfig.Datas
local npcs = Q76024ClientConfig.Npcs
local points = Q76024ClientConfig.Points

function Q7602401Trigger:OnPostDataPrepare()
    print("Q7602401Trigger - OnPostDataPrepare")
    this = self
end

function Q7602401Trigger:OnPostComponentPrepare()
    print("Q7602401Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76024)
end

function Q7602401Trigger:TriggerIn()
    print("Q7602401Trigger - TriggerIn")
    this:DestroySelf()
end

function Q7602401Trigger:PreTriggerIn()
    print("Q7602401Trigger - PreTriggerIn")
end

function Q7602401Trigger:LightUpTriggerIn()
    print("Q7602401Trigger - LightUpTriggerIn")
end

function Q7602401Trigger:TriggerOut()
    print("Q7602401Trigger - TriggerOut")
end

return Q7602401Trigger
