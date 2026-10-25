require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501417Trigger = class("Q501417Trigger", GadgetActorProxy)
Q501417Trigger.defaultAlias = "Q501417Trigger"
local Q5014ClientConfig = require("Quest/Client/Q5014ClientConfig")

local this
local subIDs = Q5014ClientConfig.SubIDs
local datas = Q5014ClientConfig.Datas
local npcs = Q5014ClientConfig.Npcs
local points = Q5014ClientConfig.Points

function Q501417Trigger:OnPostDataPrepare()
    print("Q501417Trigger - OnPostDataPrepare")
    this = self
end

function Q501417Trigger:OnPostComponentPrepare()
    print("Q501417Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5014)
end

function Q501417Trigger:TriggerIn()
    print("Q501417Trigger - TriggerIn")
    this:DestroySelf()
end

function Q501417Trigger:PreTriggerIn()
    print("Q501417Trigger - PreTriggerIn")
end

function Q501417Trigger:LightUpTriggerIn()
    print("Q501417Trigger - LightUpTriggerIn")
    actorMgr:GetActor("5014"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q501417Trigger:TriggerOut()
    print("Q501417Trigger - TriggerOut")
end

return Q501417Trigger
