require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7715403Trigger = class("Q7715403Trigger", GadgetActorProxy)
Q7715403Trigger.defaultAlias = "Q7715403Trigger"
local Q77154ClientConfig = require("Quest/Client/Q77154ClientConfig")

local this
local subIDs = Q77154ClientConfig.SubIDs
local datas = Q77154ClientConfig.Datas
local npcs = Q77154ClientConfig.Npcs
local points = Q77154ClientConfig.Points

function Q7715403Trigger:OnPostDataPrepare()
    print("Q7715403Trigger - OnPostDataPrepare")
    this = self
end

function Q7715403Trigger:OnPostComponentPrepare()
    print("Q7715403Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77154)
end

function Q7715403Trigger:TriggerIn()
    print("Q7715403Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7715403})
    this:DestroySelf()
end

function Q7715403Trigger:PreTriggerIn()
    print("Q7715403Trigger - PreTriggerIn")
end

function Q7715403Trigger:LightUpTriggerIn()
    print("Q7715403Trigger - LightUpTriggerIn")
end

function Q7715403Trigger:TriggerOut()
    print("Q7715403Trigger - TriggerOut")
end

return Q7715403Trigger
