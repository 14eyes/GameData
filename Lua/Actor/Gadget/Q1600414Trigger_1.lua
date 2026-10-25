require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600414Trigger_1 = class("Q1600414Trigger_1", GadgetActorProxy)
Q1600414Trigger_1.defaultAlias = "Q1600414Trigger_1"
local Q16004ClientConfig = require("Quest/Client/Q16004ClientConfig")

local this
local subIDs = Q16004ClientConfig.SubIDs
local datas = Q16004ClientConfig.Datas
local npcs = Q16004ClientConfig.Npcs
local points = Q16004ClientConfig.Points

function Q1600414Trigger_1:OnPostDataPrepare()
    print("Q1600414Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q1600414Trigger_1:OnPostComponentPrepare()
    print("Q1600414Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16004)
end

function Q1600414Trigger_1:TriggerIn()
    print("Q1600414Trigger_1 - TriggerIn")
end

function Q1600414Trigger_1:PreTriggerIn()
    print("Q1600414Trigger_1 - PreTriggerIn")
    actorMgr:GetActor("16004"):TransmitPlayerWithQuestIdByData(1600414, 1, datas.TransmitData_ToWorkshop, nil, nil, nil)
end

function Q1600414Trigger_1:LightUpTriggerIn()
    print("Q1600414Trigger_1 - LightUpTriggerIn")
end

function Q1600414Trigger_1:TriggerOut()
    print("Q1600414Trigger_1 - TriggerOut")
end

return Q1600414Trigger_1
