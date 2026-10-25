require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701514Trigger = class("Q701514Trigger", GadgetActorProxy)
Q701514Trigger.defaultAlias = "Q701514Trigger"
local Q7015ClientConfig = require("Quest/Client/Q7015ClientConfig")

local this
local subIDs = Q7015ClientConfig.SubIDs
local datas = Q7015ClientConfig.Datas
local npcs = Q7015ClientConfig.Npcs
local points = Q7015ClientConfig.Points

function Q701514Trigger:OnPostDataPrepare()
    print("Q701514Trigger - OnPostDataPrepare")
    this = self
end

function Q701514Trigger:OnPostComponentPrepare()
    print("Q701514Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1000, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7015)
end

function Q701514Trigger:TriggerIn()
    print("Q701514Trigger - TriggerIn")
    actorMgr:GetActor("7015"):ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 0, false, true)
    actorMgr:GetActor("7015"):TransmitPlayerByQuestId(701514, 1, nil, nil, nil)
    this:DestroySelf()
end

function Q701514Trigger:PreTriggerIn()
    print("Q701514Trigger - PreTriggerIn")
end

function Q701514Trigger:LightUpTriggerIn()
    print("Q701514Trigger - LightUpTriggerIn")
end

function Q701514Trigger:TriggerOut()
    print("Q701514Trigger - TriggerOut")
end

return Q701514Trigger
