require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19015Trigger_BattleArea = class("Q19015Trigger_BattleArea", GadgetActorProxy)
Q19015Trigger_BattleArea.defaultAlias = "Q19015Trigger_BattleArea"
local Q19015ClientConfig = require("Quest/Client/Q19015ClientConfig")

local subIDs = Q19015ClientConfig.SubIDs
local npcs = Q19015ClientConfig.Npcs
local datas = Q19015ClientConfig.Datas

function Q19015Trigger_BattleArea:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19015Trigger_BattleArea:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19015Trigger_BattleArea:TriggerIn()
    print("TriggerIn")
end

function Q19015Trigger_BattleArea:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("19015"):FinishQuestID(true, 1901505)
    self:DestroySelf()
end

return Q19015Trigger_BattleArea
