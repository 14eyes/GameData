require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7523302Trigger = class("Q7523302Trigger", GadgetActorProxy)
Q7523302Trigger.defaultAlias = "Q7523302Trigger"
local Q75233ClientConfig = require("Quest/Client/Q75233ClientConfig")

local this
local subIDs = Q75233ClientConfig.SubIDs
local npcs = Q75233ClientConfig.Npcs
local points = Q75233ClientConfig.Points

function Q7523302Trigger:OnPostDataPrepare()
    print("Q7523302Trigger - OnPostDataPrepare")
    this = self
end

function Q7523302Trigger:OnPostComponentPrepare()
    print("Q7523302Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75233)
end

function Q7523302Trigger:TriggerIn()
    print("Q7523302Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7523302)
    actorMgr:GetActor("75233"):RequestInteraction(npcs.Npc6505.alias, "", true)
    this:DestroySelf()
end

function Q7523302Trigger:PreTriggerIn()
    print("Q7523302Trigger - PreTriggerIn")
end

function Q7523302Trigger:LightUpTriggerIn()
    print("Q7523302Trigger - LightUpTriggerIn")
end

function Q7523302Trigger:TriggerOut()
    print("Q7523302Trigger - TriggerOut")
end

return Q7523302Trigger
