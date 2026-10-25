require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602618Trigger = class("Q602618Trigger", GadgetActorProxy)
Q602618Trigger.defaultAlias = "Q602618Trigger"
local Q6026ClientConfig = require("Quest/Client/Q6026ClientConfig")

local this
local subIDs = Q6026ClientConfig.SubIDs
local datas = Q6026ClientConfig.Datas
local npcs = Q6026ClientConfig.Npcs
local points = Q6026ClientConfig.Points

function Q602618Trigger:OnPostDataPrepare()
    print("Q602618Trigger - OnPostDataPrepare")
    this = self
end

function Q602618Trigger:OnPostComponentPrepare()
    print("Q602618Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6026)
end

function Q602618Trigger:TriggerIn()
    print("Q602618Trigger - TriggerIn")
    actorMgr:GetActor("6026"):RequestInteraction(npcs.Npc15407.alias, "", true)
    this:DestroySelf()
end

function Q602618Trigger:PreTriggerIn()
    print("Q602618Trigger - PreTriggerIn")
end

function Q602618Trigger:LightUpTriggerIn()
    print("Q602618Trigger - LightUpTriggerIn")
end

function Q602618Trigger:TriggerOut()
    print("Q602618Trigger - TriggerOut")
end

return Q602618Trigger
