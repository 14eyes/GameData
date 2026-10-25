require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503404Trigger = class("Q1503404Trigger", GadgetActorProxy)
Q1503404Trigger.defaultAlias = "Q1503404Trigger"
local Q15034ClientConfig = require("Quest/Client/Q15034ClientConfig")

local this
local subIDs = Q15034ClientConfig.SubIDs
local datas = Q15034ClientConfig.Datas
local npcs = Q15034ClientConfig.Npcs
local points = Q15034ClientConfig.Points

function Q1503404Trigger:OnPostDataPrepare()
    print("Q1503404Trigger - OnPostDataPrepare")
    this = self
end

function Q1503404Trigger:OnPostComponentPrepare()
    print("Q1503404Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15034)
end

function Q1503404Trigger:TriggerIn()
    print("Q1503404Trigger - TriggerIn")
    actorMgr:GetActor("15034"):TransmitPlayerWithQuestIdByData(1503404, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q1503404Trigger:PreTriggerIn()
    print("Q1503404Trigger - PreTriggerIn")
end

function Q1503404Trigger:LightUpTriggerIn()
    print("Q1503404Trigger - LightUpTriggerIn")
end

function Q1503404Trigger:TriggerOut()
    print("Q1503404Trigger - TriggerOut")
end

return Q1503404Trigger
