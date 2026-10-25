require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75500trigger = class("Q75500trigger", GadgetActorProxy)
Q75500trigger.defaultAlias = "Q75500trigger"
local Q75500ClientConfig = require("Quest/Client/Q75500ClientConfig")

local this
local subIDs = Q75500ClientConfig.SubIDs
local npcs = Q75500ClientConfig.Npcs
local points = Q75500ClientConfig.Points

function Q75500trigger:OnPostDataPrepare()
    print("Q75500trigger - OnPostDataPrepare")
    this = self
end

function Q75500trigger:OnPostComponentPrepare()
    print("Q75500trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75500)
end

function Q75500trigger:TriggerIn()
    print("Q75500trigger - TriggerIn")
    actorMgr:GetActor("75500"):RequestInteraction(npcs.Npc30609.alias, "", true)
    this:DestroySelf()
end

function Q75500trigger:PreTriggerIn()
    print("Q75500trigger - PreTriggerIn")
end

function Q75500trigger:LightUpTriggerIn()
    print("Q75500trigger - LightUpTriggerIn")
end

function Q75500trigger:TriggerOut()
    print("Q75500trigger - TriggerOut")
end

return Q75500trigger
