require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3018Trigger1 = class("Q3018Trigger1", GadgetActorProxy)
Q3018Trigger1.defaultAlias = "Q3018Trigger1"
local Q3018ClientConfig = require("Quest/Client/Q3018ClientConfig")

local subIDs = Q3018ClientConfig.SubIDs
local npcs = Q3018ClientConfig.Npcs
local datas = Q3018ClientConfig.Datas

function Q3018Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3018Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3018Trigger1:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
    local actor = actorMgr:GetActor("3018")
    actor:CreateQuestNpcById(301805, npcs.Npc1053Data.id, 1)
    actor:RequestInteraction(npcs.Npc1053Data.alias)
    actor:LightNotifyTo(npcs.Npc4358Data.alias, 0, true)
    actor:DailyNpcSafeHideSelf(npcs.Npc4317Data.alias, 1, true)
    actor:DailyNpcSafeHideSelf(npcs.Npc4319Data.alias, 1, true)
    actor:LightNotifyTo(npcs.Npc4359Data.alias, 0, true)
    actor:DailyNpcSafeHideSelf(npcs.Npc4403Data.alias, 1, true)
end

function Q3018Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q3018Trigger1
