require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502408Trigger = class("Q502408Trigger", GadgetActorProxy)
Q502408Trigger.defaultAlias = "Q502408Trigger"
local Q5024ClientConfig = require("Quest/Client/Q5024ClientConfig")

local this
local subIDs = Q5024ClientConfig.SubIDs
local datas = Q5024ClientConfig.Datas
local npcs = Q5024ClientConfig.Npcs
local points = Q5024ClientConfig.Points

function Q502408Trigger:OnPostDataPrepare()
    print("Q502408Trigger - OnPostDataPrepare")
    this = self
end

function Q502408Trigger:OnPostComponentPrepare()
    print("Q502408Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5024)
end

function Q502408Trigger:TriggerIn()
    print("Q502408Trigger - TriggerIn")
    actorMgr:GetActor("5024"):TransmitPlayerWithQuestIdByData(502406, 2, datas.TransmitData_1, nil, nil, nil)
    this:DestroySelf()
end

function Q502408Trigger:PreTriggerIn()
    print("Q502408Trigger - PreTriggerIn")
end

function Q502408Trigger:LightUpTriggerIn()
    print("Q502408Trigger - LightUpTriggerIn")
end

function Q502408Trigger:TriggerOut()
    print("Q502408Trigger - TriggerOut")
end

return Q502408Trigger
