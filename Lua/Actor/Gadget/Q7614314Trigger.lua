require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614314Trigger = class("Q7614314Trigger", GadgetActorProxy)
Q7614314Trigger.defaultAlias = "Q7614314Trigger"
local Q76143ClientConfig = require("Quest/Client/Q76143ClientConfig")

local this
local subIDs = Q76143ClientConfig.SubIDs
local datas = Q76143ClientConfig.Datas
local npcs = Q76143ClientConfig.Npcs
local points = Q76143ClientConfig.Points

function Q7614314Trigger:OnPostDataPrepare()
    print("Q7614314Trigger - OnPostDataPrepare")
    this = self
end

function Q7614314Trigger:OnPostComponentPrepare()
    print("Q7614314Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76143)
end

function Q7614314Trigger:TriggerIn()
    print("Q7614314Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614314)
    this:DestroySelf()
end

function Q7614314Trigger:PreTriggerIn()
    print("Q7614314Trigger - PreTriggerIn")
end

function Q7614314Trigger:LightUpTriggerIn()
    print("Q7614314Trigger - LightUpTriggerIn")
end

function Q7614314Trigger:TriggerOut()
    print("Q7614314Trigger - TriggerOut")
end

return Q7614314Trigger
