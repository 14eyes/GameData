require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701504Trigger = class("Q701504Trigger", GadgetActorProxy)
Q701504Trigger.defaultAlias = "Q701504Trigger"
local Q7015ClientConfig = require("Quest/Client/Q7015ClientConfig")

local this
local subIDs = Q7015ClientConfig.SubIDs
local datas = Q7015ClientConfig.Datas
local npcs = Q7015ClientConfig.Npcs
local points = Q7015ClientConfig.Points

function Q701504Trigger:OnPostDataPrepare()
    print("Q701504Trigger - OnPostDataPrepare")
    this = self
end

function Q701504Trigger:OnPostComponentPrepare()
    print("Q701504Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7015)
end

function Q701504Trigger:TriggerIn()
    print("Q701504Trigger - TriggerIn")
    actorMgr:GetActor("7015"):ShowBlackScreenWithDialogText(0.5, 1, 0, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {701504})
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q701504Trigger:PreTriggerIn()
    print("Q701504Trigger - PreTriggerIn")
end

function Q701504Trigger:LightUpTriggerIn()
    print("Q701504Trigger - LightUpTriggerIn")
end

function Q701504Trigger:TriggerOut()
    print("Q701504Trigger - TriggerOut")
end

return Q701504Trigger
