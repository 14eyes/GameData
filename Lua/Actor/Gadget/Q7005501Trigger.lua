require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7005501Trigger = class("Q7005501Trigger", GadgetActorProxy)
Q7005501Trigger.defaultAlias = "Q7005501Trigger"
local Q70055ClientConfig = require("Quest/Client/Q70055ClientConfig")

local this
local subIDs = Q70055ClientConfig.SubIDs
local points = Q70055ClientConfig.Points

function Q7005501Trigger:OnPostDataPrepare()
    print("Q7005501Trigger - OnPostDataPrepare")
    this = self
end

function Q7005501Trigger:OnPostComponentPrepare()
    print("Q7005501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70055)
end

function Q7005501Trigger:TriggerIn()
    print("Q7005501Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7005501)
    this:DestroySelf()
end

function Q7005501Trigger:PreTriggerIn()
    print("Q7005501Trigger - PreTriggerIn")
end

function Q7005501Trigger:LightUpTriggerIn()
    print("Q7005501Trigger - LightUpTriggerIn")
end

function Q7005501Trigger:TriggerOut()
    print("Q7005501Trigger - TriggerOut")
end

return Q7005501Trigger
