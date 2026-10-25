require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14008Trigger4 = class("Q14008Trigger4", GadgetActorProxy)
Q14008Trigger4.defaultAlias = "Q14008Trigger4"
local Q14008ClientConfig = require("Quest/Client/Q14008ClientConfig")

local this
local subIDs = Q14008ClientConfig.SubIDs
local npcs = Q14008ClientConfig.Npcs
local points = Q14008ClientConfig.Points
local datas = Q14008ClientConfig.Datas

function Q14008Trigger4:OnPostDataPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger4] OnPostDataPrepare")
    this = self
end

function Q14008Trigger4:OnPostComponentPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger4] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14008Trigger4:TriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger4] TriggerIn")
    actorMgr:GetActor("14008"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("14008")
        actor:DisableMainPageWithConfigByQuest(true, "DisableTorrentMainQuest")
        actor:EnableSpecialElementView(true, 14008, 1, M.Color(1, 1, 1, 1), 6000, {{targetType = EActorTargetType.Avatar}})
        actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect04", true, 20201, true)
        actor:CreateQuestNpcById(1400807, npcs.Npc13560Data.id, 0)
        actor:RequestInteraction(npcs.Npc13560Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q14008Trigger4:PreTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger4] PreTriggerIn")
end

function Q14008Trigger4:LightUpTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger4] LightUpTriggerIn")
    actorMgr:GetActor("14008"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q14008Trigger4:TriggerOut()
    print("[MainId: 14008][Trigger: Q14008Trigger4] TriggerOut")
end

return Q14008Trigger4
