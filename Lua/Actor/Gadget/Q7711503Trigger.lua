require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711503Trigger = class("Q7711503Trigger", GadgetActorProxy)
Q7711503Trigger.defaultAlias = "Q7711503Trigger"
local Q77115ClientConfig = require("Quest/Client/Q77115ClientConfig")

local this
local subIDs = Q77115ClientConfig.SubIDs
local npcs = Q77115ClientConfig.Npcs
local points = Q77115ClientConfig.Points

function Q7711503Trigger:OnPostDataPrepare()
    print("Q7711503Trigger - OnPostDataPrepare")
    this = self
end

function Q7711503Trigger:OnPostComponentPrepare()
    print("Q7711503Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77115)
end

function Q7711503Trigger:TriggerIn()
    print("Q7711503Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711503)
    this:DestroySelf()
end

function Q7711503Trigger:PreTriggerIn()
    print("Q7711503Trigger - PreTriggerIn")
end

function Q7711503Trigger:LightUpTriggerIn()
    print("Q7711503Trigger - LightUpTriggerIn")
end

function Q7711503Trigger:TriggerOut()
    print("Q7711503Trigger - TriggerOut")
end

return Q7711503Trigger
