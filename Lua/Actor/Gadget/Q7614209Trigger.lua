require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614209Trigger = class("Q7614209Trigger", GadgetActorProxy)
Q7614209Trigger.defaultAlias = "Q7614209Trigger"
local Q76142ClientConfig = require("Quest/Client/Q76142ClientConfig")

local this
local subIDs = Q76142ClientConfig.SubIDs
local datas = Q76142ClientConfig.Datas
local npcs = Q76142ClientConfig.Npcs
local points = Q76142ClientConfig.Points

function Q7614209Trigger:OnPostDataPrepare()
    print("Q7614209Trigger - OnPostDataPrepare")
    this = self
end

function Q7614209Trigger:OnPostComponentPrepare()
    print("Q7614209Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76142)
end

function Q7614209Trigger:TriggerIn()
    print("Q7614209Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614209)
    this:DestroySelf()
end

function Q7614209Trigger:PreTriggerIn()
    print("Q7614209Trigger - PreTriggerIn")
end

function Q7614209Trigger:LightUpTriggerIn()
    print("Q7614209Trigger - LightUpTriggerIn")
end

function Q7614209Trigger:TriggerOut()
    print("Q7614209Trigger - TriggerOut")
end

return Q7614209Trigger
