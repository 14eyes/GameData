require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502411Trigger = class("Q502411Trigger", GadgetActorProxy)
Q502411Trigger.defaultAlias = "Q502411Trigger"
local Q5024ClientConfig = require("Quest/Client/Q5024ClientConfig")

local this
local subIDs = Q5024ClientConfig.SubIDs
local datas = Q5024ClientConfig.Datas
local npcs = Q5024ClientConfig.Npcs
local points = Q5024ClientConfig.Points

function Q502411Trigger:OnPostDataPrepare()
    print("Q502411Trigger - OnPostDataPrepare")
    this = self
end

function Q502411Trigger:OnPostComponentPrepare()
    print("Q502411Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5024)
end

function Q502411Trigger:TriggerIn()
    print("Q502411Trigger - TriggerIn")
    if actorUtils.IsMalePlayer() then
        actorMgr:GetActor("5024"):TransmitPlayerWithQuestIdByData(502410, 3, datas.TransmitData_2, nil, nil, nil)
    else
        actorMgr:GetActor("5024"):TransmitPlayerWithQuestIdByData(502410, 3, datas.TransmitData_3, nil, nil, nil)
    end

    this:DestroySelf()
end

function Q502411Trigger:PreTriggerIn()
    print("Q502411Trigger - PreTriggerIn")
end

function Q502411Trigger:LightUpTriggerIn()
    print("Q502411Trigger - LightUpTriggerIn")
end

function Q502411Trigger:TriggerOut()
    print("Q502411Trigger - TriggerOut")
end

return Q502411Trigger
