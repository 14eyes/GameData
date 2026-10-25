require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710801Trigger = class("Q7710801Trigger", GadgetActorProxy)
Q7710801Trigger.defaultAlias = "Q7710801Trigger"
local Q77108ClientConfig = require("Quest/Client/Q77108ClientConfig")

local this
local subIDs = Q77108ClientConfig.SubIDs

function Q7710801Trigger:OnPostDataPrepare()
    print("Q7710801Trigger - OnPostDataPrepare")
    this = self
end

function Q7710801Trigger:OnPostComponentPrepare()
    print("Q7710801Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77108)
end

function Q7710801Trigger:TriggerIn()
    print("Q7710801Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710801)
end

function Q7710801Trigger:PreTriggerIn()
    print("Q7710801Trigger - PreTriggerIn")
end

function Q7710801Trigger:LightUpTriggerIn()
    print("Q7710801Trigger - LightUpTriggerIn")
end

function Q7710801Trigger:TriggerOut()
    print("Q7710801Trigger - TriggerOut")
end

return Q7710801Trigger
