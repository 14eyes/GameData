require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19013Trigger_BattleLeave = class("Q19013Trigger_BattleLeave", GadgetActorProxy)
Q19013Trigger_BattleLeave.defaultAlias = "Q19013Trigger_BattleLeave"
local Q19013ClientConfig = require("Quest/Client/Q19013ClientConfig")

local subIDs = Q19013ClientConfig.SubIDs
local npcs = Q19013ClientConfig.Npcs
local gadgets = Q19013ClientConfig.Gadgets
local datas = Q19013ClientConfig.Datas

function Q19013Trigger_BattleLeave:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19013Trigger_BattleLeave:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19013Trigger_BattleLeave:TriggerIn()
    print("TriggerIn")
end

function Q19013Trigger_BattleLeave:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("19013"):FinishQuestID(true, 1901304)
    self:DestroySelf()
end

return Q19013Trigger_BattleLeave
