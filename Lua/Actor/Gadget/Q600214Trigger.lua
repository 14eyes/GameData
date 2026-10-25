require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600214Trigger = class("Q600214Trigger", GadgetActorProxy)
Q600214Trigger.defaultAlias = "Q600214Trigger"
local Q6002ClientConfig = require("Quest/Client/Q6002ClientConfig")

local this
local subIDs = Q6002ClientConfig.SubIDs
local datas = Q6002ClientConfig.Datas
local npcs = Q6002ClientConfig.Npcs
local points = Q6002ClientConfig.Points

function Q600214Trigger:OnPostDataPrepare()
    print("Q600214Trigger - OnPostDataPrepare")
    this = self
end

function Q600214Trigger:OnPostComponentPrepare()
    print("Q600214Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6002)
end

function Q600214Trigger:TriggerIn()
    print("Q600214Trigger - TriggerIn")
    this:DestroySelf()
end

function Q600214Trigger:PreTriggerIn()
    print("Q600214Trigger - PreTriggerIn")
end

function Q600214Trigger:LightUpTriggerIn()
    print("Q600214Trigger - LightUpTriggerIn")
    actorMgr:GetActor("6002"):ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
end

function Q600214Trigger:TriggerOut()
    print("Q600214Trigger - TriggerOut")
end

return Q600214Trigger
