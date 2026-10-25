require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710301Trigger = class("Q7710301Trigger", GadgetActorProxy)
Q7710301Trigger.defaultAlias = "Q7710301Trigger"
local Q77103ClientConfig = require("Quest/Client/Q77103ClientConfig")

local this
local subIDs = Q77103ClientConfig.SubIDs
local datas = Q77103ClientConfig.Datas
local npcs = Q77103ClientConfig.Npcs
local points = Q77103ClientConfig.Points

function Q7710301Trigger:OnPostDataPrepare()
    print("Q7710301Trigger - OnPostDataPrepare")
    this = self
end

function Q7710301Trigger:OnPostComponentPrepare()
    print("Q7710301Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77103)
end

function Q7710301Trigger:TriggerIn()
    print("Q7710301Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710301)
    this:DestroySelf()
end

function Q7710301Trigger:PreTriggerIn()
    print("Q7710301Trigger - PreTriggerIn")
end

function Q7710301Trigger:LightUpTriggerIn()
    print("Q7710301Trigger - LightUpTriggerIn")
end

function Q7710301Trigger:TriggerOut()
    print("Q7710301Trigger - TriggerOut")
end

return Q7710301Trigger
