require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600617Trigger = class("Q600617Trigger", GadgetActorProxy)
Q600617Trigger.defaultAlias = "Q600617Trigger"
local Q6006ClientConfig = require("Quest/Client/Q6006ClientConfig")

local this
local subIDs = Q6006ClientConfig.SubIDs
local datas = Q6006ClientConfig.Datas
local npcs = Q6006ClientConfig.Npcs
local points = Q6006ClientConfig.Points

function Q600617Trigger:OnPostDataPrepare()
    print("Q600617Trigger - OnPostDataPrepare")
    this = self
end

function Q600617Trigger:OnPostComponentPrepare()
    print("Q600617Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6006)
end

function Q600617Trigger:TriggerIn()
    print("Q600617Trigger - TriggerIn")
    actorMgr:GetActor("6006"):ActionSafeCall(function(arg1)
        if actorMgr:GetActor("6006"):GetSubQuestState(600617) == 2 then
            actorMgr:GetActor("6006"):RequestInteraction(npcs.Npc15355.alias, "", true)
            this:DestroySelf()
        else
            this:DestroySelf()
        end
    end)
end

function Q600617Trigger:PreTriggerIn()
    print("Q600617Trigger - PreTriggerIn")
end

function Q600617Trigger:LightUpTriggerIn()
    print("Q600617Trigger - LightUpTriggerIn")
end

function Q600617Trigger:TriggerOut()
    print("Q600617Trigger - TriggerOut")
end

return Q600617Trigger
