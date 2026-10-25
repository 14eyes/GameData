require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7523801Trigger = class("Q7523801Trigger", GadgetActorProxy)
Q7523801Trigger.defaultAlias = "Q7523801Trigger"
local Q75238ClientConfig = require("Quest/Client/Q75238ClientConfig")

local this
local subIDs = Q75238ClientConfig.SubIDs
local npcs = Q75238ClientConfig.Npcs
local points = Q75238ClientConfig.Points

function Q7523801Trigger:OnPostDataPrepare()
    print("Q7523801Trigger - OnPostDataPrepare")
    this = self
end

function Q7523801Trigger:OnPostComponentPrepare()
    print("Q7523801Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75238)
end

function Q7523801Trigger:TriggerIn()
    print("Q7523801Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7523801})
    this:DestroySelf()
end

function Q7523801Trigger:PreTriggerIn()
    print("Q7523801Trigger - PreTriggerIn")
end

function Q7523801Trigger:LightUpTriggerIn()
    print("Q7523801Trigger - LightUpTriggerIn")
end

function Q7523801Trigger:TriggerOut()
    print("Q7523801Trigger - TriggerOut")
end

return Q7523801Trigger
