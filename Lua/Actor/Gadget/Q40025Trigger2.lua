require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40025Trigger2 = class("Q40025Trigger2", GadgetActorProxy)
Q40025Trigger2.defaultAlias = "Q40025Trigger2"
local Q40025ClientConfig = require("Quest/Client/Q40025ClientConfig")

local subIDs = Q40025ClientConfig.SubIDs
local npcs = Q40025ClientConfig.Npcs
local gadgets = Q40025ClientConfig.Gadgets
local datas = Q40025ClientConfig.Datas

function Q40025Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40025Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40025Trigger2:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40025")
    actor:CreateQuestNpcById(4002508, npcs.Npc1018Data.id, 1)
    actor:RequestInteraction(npcs.Npc1018Data.alias)
    self:DestroySelf()
end

function Q40025Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q40025Trigger2
