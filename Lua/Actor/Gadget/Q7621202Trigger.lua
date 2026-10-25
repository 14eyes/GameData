require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7621202Trigger = class("Q7621202Trigger", GadgetActorProxy)
Q7621202Trigger.defaultAlias = "Q7621202Trigger"
local Q76212ClientConfig = require("Quest/Client/Q76212ClientConfig")

local this
local subIDs = Q76212ClientConfig.SubIDs
local npcs = Q76212ClientConfig.Npcs

function Q7621202Trigger:OnPostDataPrepare()
    print("Q7621202Trigger - OnPostDataPrepare")
    this = self
end

function Q7621202Trigger:OnPostComponentPrepare()
    print("Q7621202Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76212)
end

function Q7621202Trigger:TriggerIn()
    print("Q7621202Trigger - TriggerIn")
    actorMgr:GetActor("76212"):RequestInteraction(npcs.Npc7738.alias, npcs.Npc7738.alias, true)
    this:DestroySelf()
end

function Q7621202Trigger:PreTriggerIn()
    print("Q7621202Trigger - PreTriggerIn")
end

function Q7621202Trigger:LightUpTriggerIn()
    print("Q7621202Trigger - LightUpTriggerIn")
end

function Q7621202Trigger:TriggerOut()
    print("Q7621202Trigger - TriggerOut")
end

return Q7621202Trigger
