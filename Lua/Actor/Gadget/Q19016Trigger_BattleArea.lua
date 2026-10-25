require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19016Trigger_BattleArea = class("Q19016Trigger_BattleArea", GadgetActorProxy)
Q19016Trigger_BattleArea.defaultAlias = "Q19016Trigger_BattleArea"
local Q19016ClientConfig = require("Quest/Client/Q19016ClientConfig")

local subIDs = Q19016ClientConfig.SubIDs
local npcs = Q19016ClientConfig.Npcs
local gadgets = Q19016ClientConfig.Gadgets

function Q19016Trigger_BattleArea:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19016Trigger_BattleArea:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19016Trigger_BattleArea:TriggerIn()
    print("TriggerIn")
end

function Q19016Trigger_BattleArea:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("19016"):FinishQuestID(true, 1901603)
    self:DestroySelf()
end

return Q19016Trigger_BattleArea
