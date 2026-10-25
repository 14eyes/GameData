require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701515Trigger = class("Q701515Trigger", GadgetActorProxy)
Q701515Trigger.defaultAlias = "Q701515Trigger"
local Q7015ClientConfig = require("Quest/Client/Q7015ClientConfig")

local this
local subIDs = Q7015ClientConfig.SubIDs
local datas = Q7015ClientConfig.Datas
local npcs = Q7015ClientConfig.Npcs
local points = Q7015ClientConfig.Points

function Q701515Trigger:OnPostDataPrepare()
    print("Q701515Trigger - OnPostDataPrepare")
    this = self
end

function Q701515Trigger:OnPostComponentPrepare()
    print("Q701515Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1000, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7015)
end

function Q701515Trigger:TriggerIn()
    print("Q701515Trigger - TriggerIn")
    actorMgr:GetActor("7015"):ShowBlackScreen(0, 1, 0, nil, nil, nil, "", false, true)
    actorMgr:GetActor("7015"):TransmitPlayerByQuestId(701515, 1, nil, nil, nil)
    this:DestroySelf()
end

function Q701515Trigger:PreTriggerIn()
    print("Q701515Trigger - PreTriggerIn")
end

function Q701515Trigger:LightUpTriggerIn()
    print("Q701515Trigger - LightUpTriggerIn")
end

function Q701515Trigger:TriggerOut()
    print("Q701515Trigger - TriggerOut")
end

return Q701515Trigger
