require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7621901Trigger = class("Q7621901Trigger", GadgetActorProxy)
Q7621901Trigger.defaultAlias = "Q7621901Trigger"
local Q76219ClientConfig = require("Quest/Client/Q76219ClientConfig")

local this
local subIDs = Q76219ClientConfig.SubIDs
local npcs = Q76219ClientConfig.Npcs
local points = Q76219ClientConfig.Points

function Q7621901Trigger:OnPostDataPrepare()
    print("Q7621901Trigger - OnPostDataPrepare")
    this = self
end

function Q7621901Trigger:OnPostComponentPrepare()
    print("Q7621901Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76219)
end

function Q7621901Trigger:TriggerIn()
    print("Q7621901Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7621901})
    this:DestroySelf()
end

function Q7621901Trigger:PreTriggerIn()
    print("Q7621901Trigger - PreTriggerIn")
end

function Q7621901Trigger:LightUpTriggerIn()
    print("Q7621901Trigger - LightUpTriggerIn")
end

function Q7621901Trigger:TriggerOut()
    print("Q7621901Trigger - TriggerOut")
end

return Q7621901Trigger
