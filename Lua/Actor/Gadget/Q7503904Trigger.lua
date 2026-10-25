require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503904Trigger = class("Q7503904Trigger", GadgetActorProxy)
Q7503904Trigger.defaultAlias = "Q7503904Trigger"
local Q75039ClientConfig = require("Quest/Client/Q75039ClientConfig")

local this
local subIDs = Q75039ClientConfig.SubIDs
local npcs = Q75039ClientConfig.Npcs
local datas = Q75039ClientConfig.Datas

function Quest75039.NpcCreateWithBlackscreen(arg1, arg2, arg3, arg4)
    actorMgr:GetActor("75039"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("75039"):CreateQuestNpc(arg2, arg3, arg4)
    end)
end

function Q7503904Trigger:OnPostDataPrepare()
    print("[MainId: 75039][Trigger: Q7503904Trigger] OnPostDataPrepare")
    this = self
end

function Q7503904Trigger:OnPostComponentPrepare()
    print("[MainId: 75039][Trigger: Q7503904Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(14, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75039)
end

function Q7503904Trigger:TriggerIn()
    print("[MainId: 75039][Trigger: Q7503904Trigger] TriggerIn")
    local actor = actorMgr:GetActor("75039")
    actor:NpcCreateWithBlackscreen(quest, npcs.Npc21586Data.id, 0)
    actor:RequestInteraction(npcs.Npc21586Data.alias, "", true)
    actor:RequestInteraction(npcs.Npc21460Data.alias, "", true)
    this:DestroySelf()
end

function Q7503904Trigger:PreTriggerIn()
    print("[MainId: 75039][Trigger: Q7503904Trigger] PreTriggerIn")
end

function Q7503904Trigger:LightUpTriggerIn()
    print("[MainId: 75039][Trigger: Q7503904Trigger] LightUpTriggerIn")
end

function Q7503904Trigger:TriggerOut()
    print("[MainId: 75039][Trigger: Q7503904Trigger] TriggerOut")
end

return Q7503904Trigger
