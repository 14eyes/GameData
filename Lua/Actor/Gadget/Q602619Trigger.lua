require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602619Trigger = class("Q602619Trigger", GadgetActorProxy)
Q602619Trigger.defaultAlias = "Q602619Trigger"
local Q6026ClientConfig = require("Quest/Client/Q6026ClientConfig")

local this
local subIDs = Q6026ClientConfig.SubIDs
local datas = Q6026ClientConfig.Datas
local npcs = Q6026ClientConfig.Npcs
local points = Q6026ClientConfig.Points

function Q602619Trigger:OnPostDataPrepare()
    print("Q602619Trigger - OnPostDataPrepare")
    this = self
end

function Q602619Trigger:OnPostComponentPrepare()
    print("Q602619Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6026)
end

function Q602619Trigger:TriggerIn()
    print("Q602619Trigger - TriggerIn")
    actorMgr:GetActor("6026"):RequestInteraction(npcs.Npc7096.alias, "", true)
    this:DestroySelf()
end

function Q602619Trigger:PreTriggerIn()
    print("Q602619Trigger - PreTriggerIn")
end

function Q602619Trigger:LightUpTriggerIn()
    print("Q602619Trigger - LightUpTriggerIn")
end

function Q602619Trigger:TriggerOut()
    print("Q602619Trigger - TriggerOut")
end

return Q602619Trigger
