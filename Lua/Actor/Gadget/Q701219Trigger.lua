require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701219Trigger = class("Q701219Trigger", GadgetActorProxy)
Q701219Trigger.defaultAlias = "Q701219Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701219Trigger:OnPostDataPrepare()
    print("Q701219Trigger - OnPostDataPrepare")
    this = self
end

function Q701219Trigger:OnPostComponentPrepare()
    print("Q701219Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701219Trigger:TriggerIn()
    print("Q701219Trigger - TriggerIn")
    actorMgr:GetActor("7012"):TransmitPlayerWithQuestIdByData(701219, 1, datas.TransmitBlackData, nil, nil, nil)
    this:DestroySelf()
end

function Q701219Trigger:PreTriggerIn()
    print("Q701219Trigger - PreTriggerIn")
end

function Q701219Trigger:LightUpTriggerIn()
    print("Q701219Trigger - LightUpTriggerIn")
end

function Q701219Trigger:TriggerOut()
    print("Q701219Trigger - TriggerOut")
end

return Q701219Trigger
