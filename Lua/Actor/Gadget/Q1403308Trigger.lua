require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403308Trigger = class("Q1403308Trigger", GadgetActorProxy)
Q1403308Trigger.defaultAlias = "Q1403308Trigger"
local Q14033ClientConfig = require("Quest/Client/Q14033ClientConfig")

local this
local subIDs = Q14033ClientConfig.SubIDs
local datas = Q14033ClientConfig.Datas
local npcs = Q14033ClientConfig.Npcs
local points = Q14033ClientConfig.Points

function Q1403308Trigger:OnPostDataPrepare()
    print("Q1403308Trigger - OnPostDataPrepare")
    this = self
end

function Q1403308Trigger:OnPostComponentPrepare()
    print("Q1403308Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14033)
end

function Q1403308Trigger:TriggerIn()
    print("Q1403308Trigger - TriggerIn")
    actorMgr:GetActor("14033"):RequestInteraction(npcs.Npc1077.alias, "", true)
    this:DestroySelf()
end

function Q1403308Trigger:PreTriggerIn()
    print("Q1403308Trigger - PreTriggerIn")
end

function Q1403308Trigger:LightUpTriggerIn()
    print("Q1403308Trigger - LightUpTriggerIn")
end

function Q1403308Trigger:TriggerOut()
    print("Q1403308Trigger - TriggerOut")
end

return Q1403308Trigger
