require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41421Trigger_Laofenqi = class("Q41421Trigger_Laofenqi", GadgetActorProxy)
Q41421Trigger_Laofenqi.defaultAlias = "Q41421Trigger_Laofenqi"
local Q41421ClientConfig = require("Quest/Client/Q41421ClientConfig")

local mainID = Q41421ClientConfig.MainID
local actorAlias = Q41421ClientConfig.ActorAlias
local subIDs = Q41421ClientConfig.SubIDs
local npcs = Q41421ClientConfig.Npcs
local gadgets = Q41421ClientConfig.Gadgets
local datas = Q41421ClientConfig.Datas

function Q41421Trigger_Laofenqi:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41421Trigger_Laofenqi:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41421Trigger_Laofenqi:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc165001Data.alias)
    actorMgr:DestroyEntityActor(datas.Q41421Trigger_Laofenqi_.alias, 3, false)
end

function Q41421Trigger_Laofenqi:TriggerOut()
    print("TriggerOut")
end

return Q41421Trigger_Laofenqi
