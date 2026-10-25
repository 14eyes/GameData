require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7716102Tigger = class("Q7716102Tigger", GadgetActorProxy)
Q7716102Tigger.defaultAlias = "Q7716102Tigger"
local Q77161ClientConfig = require("Quest/Client/Q77161ClientConfig")

local this
local subIDs = Q77161ClientConfig.SubIDs
local npcs = Q77161ClientConfig.Npcs

function Q7716102Tigger:OnPostDataPrepare()
    print("Q7716102Tigger - OnPostDataPrepare")
    this = self
end

function Q7716102Tigger:OnPostComponentPrepare()
    print("Q7716102Tigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77161)
end

function Q7716102Tigger:TriggerIn()
    print("Q7716102Tigger - TriggerIn")
    actorMgr:GetActor("77161"):RequestInteraction(npcs.Npc22731_1.alias, "", true)
    this:DestroySelf()
end

function Q7716102Tigger:PreTriggerIn()
    print("Q7716102Tigger - PreTriggerIn")
end

function Q7716102Tigger:LightUpTriggerIn()
    print("Q7716102Tigger - LightUpTriggerIn")
end

function Q7716102Tigger:TriggerOut()
    print("Q7716102Tigger - TriggerOut")
end

return Q7716102Tigger
