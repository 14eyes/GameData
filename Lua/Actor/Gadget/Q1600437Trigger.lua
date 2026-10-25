require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600437Trigger = class("Q1600437Trigger", GadgetActorProxy)
Q1600437Trigger.defaultAlias = "Q1600437Trigger"
local Q16004ClientConfig = require("Quest/Client/Q16004ClientConfig")

local this
local subIDs = Q16004ClientConfig.SubIDs
local datas = Q16004ClientConfig.Datas
local npcs = Q16004ClientConfig.Npcs
local points = Q16004ClientConfig.Points

function Q1600437Trigger:OnPostDataPrepare()
    print("Q1600437Trigger - OnPostDataPrepare")
    this = self
end

function Q1600437Trigger:OnPostComponentPrepare()
    print("Q1600437Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16004)
end

function Q1600437Trigger:TriggerIn()
    print("Q1600437Trigger - TriggerIn")
end

function Q1600437Trigger:PreTriggerIn()
    print("Q1600437Trigger - PreTriggerIn")
    actorMgr:GetActor("16004"):TransmitPlayerWithQuestIdByData(1600437, 1, datas.TransmitData_FromFinale, nil, nil, nil)
end

function Q1600437Trigger:LightUpTriggerIn()
    print("Q1600437Trigger - LightUpTriggerIn")
end

function Q1600437Trigger:TriggerOut()
    print("Q1600437Trigger - TriggerOut")
end

return Q1600437Trigger
