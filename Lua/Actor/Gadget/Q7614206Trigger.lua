require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614206Trigger = class("Q7614206Trigger", GadgetActorProxy)
Q7614206Trigger.defaultAlias = "Q7614206Trigger"
local Q76142ClientConfig = require("Quest/Client/Q76142ClientConfig")

local this
local subIDs = Q76142ClientConfig.SubIDs
local datas = Q76142ClientConfig.Datas
local npcs = Q76142ClientConfig.Npcs
local points = Q76142ClientConfig.Points

function Q7614206Trigger:OnPostDataPrepare()
    print("Q7614206Trigger - OnPostDataPrepare")
    this = self
end

function Q7614206Trigger:OnPostComponentPrepare()
    print("Q7614206Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76142)
end

function Q7614206Trigger:TriggerIn()
    print("Q7614206Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614206)
    this:DestroySelf()
end

function Q7614206Trigger:PreTriggerIn()
    print("Q7614206Trigger - PreTriggerIn")
end

function Q7614206Trigger:LightUpTriggerIn()
    print("Q7614206Trigger - LightUpTriggerIn")
end

function Q7614206Trigger:TriggerOut()
    print("Q7614206Trigger - TriggerOut")
end

return Q7614206Trigger
