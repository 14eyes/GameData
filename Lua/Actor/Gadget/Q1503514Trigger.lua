require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503514Trigger = class("Q1503514Trigger", GadgetActorProxy)
Q1503514Trigger.defaultAlias = "Q1503514Trigger"
local Q15035ClientConfig = require("Quest/Client/Q15035ClientConfig")

local this
local subIDs = Q15035ClientConfig.SubIDs
local datas = Q15035ClientConfig.Datas
local npcs = Q15035ClientConfig.Npcs
local points = Q15035ClientConfig.Points

function Q1503514Trigger:OnPostDataPrepare()
    print("Q1503514Trigger - OnPostDataPrepare")
    this = self
end

function Q1503514Trigger:OnPostComponentPrepare()
    print("Q1503514Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15035)
end

function Q1503514Trigger:TriggerIn()
    print("Q1503514Trigger - TriggerIn")
    actorMgr:GetActor("15035"):TransmitPlayerWithQuestIdByData(1503514, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q1503514Trigger:PreTriggerIn()
    print("Q1503514Trigger - PreTriggerIn")
end

function Q1503514Trigger:LightUpTriggerIn()
    print("Q1503514Trigger - LightUpTriggerIn")
end

function Q1503514Trigger:TriggerOut()
    print("Q1503514Trigger - TriggerOut")
end

return Q1503514Trigger
