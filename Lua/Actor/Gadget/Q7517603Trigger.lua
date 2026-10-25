require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7517603Trigger = class("Q7517603Trigger", GadgetActorProxy)
Q7517603Trigger.defaultAlias = "Q7517603Trigger"
local Q75176ClientConfig = require("Quest/Client/Q75176ClientConfig")

local this
local subIDs = Q75176ClientConfig.SubIDs
local datas = Q75176ClientConfig.Datas
local npcs = Q75176ClientConfig.Npcs
local points = Q75176ClientConfig.Points

function Q7517603Trigger:OnPostDataPrepare()
    print("Q7517603Trigger - OnPostDataPrepare")
    this = self
end

function Q7517603Trigger:OnPostComponentPrepare()
    print("Q7517603Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75176)
end

function Q7517603Trigger:TriggerIn()
    print("Q7517603Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7517603)
    this:DestroySelf()
end

function Q7517603Trigger:PreTriggerIn()
    print("Q7517603Trigger - PreTriggerIn")
end

function Q7517603Trigger:LightUpTriggerIn()
    print("Q7517603Trigger - LightUpTriggerIn")
end

function Q7517603Trigger:TriggerOut()
    print("Q7517603Trigger - TriggerOut")
end

return Q7517603Trigger
