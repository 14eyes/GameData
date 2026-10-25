require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74183Trigger_NPC = class("Q74183Trigger_NPC", GadgetActorProxy)
Q74183Trigger_NPC.defaultAlias = "Q74183Trigger_NPC"
local Q74183ClientConfig = require("Quest/Client/Q74183ClientConfig")

local this
local subIDs = Q74183ClientConfig.SubIDs
local npcs = Q74183ClientConfig.Npcs
local points = Q74183ClientConfig.Points
local datas = Q74183ClientConfig.Datas

function Q74183Trigger_NPC:OnPostDataPrepare()
    print("[MainId: 74183][Trigger: Q74183Trigger_NPC] OnPostDataPrepare")
    this = self
end

function Q74183Trigger_NPC:OnPostComponentPrepare()
    print("[MainId: 74183][Trigger: Q74183Trigger_NPC] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74183Trigger_NPC:TriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger_NPC] TriggerIn")
    local actor = actorMgr:GetActor("74183")
    actorUtils.FinishQuestID(false, 7418313)
    actor:ShowBlackScreenWithDialogText(0.5, 2, 0, nil, nil, nil, 0, false, true)
    actor:CallDelayByQuest("npc", 2.5, function(arg1)
        local actor = actorMgr:GetActor("74183")
        actor:CreateQuestNpcById(7418306, npcs.Npc21354Data.id, 0)
        actor:CreateQuestNpcById(7418306, npcs.Npc21430Data.id, 0)
        actor:RequestInteraction(npcs.Npc21354Data.alias, "", true)
        this:DestroySelf()
    end)
end

function Q74183Trigger_NPC:PreTriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger_NPC] PreTriggerIn")
end

function Q74183Trigger_NPC:LightUpTriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger_NPC] LightUpTriggerIn")
end

function Q74183Trigger_NPC:TriggerOut()
    print("[MainId: 74183][Trigger: Q74183Trigger_NPC] TriggerOut")
end

return Q74183Trigger_NPC
