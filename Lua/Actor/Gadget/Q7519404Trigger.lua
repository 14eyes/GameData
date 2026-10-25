require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7519404Trigger = class("Q7519404Trigger", GadgetActorProxy)
Q7519404Trigger.defaultAlias = "Q7519404Trigger"
local Q75194ClientConfig = require("Quest/Client/Q75194ClientConfig")

local this
local subIDs = Q75194ClientConfig.SubIDs
local datas = Q75194ClientConfig.Datas
local npcs = Q75194ClientConfig.Npcs
local points = Q75194ClientConfig.Points

function Q7519404Trigger:OnPostDataPrepare()
    print("Q7519404Trigger - OnPostDataPrepare")
    this = self
end

function Q7519404Trigger:OnPostComponentPrepare()
    print("Q7519404Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75194)
end

function Q7519404Trigger:TriggerIn()
    print("Q7519404Trigger - TriggerIn")
    actorMgr:GetActor("75194"):RequestInteractionForceAlias(npcs.Npc6459.alias, "", true)
    this:DestroySelf()
end

function Q7519404Trigger:PreTriggerIn()
    print("Q7519404Trigger - PreTriggerIn")
end

function Q7519404Trigger:LightUpTriggerIn()
    print("Q7519404Trigger - LightUpTriggerIn")
end

function Q7519404Trigger:TriggerOut()
    print("Q7519404Trigger - TriggerOut")
end

return Q7519404Trigger
