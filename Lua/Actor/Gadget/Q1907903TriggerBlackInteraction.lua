require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1907903TriggerBlackInteraction = class("Q1907903TriggerBlackInteraction", GadgetActorProxy)
Q1907903TriggerBlackInteraction.defaultAlias = "Q1907903TriggerBlackInteraction"
local Q19079ClientConfig = require("Quest/Client/Q19079ClientConfig")

local this
local subIDs = Q19079ClientConfig.SubIDs
local npcs = Q19079ClientConfig.Npcs
local points = Q19079ClientConfig.Points
local datas = Q19079ClientConfig.Datas

function Q1907903TriggerBlackInteraction:OnPostDataPrepare()
    print("[MainId: 19079][Trigger: Q1907903TriggerBlackInteraction] OnPostDataPrepare")
    this = self
end

function Q1907903TriggerBlackInteraction:OnPostComponentPrepare()
    print("[MainId: 19079][Trigger: Q1907903TriggerBlackInteraction] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1907903TriggerBlackInteraction:TriggerIn()
    print("[MainId: 19079][Trigger: Q1907903TriggerBlackInteraction] TriggerIn")
    actorMgr:GetActor("19079"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19079")
        actor:CreateQuestNpc(quest, npcs.Coop_KaeyaData.id, 1)
        actor:RequestInteraction(npcs.Coop_KaeyaData.alias)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q1907903TriggerBlackInteraction:PreTriggerIn()
    print("[MainId: 19079][Trigger: Q1907903TriggerBlackInteraction] PreTriggerIn")
end

function Q1907903TriggerBlackInteraction:LightUpTriggerIn()
    print("[MainId: 19079][Trigger: Q1907903TriggerBlackInteraction] LightUpTriggerIn")
end

function Q1907903TriggerBlackInteraction:TriggerOut()
    print("[MainId: 19079][Trigger: Q1907903TriggerBlackInteraction] TriggerOut")
end

return Q1907903TriggerBlackInteraction
