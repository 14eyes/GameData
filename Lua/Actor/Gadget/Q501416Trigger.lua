require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501416Trigger = class("Q501416Trigger", GadgetActorProxy)
Q501416Trigger.defaultAlias = "Q501416Trigger"
local Q5014ClientConfig = require("Quest/Client/Q5014ClientConfig")

local this
local subIDs = Q5014ClientConfig.SubIDs
local datas = Q5014ClientConfig.Datas
local npcs = Q5014ClientConfig.Npcs
local points = Q5014ClientConfig.Points

function Q501416Trigger:OnPostDataPrepare()
    print("Q501416Trigger - OnPostDataPrepare")
    this = self
end

function Q501416Trigger:OnPostComponentPrepare()
    print("Q501416Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5014)
end

function Q501416Trigger:TriggerIn()
    print("Q501416Trigger - TriggerIn")
    this:DestroySelf()
end

function Q501416Trigger:PreTriggerIn()
    print("Q501416Trigger - PreTriggerIn")
end

function Q501416Trigger:LightUpTriggerIn()
    print("Q501416Trigger - LightUpTriggerIn")
    actorMgr:GetActor("5014"):ShowBlackScreenWithDialogText(0, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Q501416Trigger:TriggerOut()
    print("Q501416Trigger - TriggerOut")
end

return Q501416Trigger
