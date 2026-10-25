require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502902Trigger = class("Q502902Trigger", GadgetActorProxy)
Q502902Trigger.defaultAlias = "Q502902Trigger"
local Q5029ClientConfig = require("Quest/Client/Q5029ClientConfig")

local this
local subIDs = Q5029ClientConfig.SubIDs
local datas = Q5029ClientConfig.Datas
local npcs = Q5029ClientConfig.Npcs
local points = Q5029ClientConfig.Points

function Q502902Trigger:OnPostDataPrepare()
    print("Q502902Trigger - OnPostDataPrepare")
    this = self
end

function Q502902Trigger:OnPostComponentPrepare()
    print("Q502902Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(23, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5029)
end

function Q502902Trigger:TriggerIn()
    print("Q502902Trigger - TriggerIn")
    actorMgr:GetActor("5029"):TransmitPlayerWithQuestIdByData(502902, 1, datas.TransmitDatablack, nil, nil, nil)
end

function Q502902Trigger:PreTriggerIn()
    print("Q502902Trigger - PreTriggerIn")
end

function Q502902Trigger:LightUpTriggerIn()
    print("Q502902Trigger - LightUpTriggerIn")
end

function Q502902Trigger:TriggerOut()
    print("Q502902Trigger - TriggerOut")
end

return Q502902Trigger
