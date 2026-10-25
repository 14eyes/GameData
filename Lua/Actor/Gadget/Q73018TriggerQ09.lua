require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73018TriggerQ09 = class("Q73018TriggerQ09", GadgetActorProxy)
Q73018TriggerQ09.defaultAlias = "Q73018TriggerQ09"
local Q73018ClientConfig = require("Quest/Client/Q73018ClientConfig")

local subIDs = Q73018ClientConfig.SubIDs
local npcs = Q73018ClientConfig.Npcs
local datas = Q73018ClientConfig.Datas

function Q73018TriggerQ09:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73018TriggerQ09:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73018TriggerQ09:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73018")
    actor:CreateQuestNpcById(7301809, npcs.Npc20605Data.id, 1)
    actor:RequestInteraction(npcs.Npc20605Data.alias)
    self:DestroySelf()
end

function Q73018TriggerQ09:TriggerOut()
    print("TriggerOut")
end

return Q73018TriggerQ09
