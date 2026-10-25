require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000709Trigger_1 = class("Q1000709Trigger_1", GadgetActorProxy)
Q1000709Trigger_1.defaultAlias = "Q1000709Trigger_1"
local Q10007ClientConfig = require("Quest/Client/Q10007ClientConfig")

local this
local subIDs = Q10007ClientConfig.SubIDs
local datas = Q10007ClientConfig.Datas
local npcs = Q10007ClientConfig.Npcs
local points = Q10007ClientConfig.Points

function Q1000709Trigger_1:OnPostDataPrepare()
    print("Q1000709Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q1000709Trigger_1:OnPostComponentPrepare()
    print("Q1000709Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10007)
end

function Q1000709Trigger_1:TriggerIn()
    print("Q1000709Trigger_1 - TriggerIn")
    actorMgr:GetActor("10007"):TransmitPlayerWithQuestIdByData(1000709, 1, datas.TransmitData1000710, nil, nil, nil)
end

function Q1000709Trigger_1:PreTriggerIn()
    print("Q1000709Trigger_1 - PreTriggerIn")
end

function Q1000709Trigger_1:LightUpTriggerIn()
    print("Q1000709Trigger_1 - LightUpTriggerIn")
end

function Q1000709Trigger_1:TriggerOut()
    print("Q1000709Trigger_1 - TriggerOut")
end

return Q1000709Trigger_1
