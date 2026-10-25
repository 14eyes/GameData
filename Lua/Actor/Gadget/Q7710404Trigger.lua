require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710404Trigger = class("Q7710404Trigger", GadgetActorProxy)
Q7710404Trigger.defaultAlias = "Q7710404Trigger"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710404Trigger:OnPostDataPrepare()
    print("Q7710404Trigger - OnPostDataPrepare")
    this = self
end

function Q7710404Trigger:OnPostComponentPrepare()
    print("Q7710404Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(9.376028, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710404Trigger:TriggerIn()
    print("Q7710404Trigger - TriggerIn")
    actorMgr:GetActor("77104"):RequestInteraction(npcs.Npc7655.alias, "", true)
    this:DestroySelf()
end

function Q7710404Trigger:PreTriggerIn()
    print("Q7710404Trigger - PreTriggerIn")
end

function Q7710404Trigger:LightUpTriggerIn()
    print("Q7710404Trigger - LightUpTriggerIn")
end

function Q7710404Trigger:TriggerOut()
    print("Q7710404Trigger - TriggerOut")
end

return Q7710404Trigger
