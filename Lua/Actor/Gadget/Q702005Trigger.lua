require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q702005Trigger = class("Q702005Trigger", GadgetActorProxy)
Q702005Trigger.defaultAlias = "Q702005Trigger"
local Q7020ClientConfig = require("Quest/Client/Q7020ClientConfig")

local this
local subIDs = Q7020ClientConfig.SubIDs
local datas = Q7020ClientConfig.Datas
local npcs = Q7020ClientConfig.Npcs
local points = Q7020ClientConfig.Points

function Q702005Trigger:OnPostDataPrepare()
    print("Q702005Trigger - OnPostDataPrepare")
    this = self
end

function Q702005Trigger:OnPostComponentPrepare()
    print("Q702005Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7020)
end

function Q702005Trigger:TriggerIn()
    print("Q702005Trigger - TriggerIn")
    actorMgr:GetActor("7020"):TransmitPlayerWithQuestIdByData(702004, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q702005Trigger:PreTriggerIn()
    print("Q702005Trigger - PreTriggerIn")
    actorMgr:GetActor("7020"):ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
end

function Q702005Trigger:LightUpTriggerIn()
    print("Q702005Trigger - LightUpTriggerIn")
end

function Q702005Trigger:TriggerOut()
    print("Q702005Trigger - TriggerOut")
end

return Q702005Trigger
