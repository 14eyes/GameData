require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40026Trigger4 = class("Q40026Trigger4", GadgetActorProxy)
Q40026Trigger4.defaultAlias = "Q40026Trigger4"
local Q40026ClientConfig = require("Quest/Client/Q40026ClientConfig")

local subIDs = Q40026ClientConfig.SubIDs
local npcs = Q40026ClientConfig.Npcs
local gadgets = Q40026ClientConfig.Gadgets
local datas = Q40026ClientConfig.Datas

function Q40026Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40026Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40026Trigger4:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40026")
    actor:CreateQuestNpcById(4002605, npcs.Npc1018Data.id, 1)
    actor:RequestInteraction(npcs.Npc1018Data.alias)
    actor:SpawnGadgetById(4002605, gadgets.Gadget70710530Data.id, 2)
    self:DestroySelf()
end

function Q40026Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q40026Trigger4
