require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7109907Trigger = class("Q7109907Trigger", GadgetActorProxy)
Q7109907Trigger.defaultAlias = "Q7109907Trigger"
local Q71099ClientConfig = require("Quest/Client/Q71099ClientConfig")

local subIDs = Q71099ClientConfig.SubIDs
local npcs = Q71099ClientConfig.Npcs
local gadgets = Q71099ClientConfig.Gadgets

function Q7109907Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7109907Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3.843568, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7109907Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("71099"):CallDelay(0.5, function(arg1)
        actorMgr:GetActor("71099"):RequestInteraction(npcs.Npc2011Data.alias)
    end)

    self:DestroySelf()
end

function Q7109907Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7109907Trigger
