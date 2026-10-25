require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411330Trigger = class("Q7411330Trigger", GadgetActorProxy)
Q7411330Trigger.defaultAlias = "Q7411330Trigger"
local Q74113ClientConfig = require("Quest/Client/Q74113ClientConfig")

local this
local subIDs = Q74113ClientConfig.SubIDs
local npcs = Q74113ClientConfig.Npcs
local points = Q74113ClientConfig.Points
local datas = Q74113ClientConfig.Datas

function Quest74113.NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4, arg5)
    actorMgr:GetActor("74113"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("74113")
        actor:CreateQuestNpc(arg2, arg3, arg4)
        actor:RequestInteraction(arg5)
    end)
end

function Q7411330Trigger:OnPostDataPrepare()
    print("[MainId: 74113][Trigger: Q7411330Trigger] OnPostDataPrepare")
    this = self
end

function Q7411330Trigger:OnPostComponentPrepare()
    print("[MainId: 74113][Trigger: Q7411330Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7411330Trigger:TriggerIn()
    print("[MainId: 74113][Trigger: Q7411330Trigger] TriggerIn")
    local actor = actorMgr:GetActor("74113")
    actor:NpcCreateWithBlackscreenInteraction(quest, npcs.Npc21158Data.id, 0, npcs.Npc21158Data.alias)
    actor:CreateQuestNpc(quest, npcs.Npc21160Data.id, 0)
end

function Q7411330Trigger:PreTriggerIn()
    print("[MainId: 74113][Trigger: Q7411330Trigger] PreTriggerIn")
end

function Q7411330Trigger:LightUpTriggerIn()
    print("[MainId: 74113][Trigger: Q7411330Trigger] LightUpTriggerIn")
end

function Q7411330Trigger:TriggerOut()
    print("[MainId: 74113][Trigger: Q7411330Trigger] TriggerOut")
end

return Q7411330Trigger
