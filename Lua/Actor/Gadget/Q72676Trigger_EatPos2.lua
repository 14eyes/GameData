require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72676Trigger_EatPos2 = class("Q72676Trigger_EatPos2", GadgetActorProxy)
Q72676Trigger_EatPos2.defaultAlias = "Q72676Trigger_EatPos2"
local Q72676ClientConfig = require("Quest/Client/Q72676ClientConfig")

local subIDs = Q72676ClientConfig.SubIDs
local npcs = Q72676ClientConfig.Npcs
local gadgets = Q72676ClientConfig.Gadgets
local datas = Q72676ClientConfig.Datas

function Q72676Trigger_EatPos2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72676Trigger_EatPos2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72676Trigger_EatPos2:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("72676")
    actor:CreateQuestNpcById(7267613, npcs.Npc12354Data.id, 2)
    actor:RequestInteraction(npcs.Npc12354Data.alias)
    self:DestroySelf()
end

function Q72676Trigger_EatPos2:TriggerOut()
    print("TriggerOut")
end

return Q72676Trigger_EatPos2
