require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70009TriggerInteract = class("Q70009TriggerInteract", GadgetActorProxy)
Q70009TriggerInteract.defaultAlias = "Q70009TriggerInteract"
local Q70009ClientConfig = require("Quest/Client/Q70009ClientConfig")

local mainID = Q70009ClientConfig.MainID
local actorAlias = Q70009ClientConfig.ActorAlias
local subIDs = Q70009ClientConfig.SubIDs
local npcs = Q70009ClientConfig.Npcs
local datas = Q70009ClientConfig.Datas

function Q70009TriggerInteract:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70009TriggerInteract:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70009TriggerInteract:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:CreateQuestNpcById(7000912, npcs.Npc1599DataFood.id, 6)
    actor:RequestInteraction(npcs.Npc1599DataFood.alias)
    self:DestroySelf()
end

function Q70009TriggerInteract:TriggerOut()
    print("TriggerOut")
end

return Q70009TriggerInteract
