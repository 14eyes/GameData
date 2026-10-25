require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500907Trigger = class("Q7500907Trigger", GadgetActorProxy)
Q7500907Trigger.defaultAlias = "Q7500907Trigger"
local Q75009ClientConfig = require("Quest/Client/Q75009ClientConfig")

local this
local subIDs = Q75009ClientConfig.SubIDs
local npcs = Q75009ClientConfig.Npcs
local points = Q75009ClientConfig.Points

function Q7500907Trigger:OnPostDataPrepare()
    print("Q7500907Trigger - OnPostDataPrepare")
    this = self
end

function Q7500907Trigger:OnPostComponentPrepare()
    print("Q7500907Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(9.150112, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75009)
end

function Q7500907Trigger:TriggerIn()
    print("Q7500907Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7500907)
    this:DestroySelf()
end

function Q7500907Trigger:PreTriggerIn()
    print("Q7500907Trigger - PreTriggerIn")
end

function Q7500907Trigger:LightUpTriggerIn()
    print("Q7500907Trigger - LightUpTriggerIn")
end

function Q7500907Trigger:TriggerOut()
    print("Q7500907Trigger - TriggerOut")
end

return Q7500907Trigger
