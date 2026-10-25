require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3018Trigger2 = class("Q3018Trigger2", GadgetActorProxy)
Q3018Trigger2.defaultAlias = "Q3018Trigger2"
local Q3018ClientConfig = require("Quest/Client/Q3018ClientConfig")

local subIDs = Q3018ClientConfig.SubIDs
local npcs = Q3018ClientConfig.Npcs
local datas = Q3018ClientConfig.Datas

function Q3018Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3018Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3018Trigger2:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
    local actor = actorMgr:GetActor("3018")
    actor:CreateQuestNpcById(301811, npcs.Npc12701Data.id, 1)
    actor:RequestInteraction(npcs.Npc12701Data.alias)
    actor:LightNotifyTo(npcs.Npc4408Data.alias, 0, true)
    actor:LightNotifyTo(npcs.Npc4410Data.alias, 0, true)
    actor:LightNotifyTo(npcs.Npc4411Data.alias, 0, true)
    actor:LightNotifyTo(npcs.Npc4317Data.alias, 0, true)
    actor:LightNotifyTo(npcs.Npc4319Data.alias, 0, true)
end

function Q3018Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q3018Trigger2
