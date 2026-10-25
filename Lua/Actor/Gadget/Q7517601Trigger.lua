require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7517601Trigger = class("Q7517601Trigger", GadgetActorProxy)
Q7517601Trigger.defaultAlias = "Q7517601Trigger"
local Q75176ClientConfig = require("Quest/Client/Q75176ClientConfig")

local this
local subIDs = Q75176ClientConfig.SubIDs
local datas = Q75176ClientConfig.Datas
local npcs = Q75176ClientConfig.Npcs
local points = Q75176ClientConfig.Points

function Q7517601Trigger:OnPostDataPrepare()
    print("Q7517601Trigger - OnPostDataPrepare")
    this = self
end

function Q7517601Trigger:OnPostComponentPrepare()
    print("Q7517601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75176)
end

function Q7517601Trigger:TriggerIn()
    print("Q7517601Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7517601)
    this:DestroySelf()
end

function Q7517601Trigger:PreTriggerIn()
    print("Q7517601Trigger - PreTriggerIn")
end

function Q7517601Trigger:LightUpTriggerIn()
    print("Q7517601Trigger - LightUpTriggerIn")
end

function Q7517601Trigger:TriggerOut()
    print("Q7517601Trigger - TriggerOut")
end

return Q7517601Trigger
