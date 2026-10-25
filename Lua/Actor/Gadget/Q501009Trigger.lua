require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501009Trigger = class("Q501009Trigger", GadgetActorProxy)
Q501009Trigger.defaultAlias = "Q501009Trigger"
local Q5010ClientConfig = require("Quest/Client/Q5010ClientConfig")

local this
local subIDs = Q5010ClientConfig.SubIDs
local datas = Q5010ClientConfig.Datas
local npcs = Q5010ClientConfig.Npcs
local points = Q5010ClientConfig.Points

function Q501009Trigger:OnPostDataPrepare()
    print("Q501009Trigger - OnPostDataPrepare")
    this = self
end

function Q501009Trigger:OnPostComponentPrepare()
    print("Q501009Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5010)
end

function Q501009Trigger:TriggerIn()
    print("Q501009Trigger - TriggerIn")
    this:DestroySelf()
end

function Q501009Trigger:PreTriggerIn()
    print("Q501009Trigger - PreTriggerIn")
end

function Q501009Trigger:LightUpTriggerIn()
    print("Q501009Trigger - LightUpTriggerIn")
    actorMgr:GetActor("5010"):ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
end

function Q501009Trigger:TriggerOut()
    print("Q501009Trigger - TriggerOut")
end

return Q501009Trigger
