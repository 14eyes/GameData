require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40027Trigger3 = class("Q40027Trigger3", GadgetActorProxy)
Q40027Trigger3.defaultAlias = "Q40027Trigger3"
local Q40027ClientConfig = require("Quest/Client/Q40027ClientConfig")

local subIDs = Q40027ClientConfig.SubIDs
local npcs = Q40027ClientConfig.Npcs
local gadgets = Q40027ClientConfig.Gadgets
local datas = Q40027ClientConfig.Datas

function Q40027Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40027Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(18, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40027Trigger3:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40027")
    actor:CreateQuestNpcById(4002705, npcs.Npc1018Data.id, 1)
    actor:RequestInteraction(npcs.Npc1018Data.alias)
    self:DestroySelf()
end

function Q40027Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q40027Trigger3
