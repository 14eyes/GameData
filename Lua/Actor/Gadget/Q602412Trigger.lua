require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602412Trigger = class("Q602412Trigger", GadgetActorProxy)
Q602412Trigger.defaultAlias = "Q602412Trigger"
local Q6024ClientConfig = require("Quest/Client/Q6024ClientConfig")

local this
local subIDs = Q6024ClientConfig.SubIDs
local datas = Q6024ClientConfig.Datas
local npcs = Q6024ClientConfig.Npcs
local points = Q6024ClientConfig.Points

function Q602412Trigger:OnPostDataPrepare()
    print("Q602412Trigger - OnPostDataPrepare")
    this = self
end

function Q602412Trigger:OnPostComponentPrepare()
    print("Q602412Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6024)
end

function Q602412Trigger:TriggerIn()
    print("Q602412Trigger - TriggerIn")
    actorMgr:GetActor("6024"):TransmitPlayerWithQuestIdByData(602412, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q602412Trigger:PreTriggerIn()
    print("Q602412Trigger - PreTriggerIn")
end

function Q602412Trigger:LightUpTriggerIn()
    print("Q602412Trigger - LightUpTriggerIn")
end

function Q602412Trigger:TriggerOut()
    print("Q602412Trigger - TriggerOut")
end

return Q602412Trigger
