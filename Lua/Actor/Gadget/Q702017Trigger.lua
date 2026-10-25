require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q702017Trigger = class("Q702017Trigger", GadgetActorProxy)
Q702017Trigger.defaultAlias = "Q702017Trigger"
local Q7020ClientConfig = require("Quest/Client/Q7020ClientConfig")

local this
local subIDs = Q7020ClientConfig.SubIDs
local datas = Q7020ClientConfig.Datas
local npcs = Q7020ClientConfig.Npcs
local points = Q7020ClientConfig.Points

function Q702017Trigger:OnPostDataPrepare()
    print("Q702017Trigger - OnPostDataPrepare")
    this = self
end

function Q702017Trigger:OnPostComponentPrepare()
    print("Q702017Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(300, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7020)
end

function Q702017Trigger:TriggerIn()
    print("Q702017Trigger - TriggerIn")
    actorMgr:GetActor("7020"):TransmitPlayerWithQuestIdByData(702006, 1, datas.TransmitData_FromDeath, nil, function(arg1)
        actorMgr:GetActor("7020"):ShowBlackScreenWithDialogText(0, 2, 0.5, nil, nil, nil, 0, false, true)
    end, nil)

    this:DestroySelf()
end

function Q702017Trigger:PreTriggerIn()
    print("Q702017Trigger - PreTriggerIn")
end

function Q702017Trigger:LightUpTriggerIn()
    print("Q702017Trigger - LightUpTriggerIn")
end

function Q702017Trigger:TriggerOut()
    print("Q702017Trigger - TriggerOut")
end

return Q702017Trigger
