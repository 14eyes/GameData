require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4023116Trigger = class("Q4023116Trigger", GadgetActorProxy)
Q4023116Trigger.defaultAlias = "Q4023116Trigger"
local Q40231ClientConfig = require("Quest/Client/Q40231ClientConfig")

local this
local subIDs = Q40231ClientConfig.SubIDs
local datas = Q40231ClientConfig.Datas
local npcs = Q40231ClientConfig.Npcs
local points = Q40231ClientConfig.Points

function Q4023116Trigger:OnPostDataPrepare()
    print("Q4023116Trigger - OnPostDataPrepare")
    this = self
end

function Q4023116Trigger:OnPostComponentPrepare()
    print("Q4023116Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40231)
end

function Q4023116Trigger:TriggerIn()
    print("Q4023116Trigger - TriggerIn")
    actorMgr:GetActor("40231"):TransmitPlayerWithQuestIdByData(4023116, 1, datas.Transmit_BB, nil, nil, nil)
    this:DestroySelf()
end

function Q4023116Trigger:PreTriggerIn()
    print("Q4023116Trigger - PreTriggerIn")
end

function Q4023116Trigger:LightUpTriggerIn()
    print("Q4023116Trigger - LightUpTriggerIn")
end

function Q4023116Trigger:TriggerOut()
    print("Q4023116Trigger - TriggerOut")
end

return Q4023116Trigger
