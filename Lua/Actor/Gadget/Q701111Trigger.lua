require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701111Trigger = class("Q701111Trigger", GadgetActorProxy)
Q701111Trigger.defaultAlias = "Q701111Trigger"
local Q7011ClientConfig = require("Quest/Client/Q7011ClientConfig")

local this
local subIDs = Q7011ClientConfig.SubIDs
local datas = Q7011ClientConfig.Datas
local npcs = Q7011ClientConfig.Npcs
local points = Q7011ClientConfig.Points

function Q701111Trigger:OnPostDataPrepare()
    print("Q701111Trigger - OnPostDataPrepare")
    this = self
end

function Q701111Trigger:OnPostComponentPrepare()
    print("Q701111Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(44.823975, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7011)
end

function Q701111Trigger:TriggerIn()
    print("Q701111Trigger - TriggerIn")
    actorMgr:GetActor("7011"):TransmitPlayerWithQuestIdByData(701111, 1, datas.TransmitBlackData, nil, nil, nil)
end

function Q701111Trigger:PreTriggerIn()
    print("Q701111Trigger - PreTriggerIn")
end

function Q701111Trigger:LightUpTriggerIn()
    print("Q701111Trigger - LightUpTriggerIn")
end

function Q701111Trigger:TriggerOut()
    print("Q701111Trigger - TriggerOut")
end

return Q701111Trigger
