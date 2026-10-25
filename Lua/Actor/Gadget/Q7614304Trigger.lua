require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614304Trigger = class("Q7614304Trigger", GadgetActorProxy)
Q7614304Trigger.defaultAlias = "Q7614304Trigger"
local Q76143ClientConfig = require("Quest/Client/Q76143ClientConfig")

local this
local subIDs = Q76143ClientConfig.SubIDs
local datas = Q76143ClientConfig.Datas
local npcs = Q76143ClientConfig.Npcs
local points = Q76143ClientConfig.Points

function Q7614304Trigger:OnPostDataPrepare()
    print("Q7614304Trigger - OnPostDataPrepare")
    this = self
end

function Q7614304Trigger:OnPostComponentPrepare()
    print("Q7614304Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76143)
end

function Q7614304Trigger:TriggerIn()
    print("Q7614304Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614304)
    this:DestroySelf()
end

function Q7614304Trigger:PreTriggerIn()
    print("Q7614304Trigger - PreTriggerIn")
end

function Q7614304Trigger:LightUpTriggerIn()
    print("Q7614304Trigger - LightUpTriggerIn")
end

function Q7614304Trigger:TriggerOut()
    print("Q7614304Trigger - TriggerOut")
end

return Q7614304Trigger
