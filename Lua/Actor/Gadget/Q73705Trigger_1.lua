require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73705Trigger_1 = class("Q73705Trigger_1", GadgetActorProxy)
Q73705Trigger_1.defaultAlias = "Q73705Trigger_1"
local Q73705ClientConfig = require("Quest/Client/Q73705ClientConfig")

local this
local subIDs = Q73705ClientConfig.SubIDs
local npcs = Q73705ClientConfig.Npcs
local points = Q73705ClientConfig.Points

function Q73705Trigger_1:OnPostDataPrepare()
    print("Q73705Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q73705Trigger_1:OnPostComponentPrepare()
    print("Q73705Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 73705)
end

function Q73705Trigger_1:TriggerIn()
    print("Q73705Trigger_1 - TriggerIn")
    actorMgr:GetActor("73705"):RequestInteraction(npcs.Npc1051.alias, "", true)
    this:DestroySelf()
end

function Q73705Trigger_1:PreTriggerIn()
    print("Q73705Trigger_1 - PreTriggerIn")
end

function Q73705Trigger_1:LightUpTriggerIn()
    print("Q73705Trigger_1 - LightUpTriggerIn")
end

function Q73705Trigger_1:TriggerOut()
    print("Q73705Trigger_1 - TriggerOut")
end

return Q73705Trigger_1
