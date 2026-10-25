require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7425701Trigger = class("Q7425701Trigger", GadgetActorProxy)
Q7425701Trigger.defaultAlias = "Q7425701Trigger"
local Q74257ClientConfig = require("Quest/Client/Q74257ClientConfig")

local this
local subIDs = Q74257ClientConfig.SubIDs
local npcs = Q74257ClientConfig.Npcs
local points = Q74257ClientConfig.Points

function Q7425701Trigger:OnPostDataPrepare()
    print("Q7425701Trigger - OnPostDataPrepare")
    this = self
end

function Q7425701Trigger:OnPostComponentPrepare()
    print("Q7425701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74257)
end

function Q7425701Trigger:TriggerIn()
    print("Q7425701Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7425701})
    this:DestroySelf()
end

function Q7425701Trigger:PreTriggerIn()
    print("Q7425701Trigger - PreTriggerIn")
end

function Q7425701Trigger:LightUpTriggerIn()
    print("Q7425701Trigger - LightUpTriggerIn")
end

function Q7425701Trigger:TriggerOut()
    print("Q7425701Trigger - TriggerOut")
end

return Q7425701Trigger
