require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7665203Trigger = class("Q7665203Trigger", GadgetActorProxy)
Q7665203Trigger.defaultAlias = "Q7665203Trigger"
local Q76652ClientConfig = require("Quest/Client/Q76652ClientConfig")

local this
local subIDs = Q76652ClientConfig.SubIDs
local datas = Q76652ClientConfig.Datas
local npcs = Q76652ClientConfig.Npcs
local points = Q76652ClientConfig.Points

function Q7665203Trigger:OnPostDataPrepare()
    print("Q7665203Trigger - OnPostDataPrepare")
    this = self
end

function Q7665203Trigger:OnPostComponentPrepare()
    print("Q7665203Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76652)
end

function Q7665203Trigger:TriggerIn()
    print("Q7665203Trigger - TriggerIn")
    actorMgr:GetActor("76652"):RequestInteraction(npcs.Npc1313.alias, "", true)
    this:DestroySelf()
end

function Q7665203Trigger:PreTriggerIn()
    print("Q7665203Trigger - PreTriggerIn")
end

function Q7665203Trigger:LightUpTriggerIn()
    print("Q7665203Trigger - LightUpTriggerIn")
end

function Q7665203Trigger:TriggerOut()
    print("Q7665203Trigger - TriggerOut")
end

return Q7665203Trigger
