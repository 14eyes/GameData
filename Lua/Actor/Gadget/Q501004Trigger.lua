require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501004Trigger = class("Q501004Trigger", GadgetActorProxy)
Q501004Trigger.defaultAlias = "Q501004Trigger"
local Q5010ClientConfig = require("Quest/Client/Q5010ClientConfig")

local this
local subIDs = Q5010ClientConfig.SubIDs
local datas = Q5010ClientConfig.Datas
local npcs = Q5010ClientConfig.Npcs
local points = Q5010ClientConfig.Points

function Q501004Trigger:OnPostDataPrepare()
    print("Q501004Trigger - OnPostDataPrepare")
    this = self
end

function Q501004Trigger:OnPostComponentPrepare()
    print("Q501004Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5010)
end

function Q501004Trigger:TriggerIn()
    print("Q501004Trigger - TriggerIn")
    this:DestroySelf()
end

function Q501004Trigger:PreTriggerIn()
    print("Q501004Trigger - PreTriggerIn")
end

function Q501004Trigger:LightUpTriggerIn()
    print("Q501004Trigger - LightUpTriggerIn")
    actorMgr:GetActor("5010"):ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
end

function Q501004Trigger:TriggerOut()
    print("Q501004Trigger - TriggerOut")
end

return Q501004Trigger
