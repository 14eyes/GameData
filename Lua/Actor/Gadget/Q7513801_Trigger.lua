require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7513801_Trigger = class("Q7513801_Trigger", GadgetActorProxy)
Q7513801_Trigger.defaultAlias = "Q7513801_Trigger"
local Q75138ClientConfig = require("Quest/Client/Q75138ClientConfig")

local this
local subIDs = Q75138ClientConfig.SubIDs
local npcs = Q75138ClientConfig.Npcs
local points = Q75138ClientConfig.Points

function Q7513801_Trigger:OnPostDataPrepare()
    print("Q7513801_Trigger - OnPostDataPrepare")
    this = self
end

function Q7513801_Trigger:OnPostComponentPrepare()
    print("Q7513801_Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75138)
end

function Q7513801_Trigger:TriggerIn()
    print("Q7513801_Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7513801)
    this:DestroySelf()
end

function Q7513801_Trigger:PreTriggerIn()
    print("Q7513801_Trigger - PreTriggerIn")
end

function Q7513801_Trigger:LightUpTriggerIn()
    print("Q7513801_Trigger - LightUpTriggerIn")
end

function Q7513801_Trigger:TriggerOut()
    print("Q7513801_Trigger - TriggerOut")
end

return Q7513801_Trigger
