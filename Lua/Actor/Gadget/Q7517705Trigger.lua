require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7517705Trigger = class("Q7517705Trigger", GadgetActorProxy)
Q7517705Trigger.defaultAlias = "Q7517705Trigger"
local Q75177ClientConfig = require("Quest/Client/Q75177ClientConfig")

local this
local subIDs = Q75177ClientConfig.SubIDs
local datas = Q75177ClientConfig.Datas
local npcs = Q75177ClientConfig.Npcs
local points = Q75177ClientConfig.Points

function Q7517705Trigger:OnPostDataPrepare()
    print("Q7517705Trigger - OnPostDataPrepare")
    this = self
end

function Q7517705Trigger:OnPostComponentPrepare()
    print("Q7517705Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(90, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75177)
end

function Q7517705Trigger:TriggerIn()
    print("Q7517705Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7517705)
    this:DestroySelf()
end

function Q7517705Trigger:PreTriggerIn()
    print("Q7517705Trigger - PreTriggerIn")
end

function Q7517705Trigger:LightUpTriggerIn()
    print("Q7517705Trigger - LightUpTriggerIn")
end

function Q7517705Trigger:TriggerOut()
    print("Q7517705Trigger - TriggerOut")
end

return Q7517705Trigger
