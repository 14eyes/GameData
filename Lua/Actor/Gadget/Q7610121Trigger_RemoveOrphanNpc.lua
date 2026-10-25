require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610121Trigger_RemoveOrphanNpc = class("Q7610121Trigger_RemoveOrphanNpc", GadgetActorProxy)
Q7610121Trigger_RemoveOrphanNpc.defaultAlias = "Q7610121Trigger_RemoveOrphanNpc"
local Q76101ClientConfig = require("Quest/Client/Q76101ClientConfig")

local this
local subIDs = Q76101ClientConfig.SubIDs
local datas = Q76101ClientConfig.Datas
local npcs = Q76101ClientConfig.Npcs
local points = Q76101ClientConfig.Points

function Q7610121Trigger_RemoveOrphanNpc:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    local actor = actorMgr:GetActor("76101")
    actor.ActionSafeCall(actor, function(arg1_2)
        actor:NotifyTo(arg1, arg3, arg2)
    end)
end

function Q7610121Trigger_RemoveOrphanNpc:OnPostDataPrepare()
    print("Q7610121Trigger_RemoveOrphanNpc - OnPostDataPrepare")
    this = self
end

function Q7610121Trigger_RemoveOrphanNpc:OnPostComponentPrepare()
    print("Q7610121Trigger_RemoveOrphanNpc - OnPostComponentPrepare")
    this:AddComponentTrigger(70, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76101)
end

function Q7610121Trigger_RemoveOrphanNpc:TriggerIn()
    print("Q7610121Trigger_RemoveOrphanNpc - TriggerIn")
end

function Q7610121Trigger_RemoveOrphanNpc:PreTriggerIn()
    print("Q7610121Trigger_RemoveOrphanNpc - PreTriggerIn")
end

function Q7610121Trigger_RemoveOrphanNpc:LightUpTriggerIn()
    print("Q7610121Trigger_RemoveOrphanNpc - LightUpTriggerIn")
end

function Q7610121Trigger_RemoveOrphanNpc:TriggerOut()
    print("Q7610121Trigger_RemoveOrphanNpc - TriggerOut")
    actorMgr:GetActor("76101"):DestroyQuestNpcActor(npcs.Npc7181.alias, 3)
    actorMgr:GetActor("76101"):DestroyQuestNpcActor(npcs.Npc7183.alias, 3)
    actorMgr:GetActor("76101"):DestroyQuestNpcActor(npcs.Npc7184.alias, 3)
    actorMgr:GetActor("76101"):DestroyQuestNpcActor(npcs.Npc22320.alias, 3)
    actorMgr:GetActor("76101"):DestroyQuestNpcActor(npcs.Npc7180.alias, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc7648.alias, true, 0)
    this:DestroySelf()
end

return Q7610121Trigger_RemoveOrphanNpc
