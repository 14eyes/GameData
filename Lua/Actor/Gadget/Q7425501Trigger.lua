require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7425501Trigger = class("Q7425501Trigger", GadgetActorProxy)
Q7425501Trigger.defaultAlias = "Q7425501Trigger"
local Q74255ClientConfig = require("Quest/Client/Q74255ClientConfig")

local this
local subIDs = Q74255ClientConfig.SubIDs
local npcs = Q74255ClientConfig.Npcs
local points = Q74255ClientConfig.Points

function Q7425501Trigger:OnPostDataPrepare()
    print("Q7425501Trigger - OnPostDataPrepare")
    this = self
end

function Q7425501Trigger:OnPostComponentPrepare()
    print("Q7425501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74255)
end

function Q7425501Trigger:TriggerIn()
    print("Q7425501Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7425501})
    this:DestroySelf()
end

function Q7425501Trigger:PreTriggerIn()
    print("Q7425501Trigger - PreTriggerIn")
end

function Q7425501Trigger:LightUpTriggerIn()
    print("Q7425501Trigger - LightUpTriggerIn")
end

function Q7425501Trigger:TriggerOut()
    print("Q7425501Trigger - TriggerOut")
end

return Q7425501Trigger
