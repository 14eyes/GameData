require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40026Trigger5 = class("Q40026Trigger5", GadgetActorProxy)
Q40026Trigger5.defaultAlias = "Q40026Trigger5"
local Q40026ClientConfig = require("Quest/Client/Q40026ClientConfig")

local subIDs = Q40026ClientConfig.SubIDs
local npcs = Q40026ClientConfig.Npcs
local gadgets = Q40026ClientConfig.Gadgets
local datas = Q40026ClientConfig.Datas

function Q40026Trigger5:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40026Trigger5:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40026Trigger5:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40026")
    actor:CreateQuestNpcById(4002607, npcs.Npc12254Data.id, 2)
    actor:RequestInteraction(npcs.Npc12254Data.alias)
    self:DestroySelf()
end

function Q40026Trigger5:TriggerOut()
    print("TriggerOut")
end

return Q40026Trigger5
