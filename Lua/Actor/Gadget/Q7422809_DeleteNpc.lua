require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7422809_DeleteNpc = class("Q7422809_DeleteNpc", GadgetActorProxy)
Q7422809_DeleteNpc.defaultAlias = "Q7422809_DeleteNpc"
local Q74228ClientConfig = require("Quest/Client/Q74228ClientConfig")

local this
local subIDs = Q74228ClientConfig.SubIDs
local datas = Q74228ClientConfig.Datas
local npcs = Q74228ClientConfig.Npcs
local points = Q74228ClientConfig.Points

function Q7422809_DeleteNpc:OnPostDataPrepare()
    print("Q7422809_DeleteNpc - OnPostDataPrepare")
    this = self
end

function Q7422809_DeleteNpc:OnPostComponentPrepare()
    print("Q7422809_DeleteNpc - OnPostComponentPrepare")
    this:AddComponentTrigger(150, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74228)
end

function Q7422809_DeleteNpc:TriggerIn()
    print("Q7422809_DeleteNpc - TriggerIn")
end

function Q7422809_DeleteNpc:PreTriggerIn()
    print("Q7422809_DeleteNpc - PreTriggerIn")
end

function Q7422809_DeleteNpc:LightUpTriggerIn()
    print("Q7422809_DeleteNpc - LightUpTriggerIn")
end

function Q7422809_DeleteNpc:TriggerOut()
    print("Q7422809_DeleteNpc - TriggerOut")
    actorMgr:GetActor("74228"):SafeDestroyQuestNpc(npcs.Npc2625.alias, 3)
    actorMgr:GetActor("74228"):SafeDestroyQuestNpc(npcs.Npc16473.alias, 3)
    actorMgr:GetActor("74228"):SafeDestroyQuestNpc(npcs.Npc5306.alias, 3)
    actorMgr:GetActor("74228"):SafeDestroyQuestNpc(npcs.Npc5309.alias, 3)
    actorMgr:GetActor("74228"):SafeDestroyQuestNpc(npcs.Npc16163.alias, 3)
    actorMgr:GetActor("74228"):SafeDestroyQuestNpc(npcs.Npc5307.alias, 3)
    this:DestroySelf()
end

return Q7422809_DeleteNpc
