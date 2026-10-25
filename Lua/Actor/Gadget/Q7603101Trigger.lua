require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7603101Trigger = class("Q7603101Trigger", GadgetActorProxy)
Q7603101Trigger.defaultAlias = "Q7603101Trigger"
local Q76031ClientConfig = require("Quest/Client/Q76031ClientConfig")

local this
local subIDs = Q76031ClientConfig.SubIDs
local datas = Q76031ClientConfig.Datas
local npcs = Q76031ClientConfig.Npcs
local points = Q76031ClientConfig.Points

function Q7603101Trigger:OnPostDataPrepare()
    print("Q7603101Trigger - OnPostDataPrepare")
    this = self
end

function Q7603101Trigger:OnPostComponentPrepare()
    print("Q7603101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76031)
end

function Q7603101Trigger:TriggerIn()
    print("Q7603101Trigger - TriggerIn")
    actorMgr:GetActor("76031"):TransmitPlayerWithQuestIdByData(7603101, 1, datas.TransmitData7603105, nil, nil, nil)
    this:DestroySelf()
end

function Q7603101Trigger:PreTriggerIn()
    print("Q7603101Trigger - PreTriggerIn")
end

function Q7603101Trigger:LightUpTriggerIn()
    print("Q7603101Trigger - LightUpTriggerIn")
end

function Q7603101Trigger:TriggerOut()
    print("Q7603101Trigger - TriggerOut")
end

return Q7603101Trigger
