require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614315Trigger = class("Q7614315Trigger", GadgetActorProxy)
Q7614315Trigger.defaultAlias = "Q7614315Trigger"
local Q76143ClientConfig = require("Quest/Client/Q76143ClientConfig")

local this
local subIDs = Q76143ClientConfig.SubIDs
local datas = Q76143ClientConfig.Datas
local npcs = Q76143ClientConfig.Npcs
local points = Q76143ClientConfig.Points

function Q7614315Trigger:OnPostDataPrepare()
    print("Q7614315Trigger - OnPostDataPrepare")
    this = self
end

function Q7614315Trigger:OnPostComponentPrepare()
    print("Q7614315Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76143)
end

function Q7614315Trigger:TriggerIn()
    print("Q7614315Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614315)
    this:DestroySelf()
end

function Q7614315Trigger:PreTriggerIn()
    print("Q7614315Trigger - PreTriggerIn")
end

function Q7614315Trigger:LightUpTriggerIn()
    print("Q7614315Trigger - LightUpTriggerIn")
end

function Q7614315Trigger:TriggerOut()
    print("Q7614315Trigger - TriggerOut")
end

return Q7614315Trigger
