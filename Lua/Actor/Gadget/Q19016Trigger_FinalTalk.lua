require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19016Trigger_FinalTalk = class("Q19016Trigger_FinalTalk", GadgetActorProxy)
Q19016Trigger_FinalTalk.defaultAlias = "Q19016Trigger_FinalTalk"
local Q19016ClientConfig = require("Quest/Client/Q19016ClientConfig")

local subIDs = Q19016ClientConfig.SubIDs
local npcs = Q19016ClientConfig.Npcs
local gadgets = Q19016ClientConfig.Gadgets

function Q19016Trigger_FinalTalk:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19016Trigger_FinalTalk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19016Trigger_FinalTalk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19016"):RequestInteraction(npcs.Npc12170Data.alias)
    self:DestroySelf()
end

function Q19016Trigger_FinalTalk:TriggerOut()
    print("TriggerOut")
end

return Q19016Trigger_FinalTalk
