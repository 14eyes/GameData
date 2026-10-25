require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40027Trigger2 = class("Q40027Trigger2", GadgetActorProxy)
Q40027Trigger2.defaultAlias = "Q40027Trigger2"
local Q40027ClientConfig = require("Quest/Client/Q40027ClientConfig")

local subIDs = Q40027ClientConfig.SubIDs
local npcs = Q40027ClientConfig.Npcs
local gadgets = Q40027ClientConfig.Gadgets
local datas = Q40027ClientConfig.Datas

function Q40027Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40027Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40027Trigger2:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40027")
    actor:CreateQuestNpcById(4002704, npcs.Npc1018Data.id, 1)
    actor:RequestInteraction(npcs.Npc1018Data.alias)
    self:DestroySelf()
end

function Q40027Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q40027Trigger2
