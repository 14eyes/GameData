require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502205Trigger = class("Q502205Trigger", GadgetActorProxy)
Q502205Trigger.defaultAlias = "Q502205Trigger"
local Q5022ClientConfig = require("Quest/Client/Q5022ClientConfig")

local this
local subIDs = Q5022ClientConfig.SubIDs
local datas = Q5022ClientConfig.Datas
local npcs = Q5022ClientConfig.Npcs
local points = Q5022ClientConfig.Points

function Q502205Trigger:OnPostDataPrepare()
    print("Q502205Trigger - OnPostDataPrepare")
    this = self
end

function Q502205Trigger:OnPostComponentPrepare()
    print("Q502205Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5022)
end

function Q502205Trigger:TriggerIn()
    print("Q502205Trigger - TriggerIn")
    actorMgr:GetActor("5022"):ActionSafeCall(function(arg1)
        actorMgr:GetActor("5022"):TransmitPlayerWithQuestIdByData(502205, 1, datas.TransmitData, nil, nil, nil)
        this:DestroySelf()
    end)
end

function Q502205Trigger:PreTriggerIn()
    print("Q502205Trigger - PreTriggerIn")
end

function Q502205Trigger:LightUpTriggerIn()
    print("Q502205Trigger - LightUpTriggerIn")
end

function Q502205Trigger:TriggerOut()
    print("Q502205Trigger - TriggerOut")
end

return Q502205Trigger
