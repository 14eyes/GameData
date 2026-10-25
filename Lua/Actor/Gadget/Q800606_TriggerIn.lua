require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800606_TriggerIn = class("Q800606_TriggerIn", GadgetActorProxy)
Q800606_TriggerIn.defaultAlias = "Q800606_TriggerIn"
local Q8006ClientConfig = require("Quest/Client/Q8006ClientConfig")

local subIDs = Q8006ClientConfig.SubIDs
local npcs = Q8006ClientConfig.Npcs
local datas = Q8006ClientConfig.Datas

function Q800606_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q800606_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q800606_TriggerIn:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("8006")
    actor:CreateQuestNpcById(800606, npcs.Npc12427Data.id, 0)
    actor:RequestInteraction(npcs.Npc12427Data.alias)
    self:DestroySelf()
end

function Q800606_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q800606_TriggerIn
