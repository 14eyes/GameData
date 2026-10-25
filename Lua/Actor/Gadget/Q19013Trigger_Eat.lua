require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19013Trigger_Eat = class("Q19013Trigger_Eat", GadgetActorProxy)
Q19013Trigger_Eat.defaultAlias = "Q19013Trigger_Eat"
local Q19013ClientConfig = require("Quest/Client/Q19013ClientConfig")

local subIDs = Q19013ClientConfig.SubIDs
local npcs = Q19013ClientConfig.Npcs
local gadgets = Q19013ClientConfig.Gadgets
local datas = Q19013ClientConfig.Datas

function Q19013Trigger_Eat:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19013Trigger_Eat:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19013Trigger_Eat:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19013"):FinishQuestID(false, 1901301)
    self:DestroySelf()
end

function Q19013Trigger_Eat:TriggerOut()
    print("TriggerOut")
end

return Q19013Trigger_Eat
