require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502803Trigger_T = class("Q502803Trigger_T", GadgetActorProxy)
Q502803Trigger_T.defaultAlias = "Q502803Trigger_T"
local Q5028ClientConfig = require("Quest/Client/Q5028ClientConfig")

local this
local subIDs = Q5028ClientConfig.SubIDs
local datas = Q5028ClientConfig.Datas
local npcs = Q5028ClientConfig.Npcs
local points = Q5028ClientConfig.Points

function Q502803Trigger_T:OnPostDataPrepare()
    print("Q502803Trigger_T - OnPostDataPrepare")
    this = self
end

function Q502803Trigger_T:OnPostComponentPrepare()
    print("Q502803Trigger_T - OnPostComponentPrepare")
    this:AddComponentTrigger(350, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5028)
end

function Q502803Trigger_T:TriggerIn()
    print("Q502803Trigger_T - TriggerIn")
    actorMgr:GetActor("5028"):TransmitPlayerWithQuestIdByData(502803, 1, datas.TransmitDatablack, nil, nil, nil)
end

function Q502803Trigger_T:PreTriggerIn()
    print("Q502803Trigger_T - PreTriggerIn")
end

function Q502803Trigger_T:LightUpTriggerIn()
    print("Q502803Trigger_T - LightUpTriggerIn")
end

function Q502803Trigger_T:TriggerOut()
    print("Q502803Trigger_T - TriggerOut")
end

return Q502803Trigger_T
