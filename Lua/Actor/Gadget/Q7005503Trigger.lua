require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7005503Trigger = class("Q7005503Trigger", GadgetActorProxy)
Q7005503Trigger.defaultAlias = "Q7005503Trigger"
local Q70055ClientConfig = require("Quest/Client/Q70055ClientConfig")

local this
local subIDs = Q70055ClientConfig.SubIDs
local points = Q70055ClientConfig.Points

function Q7005503Trigger:OnPostDataPrepare()
    print("Q7005503Trigger - OnPostDataPrepare")
    this = self
end

function Q7005503Trigger:OnPostComponentPrepare()
    print("Q7005503Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70055)
end

function Q7005503Trigger:TriggerIn()
    print("Q7005503Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7005503)
    this:DestroySelf()
end

function Q7005503Trigger:PreTriggerIn()
    print("Q7005503Trigger - PreTriggerIn")
end

function Q7005503Trigger:LightUpTriggerIn()
    print("Q7005503Trigger - LightUpTriggerIn")
end

function Q7005503Trigger:TriggerOut()
    print("Q7005503Trigger - TriggerOut")
end

return Q7005503Trigger
