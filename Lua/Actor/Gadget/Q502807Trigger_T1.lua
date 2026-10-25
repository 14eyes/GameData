require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502807Trigger_T1 = class("Q502807Trigger_T1", GadgetActorProxy)
Q502807Trigger_T1.defaultAlias = "Q502807Trigger_T1"
local Q5028ClientConfig = require("Quest/Client/Q5028ClientConfig")

local this
local subIDs = Q5028ClientConfig.SubIDs
local datas = Q5028ClientConfig.Datas
local npcs = Q5028ClientConfig.Npcs
local points = Q5028ClientConfig.Points

function Q502807Trigger_T1:OnPostDataPrepare()
    print("Q502807Trigger_T1 - OnPostDataPrepare")
    this = self
end

function Q502807Trigger_T1:OnPostComponentPrepare()
    print("Q502807Trigger_T1 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5028)
end

function Q502807Trigger_T1:TriggerIn()
    print("Q502807Trigger_T1 - TriggerIn")
    actorMgr:GetActor("5028"):TransmitPlayerWithQuestIdByData(502807, 1, datas.TransmitDatafire02, nil, nil, nil)
end

function Q502807Trigger_T1:PreTriggerIn()
    print("Q502807Trigger_T1 - PreTriggerIn")
end

function Q502807Trigger_T1:LightUpTriggerIn()
    print("Q502807Trigger_T1 - LightUpTriggerIn")
end

function Q502807Trigger_T1:TriggerOut()
    print("Q502807Trigger_T1 - TriggerOut")
end

return Q502807Trigger_T1
