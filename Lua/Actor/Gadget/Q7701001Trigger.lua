require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7701001Trigger = class("Q7701001Trigger", GadgetActorProxy)
Q7701001Trigger.defaultAlias = "Q7701001Trigger"
local Q77010ClientConfig = require("Quest/Client/Q77010ClientConfig")

local this
local subIDs = Q77010ClientConfig.SubIDs
local datas = Q77010ClientConfig.Datas
local npcs = Q77010ClientConfig.Npcs
local points = Q77010ClientConfig.Points

function Q7701001Trigger:OnPostDataPrepare()
    print("Q7701001Trigger - OnPostDataPrepare")
    this = self
end

function Q7701001Trigger:OnPostComponentPrepare()
    print("Q7701001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77010)
end

function Q7701001Trigger:TriggerIn()
    print("Q7701001Trigger - TriggerIn")
    actorMgr:GetActor("77010"):TransmitPlayerWithQuestIdByData(7701001, 1, datas.TransmitData_6, nil, nil, nil)
    this:DestroySelf()
end

function Q7701001Trigger:PreTriggerIn()
    print("Q7701001Trigger - PreTriggerIn")
end

function Q7701001Trigger:LightUpTriggerIn()
    print("Q7701001Trigger - LightUpTriggerIn")
end

function Q7701001Trigger:TriggerOut()
    print("Q7701001Trigger - TriggerOut")
end

return Q7701001Trigger
