require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11123Trigger_Talk = class("Q11123Trigger_Talk", GadgetActorProxy)
Q11123Trigger_Talk.defaultAlias = "Q11123Trigger_Talk"
local Q11123ClientConfig = require("Quest/Client/Q11123ClientConfig")

local mainID = Q11123ClientConfig.MainID
local actorAlias = Q11123ClientConfig.ActorAlias
local subIDs = Q11123ClientConfig.SubIDs
local npcs = Q11123ClientConfig.Npcs
local gadgets = Q11123ClientConfig.Gadgets
local datas = Q11123ClientConfig.Datas

function Q11123Trigger_Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11123Trigger_Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(17, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11123Trigger_Talk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc10232Data.alias)
    actorMgr:DestroyEntityActor(datas.Q11123Trigger_Talk_.alias, 3, false)
end

function Q11123Trigger_Talk:TriggerOut()
    print("TriggerOut")
end

return Q11123Trigger_Talk
