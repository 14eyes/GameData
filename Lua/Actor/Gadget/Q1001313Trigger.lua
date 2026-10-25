require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1001313Trigger = class("Q1001313Trigger", GadgetActorProxy)
Q1001313Trigger.defaultAlias = "Q1001313Trigger"
local Q10013ClientConfig = require("Quest/Client/Q10013ClientConfig")

local this
local subIDs = Q10013ClientConfig.SubIDs
local datas = Q10013ClientConfig.Datas
local npcs = Q10013ClientConfig.Npcs
local points = Q10013ClientConfig.Points

function Q1001313Trigger:OnPostDataPrepare()
    print("Q1001313Trigger - OnPostDataPrepare")
    this = self
end

function Q1001313Trigger:OnPostComponentPrepare()
    print("Q1001313Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10013)
end

function Q1001313Trigger:TriggerIn()
    print("Q1001313Trigger - TriggerIn")
    actorMgr:GetActor("10013"):TransmitPlayerWithQuestIdByData(1001313, 1, datas.TransmitData_1001313, nil, nil, nil)
end

function Q1001313Trigger:PreTriggerIn()
    print("Q1001313Trigger - PreTriggerIn")
end

function Q1001313Trigger:LightUpTriggerIn()
    print("Q1001313Trigger - LightUpTriggerIn")
end

function Q1001313Trigger:TriggerOut()
    print("Q1001313Trigger - TriggerOut")
end

return Q1001313Trigger
