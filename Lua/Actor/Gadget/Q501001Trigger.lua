require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501001Trigger = class("Q501001Trigger", GadgetActorProxy)
Q501001Trigger.defaultAlias = "Q501001Trigger"
local Q5010ClientConfig = require("Quest/Client/Q5010ClientConfig")

local this
local subIDs = Q5010ClientConfig.SubIDs
local datas = Q5010ClientConfig.Datas
local npcs = Q5010ClientConfig.Npcs
local points = Q5010ClientConfig.Points

function Q501001Trigger:OnPostDataPrepare()
    print("Q501001Trigger - OnPostDataPrepare")
    this = self
end

function Q501001Trigger:OnPostComponentPrepare()
    print("Q501001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5010)
end

function Q501001Trigger:TriggerIn()
    print("Q501001Trigger - TriggerIn")
    this:DestroySelf()
end

function Q501001Trigger:PreTriggerIn()
    print("Q501001Trigger - PreTriggerIn")
end

function Q501001Trigger:LightUpTriggerIn()
    print("Q501001Trigger - LightUpTriggerIn")
    actorMgr:GetActor("5010"):ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
end

function Q501001Trigger:TriggerOut()
    print("Q501001Trigger - TriggerOut")
end

return Q501001Trigger
