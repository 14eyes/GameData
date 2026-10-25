require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local trigger1500615 = class("trigger1500615", GadgetActorProxy)
trigger1500615.defaultAlias = "trigger1500615"
local Q15006ClientConfig = require("Quest/Client/Q15006ClientConfig")

local this
local subIDs = Q15006ClientConfig.SubIDs
local npcs = Q15006ClientConfig.Npcs
local points = Q15006ClientConfig.Points

function trigger1500615:OnPostDataPrepare()
    print("trigger1500615 - OnPostDataPrepare")
    this = self
end

function trigger1500615:OnPostComponentPrepare()
    print("trigger1500615 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15006)
end

function trigger1500615:TriggerIn()
    print("trigger1500615 - TriggerIn")
    actorMgr:GetActor("15006"):RequestInteraction(npcs.Npc14304.alias, "", true)
    this:DestroySelf()
end

function trigger1500615:PreTriggerIn()
    print("trigger1500615 - PreTriggerIn")
end

function trigger1500615:LightUpTriggerIn()
    print("trigger1500615 - LightUpTriggerIn")
end

function trigger1500615:TriggerOut()
    print("trigger1500615 - TriggerOut")
end

return trigger1500615
