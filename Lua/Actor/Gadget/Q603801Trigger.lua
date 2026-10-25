require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603801Trigger = class("Q603801Trigger", GadgetActorProxy)
Q603801Trigger.defaultAlias = "Q603801Trigger"
local Q6038ClientConfig = require("Quest/Client/Q6038ClientConfig")

local this
local subIDs = Q6038ClientConfig.SubIDs
local datas = Q6038ClientConfig.Datas
local npcs = Q6038ClientConfig.Npcs
local points = Q6038ClientConfig.Points

function Q603801Trigger:OnPostDataPrepare()
    print("Q603801Trigger - OnPostDataPrepare")
    this = self
end

function Q603801Trigger:OnPostComponentPrepare()
    print("Q603801Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6038)
end

function Q603801Trigger:TriggerIn()
    print("Q603801Trigger - TriggerIn")
    actorMgr:GetActor("6038"):TransmitPlayerWithQuestIdByData(603801, 2, datas.TransmitData_blackscreen, nil, nil, nil)
    this:DestroySelf()
end

function Q603801Trigger:PreTriggerIn()
    print("Q603801Trigger - PreTriggerIn")
end

function Q603801Trigger:LightUpTriggerIn()
    print("Q603801Trigger - LightUpTriggerIn")
end

function Q603801Trigger:TriggerOut()
    print("Q603801Trigger - TriggerOut")
end

return Q603801Trigger
