require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614311Trigger = class("Q7614311Trigger", GadgetActorProxy)
Q7614311Trigger.defaultAlias = "Q7614311Trigger"
local Q76143ClientConfig = require("Quest/Client/Q76143ClientConfig")

local this
local subIDs = Q76143ClientConfig.SubIDs
local datas = Q76143ClientConfig.Datas
local npcs = Q76143ClientConfig.Npcs
local points = Q76143ClientConfig.Points

function Q7614311Trigger:OnPostDataPrepare()
    print("Q7614311Trigger - OnPostDataPrepare")
    this = self
end

function Q7614311Trigger:OnPostComponentPrepare()
    print("Q7614311Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76143)
end

function Q7614311Trigger:TriggerIn()
    print("Q7614311Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614309)
    this:DestroySelf()
end

function Q7614311Trigger:PreTriggerIn()
    print("Q7614311Trigger - PreTriggerIn")
end

function Q7614311Trigger:LightUpTriggerIn()
    print("Q7614311Trigger - LightUpTriggerIn")
end

function Q7614311Trigger:TriggerOut()
    print("Q7614311Trigger - TriggerOut")
end

return Q7614311Trigger
