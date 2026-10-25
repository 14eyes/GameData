require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501002Trigger = class("Q501002Trigger", GadgetActorProxy)
Q501002Trigger.defaultAlias = "Q501002Trigger"
local Q5010ClientConfig = require("Quest/Client/Q5010ClientConfig")

local this
local subIDs = Q5010ClientConfig.SubIDs
local datas = Q5010ClientConfig.Datas
local npcs = Q5010ClientConfig.Npcs
local points = Q5010ClientConfig.Points

function Q501002Trigger:OnPostDataPrepare()
    print("Q501002Trigger - OnPostDataPrepare")
    this = self
end

function Q501002Trigger:OnPostComponentPrepare()
    print("Q501002Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5010)
end

function Q501002Trigger:TriggerIn()
    print("Q501002Trigger - TriggerIn")
    this:DestroySelf()
end

function Q501002Trigger:PreTriggerIn()
    print("Q501002Trigger - PreTriggerIn")
end

function Q501002Trigger:LightUpTriggerIn()
    print("Q501002Trigger - LightUpTriggerIn")
    actorMgr:GetActor("5010"):ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
end

function Q501002Trigger:TriggerOut()
    print("Q501002Trigger - TriggerOut")
end

return Q501002Trigger
