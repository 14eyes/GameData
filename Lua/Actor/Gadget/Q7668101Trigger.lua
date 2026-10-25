require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7668101Trigger = class("Q7668101Trigger", GadgetActorProxy)
Q7668101Trigger.defaultAlias = "Q7668101Trigger"
local Q76681ClientConfig = require("Quest/Client/Q76681ClientConfig")

local this
local subIDs = Q76681ClientConfig.SubIDs
local npcs = Q76681ClientConfig.Npcs
local points = Q76681ClientConfig.Points

function Q7668101Trigger:OnPostDataPrepare()
    print("Q7668101Trigger - OnPostDataPrepare")
    this = self
end

function Q7668101Trigger:OnPostComponentPrepare()
    print("Q7668101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(51.811375, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76681)
end

function Q7668101Trigger:TriggerIn()
    print("Q7668101Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7668101)
    this:DestroySelf()
end

function Q7668101Trigger:PreTriggerIn()
    print("Q7668101Trigger - PreTriggerIn")
end

function Q7668101Trigger:LightUpTriggerIn()
    print("Q7668101Trigger - LightUpTriggerIn")
end

function Q7668101Trigger:TriggerOut()
    print("Q7668101Trigger - TriggerOut")
end

return Q7668101Trigger
