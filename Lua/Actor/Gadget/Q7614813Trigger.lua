require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614813Trigger = class("Q7614813Trigger", GadgetActorProxy)
Q7614813Trigger.defaultAlias = "Q7614813Trigger"
local Q76148ClientConfig = require("Quest/Client/Q76148ClientConfig")

local this
local subIDs = Q76148ClientConfig.SubIDs
local datas = Q76148ClientConfig.Datas
local npcs = Q76148ClientConfig.Npcs
local points = Q76148ClientConfig.Points

function Q7614813Trigger:OnPostDataPrepare()
    print("Q7614813Trigger - OnPostDataPrepare")
    this = self
end

function Q7614813Trigger:OnPostComponentPrepare()
    print("Q7614813Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(260, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76148)
end

function Q7614813Trigger:TriggerIn()
    print("Q7614813Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614813)
    this:DestroySelf()
end

function Q7614813Trigger:PreTriggerIn()
    print("Q7614813Trigger - PreTriggerIn")
end

function Q7614813Trigger:LightUpTriggerIn()
    print("Q7614813Trigger - LightUpTriggerIn")
end

function Q7614813Trigger:TriggerOut()
    print("Q7614813Trigger - TriggerOut")
end

return Q7614813Trigger
