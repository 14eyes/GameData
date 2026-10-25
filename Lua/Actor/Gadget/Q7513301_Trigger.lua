require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7513301_Trigger = class("Q7513301_Trigger", GadgetActorProxy)
Q7513301_Trigger.defaultAlias = "Q7513301_Trigger"
local Q75133ClientConfig = require("Quest/Client/Q75133ClientConfig")

local this
local subIDs = Q75133ClientConfig.SubIDs
local npcs = Q75133ClientConfig.Npcs
local points = Q75133ClientConfig.Points

function Q7513301_Trigger:OnPostDataPrepare()
    print("Q7513301_Trigger - OnPostDataPrepare")
    this = self
end

function Q7513301_Trigger:OnPostComponentPrepare()
    print("Q7513301_Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75133)
end

function Q7513301_Trigger:TriggerIn()
    print("Q7513301_Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7513301)
    this:DestroySelf()
end

function Q7513301_Trigger:PreTriggerIn()
    print("Q7513301_Trigger - PreTriggerIn")
end

function Q7513301_Trigger:LightUpTriggerIn()
    print("Q7513301_Trigger - LightUpTriggerIn")
end

function Q7513301_Trigger:TriggerOut()
    print("Q7513301_Trigger - TriggerOut")
end

return Q7513301_Trigger
