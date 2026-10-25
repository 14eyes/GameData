require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19016Trigger_BattleTalk = class("Q19016Trigger_BattleTalk", GadgetActorProxy)
Q19016Trigger_BattleTalk.defaultAlias = "Q19016Trigger_BattleTalk"
local Q19016ClientConfig = require("Quest/Client/Q19016ClientConfig")

local subIDs = Q19016ClientConfig.SubIDs
local npcs = Q19016ClientConfig.Npcs
local gadgets = Q19016ClientConfig.Gadgets

function Q19016Trigger_BattleTalk:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19016Trigger_BattleTalk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19016Trigger_BattleTalk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19016"):RequestInteraction(npcs.Npc12169Data.alias)
    self:DestroySelf()
end

function Q19016Trigger_BattleTalk:TriggerOut()
    print("TriggerOut")
end

return Q19016Trigger_BattleTalk
