require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502823Trigger_T = class("Q502823Trigger_T", GadgetActorProxy)
Q502823Trigger_T.defaultAlias = "Q502823Trigger_T"
local Q5028ClientConfig = require("Quest/Client/Q5028ClientConfig")

local this
local subIDs = Q5028ClientConfig.SubIDs
local datas = Q5028ClientConfig.Datas
local npcs = Q5028ClientConfig.Npcs
local points = Q5028ClientConfig.Points

function Q502823Trigger_T:OnPostDataPrepare()
    print("Q502823Trigger_T - OnPostDataPrepare")
    this = self
end

function Q502823Trigger_T:OnPostComponentPrepare()
    print("Q502823Trigger_T - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5028)
end

function Q502823Trigger_T:TriggerIn()
    print("Q502823Trigger_T - TriggerIn")
    actorMgr:GetActor("5028"):TransmitPlayerWithQuestIdByData(502823, 1, datas.TransmitDatafire, nil, nil, nil)
end

function Q502823Trigger_T:PreTriggerIn()
    print("Q502823Trigger_T - PreTriggerIn")
end

function Q502823Trigger_T:LightUpTriggerIn()
    print("Q502823Trigger_T - LightUpTriggerIn")
end

function Q502823Trigger_T:TriggerOut()
    print("Q502823Trigger_T - TriggerOut")
end

return Q502823Trigger_T
