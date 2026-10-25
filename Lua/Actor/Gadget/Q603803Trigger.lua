require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603803Trigger = class("Q603803Trigger", GadgetActorProxy)
Q603803Trigger.defaultAlias = "Q603803Trigger"
local Q6038ClientConfig = require("Quest/Client/Q6038ClientConfig")

local this
local subIDs = Q6038ClientConfig.SubIDs
local datas = Q6038ClientConfig.Datas
local npcs = Q6038ClientConfig.Npcs
local points = Q6038ClientConfig.Points

function Q603803Trigger:OnPostDataPrepare()
    print("Q603803Trigger - OnPostDataPrepare")
    this = self
end

function Q603803Trigger:OnPostComponentPrepare()
    print("Q603803Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6038)
end

function Q603803Trigger:TriggerIn()
    print("Q603803Trigger - TriggerIn")
    actorMgr:GetActor("6038"):TransmitPlayerWithQuestIdByData(603803, 2, datas.TransmitData_blackscreen, nil, nil, nil)
    this:DestroySelf()
end

function Q603803Trigger:PreTriggerIn()
    print("Q603803Trigger - PreTriggerIn")
end

function Q603803Trigger:LightUpTriggerIn()
    print("Q603803Trigger - LightUpTriggerIn")
end

function Q603803Trigger:TriggerOut()
    print("Q603803Trigger - TriggerOut")
end

return Q603803Trigger
