require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7713113Trigger = class("Q7713113Trigger", GadgetActorProxy)
Q7713113Trigger.defaultAlias = "Q7713113Trigger"
local Q77131ClientConfig = require("Quest/Client/Q77131ClientConfig")

local this
local subIDs = Q77131ClientConfig.SubIDs
local datas = Q77131ClientConfig.Datas
local npcs = Q77131ClientConfig.Npcs
local points = Q77131ClientConfig.Points

function Q7713113Trigger:OnPostDataPrepare()
    print("Q7713113Trigger - OnPostDataPrepare")
    this = self
end

function Q7713113Trigger:OnPostComponentPrepare()
    print("Q7713113Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77131)
end

function Q7713113Trigger:TriggerIn()
    print("Q7713113Trigger - TriggerIn")
    actorMgr:GetActor("77131"):RequestInteraction(npcs.Npc7801.alias, "", true)
end

function Q7713113Trigger:PreTriggerIn()
    print("Q7713113Trigger - PreTriggerIn")
end

function Q7713113Trigger:LightUpTriggerIn()
    print("Q7713113Trigger - LightUpTriggerIn")
end

function Q7713113Trigger:TriggerOut()
    print("Q7713113Trigger - TriggerOut")
end

return Q7713113Trigger
