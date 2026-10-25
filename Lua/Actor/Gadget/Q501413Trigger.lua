require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501413Trigger = class("Q501413Trigger", GadgetActorProxy)
Q501413Trigger.defaultAlias = "Q501413Trigger"
local Q5014ClientConfig = require("Quest/Client/Q5014ClientConfig")

local this
local subIDs = Q5014ClientConfig.SubIDs
local datas = Q5014ClientConfig.Datas
local npcs = Q5014ClientConfig.Npcs
local points = Q5014ClientConfig.Points

function Q501413Trigger:OnPostDataPrepare()
    print("Q501413Trigger - OnPostDataPrepare")
    this = self
end

function Q501413Trigger:OnPostComponentPrepare()
    print("Q501413Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5014)
end

function Q501413Trigger:TriggerIn()
    print("Q501413Trigger - TriggerIn")
    this:DestroySelf()
end

function Q501413Trigger:PreTriggerIn()
    print("Q501413Trigger - PreTriggerIn")
end

function Q501413Trigger:LightUpTriggerIn()
    print("Q501413Trigger - LightUpTriggerIn")
    actorMgr:GetActor("5014"):ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
end

function Q501413Trigger:TriggerOut()
    print("Q501413Trigger - TriggerOut")
end

return Q501413Trigger
