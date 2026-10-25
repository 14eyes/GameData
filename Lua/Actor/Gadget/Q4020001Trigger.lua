require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020001Trigger = class("Q4020001Trigger", GadgetActorProxy)
Q4020001Trigger.defaultAlias = "Q4020001Trigger"
local Q40200ClientConfig = require("Quest/Client/Q40200ClientConfig")

local this
local subIDs = Q40200ClientConfig.SubIDs
local datas = Q40200ClientConfig.Datas
local npcs = Q40200ClientConfig.Npcs
local points = Q40200ClientConfig.Points

function Q4020001Trigger:OnPostDataPrepare()
    print("Q4020001Trigger - OnPostDataPrepare")
    this = self
end

function Q4020001Trigger:OnPostComponentPrepare()
    print("Q4020001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40200)
end

function Q4020001Trigger:TriggerIn()
    print("Q4020001Trigger - TriggerIn")
    this:DestroySelf()
end

function Q4020001Trigger:PreTriggerIn()
    print("Q4020001Trigger - PreTriggerIn")
end

function Q4020001Trigger:LightUpTriggerIn()
    print("Q4020001Trigger - LightUpTriggerIn")
end

function Q4020001Trigger:TriggerOut()
    print("Q4020001Trigger - TriggerOut")
end

return Q4020001Trigger
