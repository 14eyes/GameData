require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602901Trigger = class("Q7602901Trigger", GadgetActorProxy)
Q7602901Trigger.defaultAlias = "Q7602901Trigger"
local Q76029ClientConfig = require("Quest/Client/Q76029ClientConfig")

local this
local subIDs = Q76029ClientConfig.SubIDs
local datas = Q76029ClientConfig.Datas
local npcs = Q76029ClientConfig.Npcs
local points = Q76029ClientConfig.Points

function Q7602901Trigger:OnPostDataPrepare()
    print("Q7602901Trigger - OnPostDataPrepare")
    this = self
end

function Q7602901Trigger:OnPostComponentPrepare()
    print("Q7602901Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76029)
end

function Q7602901Trigger:TriggerIn()
    print("Q7602901Trigger - TriggerIn")
    actorMgr:GetActor("76029"):TransmitPlayerWithQuestIdByData(7602901, 1, datas.TransmitData7603105, nil, nil, nil)
    this:DestroySelf()
end

function Q7602901Trigger:PreTriggerIn()
    print("Q7602901Trigger - PreTriggerIn")
end

function Q7602901Trigger:LightUpTriggerIn()
    print("Q7602901Trigger - LightUpTriggerIn")
end

function Q7602901Trigger:TriggerOut()
    print("Q7602901Trigger - TriggerOut")
end

return Q7602901Trigger
