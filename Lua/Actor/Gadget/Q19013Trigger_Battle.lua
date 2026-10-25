require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19013Trigger_Battle = class("Q19013Trigger_Battle", GadgetActorProxy)
Q19013Trigger_Battle.defaultAlias = "Q19013Trigger_Battle"
local Q19013ClientConfig = require("Quest/Client/Q19013ClientConfig")

local subIDs = Q19013ClientConfig.SubIDs
local npcs = Q19013ClientConfig.Npcs
local gadgets = Q19013ClientConfig.Gadgets
local datas = Q19013ClientConfig.Datas

function Q19013Trigger_Battle:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19013Trigger_Battle:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19013Trigger_Battle:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19013"):RequestInteraction(npcs.Npc12170Data.alias)
end

function Q19013Trigger_Battle:TriggerOut()
    print("TriggerOut")
end

return Q19013Trigger_Battle
