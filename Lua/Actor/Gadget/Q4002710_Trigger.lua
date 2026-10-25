require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4002710_Trigger = class("Q4002710_Trigger", GadgetActorProxy)
Q4002710_Trigger.defaultAlias = "Q4002710_Trigger"
local Q40027ClientConfig = require("Quest/Client/Q40027ClientConfig")

local subIDs = Q40027ClientConfig.SubIDs
local npcs = Q40027ClientConfig.Npcs
local gadgets = Q40027ClientConfig.Gadgets
local datas = Q40027ClientConfig.Datas

function Q4002710_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4002710_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4002710_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40027")
    actor:CreateQuestNpcById(4002710, npcs.Npc1018Data.id, 1)
    actor:RequestInteraction(npcs.Npc1018Data.alias)
    self:DestroySelf()
end

function Q4002710_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4002710_Trigger
