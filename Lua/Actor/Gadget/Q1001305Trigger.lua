require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1001305Trigger = class("Q1001305Trigger", GadgetActorProxy)
Q1001305Trigger.defaultAlias = "Q1001305Trigger"
local Q10013ClientConfig = require("Quest/Client/Q10013ClientConfig")

local this
local subIDs = Q10013ClientConfig.SubIDs
local datas = Q10013ClientConfig.Datas
local npcs = Q10013ClientConfig.Npcs
local points = Q10013ClientConfig.Points

function Q1001305Trigger:OnPostDataPrepare()
    print("Q1001305Trigger - OnPostDataPrepare")
    this = self
end

function Q1001305Trigger:OnPostComponentPrepare()
    print("Q1001305Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10013)
end

function Q1001305Trigger:TriggerIn()
    print("Q1001305Trigger - TriggerIn")
    actorMgr:GetActor("10013"):TransmitPlayerWithQuestIdByData(1001305, 1, datas.TransmitData_1001305, nil, nil, nil)
end

function Q1001305Trigger:PreTriggerIn()
    print("Q1001305Trigger - PreTriggerIn")
end

function Q1001305Trigger:LightUpTriggerIn()
    print("Q1001305Trigger - LightUpTriggerIn")
end

function Q1001305Trigger:TriggerOut()
    print("Q1001305Trigger - TriggerOut")
end

return Q1001305Trigger
