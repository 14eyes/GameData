require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19014 = class("Quest19014", QuestActorProxy)
Quest19014.defaultAlias = "Quest19014"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19014:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1901401"] = self.OnSubStart1901401,
        ["1901408"] = self.OnSubStart1901408,
        ["1901409"] = self.OnSubStart1901409,
        ["1901402"] = self.OnSubStart1901402,
        ["1901403"] = self.OnSubStart1901403,
        ["1901404"] = self.OnSubStart1901404,
        ["1901405"] = self.OnSubStart1901405,
        ["1901406"] = self.OnSubStart1901406,
        ["1901410"] = self.OnSubStart1901410,
        ["1901407"] = self.OnSubStart1901407
    }
end

function Quest19014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1901401"] = self.OnSubFinish1901401,
        ["1901408"] = self.OnSubFinish1901408,
        ["1901409"] = self.OnSubFinish1901409,
        ["1901402"] = self.OnSubFinish1901402,
        ["1901403"] = self.OnSubFinish1901403,
        ["1901404"] = self.OnSubFinish1901404,
        ["1901405"] = self.OnSubFinish1901405,
        ["1901406"] = self.OnSubFinish1901406,
        ["1901410"] = self.OnSubFinish1901410,
        ["1901407"] = self.OnSubFinish1901407
    }
end

function Quest19014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1901401"] = self.OnSubFailed1901401,
        ["1901408"] = self.OnSubFailed1901408,
        ["1901409"] = self.OnSubFailed1901409,
        ["1901402"] = self.OnSubFailed1901402,
        ["1901403"] = self.OnSubFailed1901403,
        ["1901404"] = self.OnSubFailed1901404,
        ["1901405"] = self.OnSubFailed1901405,
        ["1901406"] = self.OnSubFailed1901406,
        ["1901410"] = self.OnSubFailed1901410,
        ["1901407"] = self.OnSubFailed1901407
    }
end

function Quest19014:Start()
    print("Start")
end

function Quest19014:OnDestroy()
    print("OnDestroy")
end

function Quest19014:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc12170Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3106Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12242Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12243Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12244Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12245Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12246Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12247Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12268Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12269Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12270Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12271Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12272Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12273Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12274Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3109Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3107Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3105Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3108Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc12248Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12249Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3110Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q19014Trigger_linshi", 3, false)
    actorMgr:DestroyEntityActor("Q19014Trigger_Sleep1", 3, false)
    actorMgr:DestroyEntityActor("Q19014Trigger_Sneak_Leave", 3, false)
end

function Quest19014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19014:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc12170Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3106Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12242Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12243Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12244Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12245Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12246Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12247Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12268Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12269Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12270Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12271Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12272Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12273Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12274Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3109Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3107Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3105Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3108Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc12248Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12249Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3110Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q19014Trigger_linshi", 3, false)
    actorMgr:DestroyEntityActor("Q19014Trigger_Sleep1", 3, false)
    actorMgr:DestroyEntityActor("Q19014Trigger_Sneak_Leave", 3, false)
    self:ExitTailMode()
end

function Quest19014:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest19014:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19014:OnSubStart1901401(arg1)
    print("OnSubStart1901401")
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q19014Trigger_Sleep1", "Actor/Gadget/Q19014Trigger_Sleep1", 70900002, 0, sceneData:GetDummyPoint(3, "Q19014_Sleep1_Pos").pos, sceneData:GetDummyPoint(3, "Q19014_Sleep1_Pos").rot, true, false, 3)
end

function Quest19014:OnSubFinish1901401(arg1)
    print("OnSubFinish1901401")
end

function Quest19014:OnSubFailed1901401(arg1)
    print("OnSubFailed1901401")
end

function Quest19014:OnSubStart1901408(arg1)
    print("OnSubStart1901408")
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId_1901401)
    end)
end

function Quest19014:OnSubFinish1901408(arg1)
    print("OnSubFinish1901408")
end

function Quest19014:OnSubFailed1901408(arg1)
    print("OnSubFailed1901408")
end

function Quest19014:OnSubStart1901409(arg1)
    print("OnSubStart1901409")
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901409)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Coop_SayuData.id, 2, npcs.Coop_SayuData.alias)
end

function Quest19014:OnSubFinish1901409(arg1)
    print("OnSubFinish1901409")
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
end

function Quest19014:OnSubFailed1901409(arg1)
    print("OnSubFailed1901409")
end

function Quest19014:OnSubStart1901402(arg1)
    print("OnSubStart1901402")
    self:CreateQuestNpc(arg1, npcs.Npc12170Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12268Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc12268Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12269Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc12269Data.alias):DoFreeStyle(2, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12270Data.id, 6)
    self:GetQuestNpcActor(npcs.Npc12270Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901402)
end

function Quest19014:OnSubFinish1901402(arg1)
    print("OnSubFinish1901402")
    self:SafeDestroyQuestNpc(npcs.Npc12170Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
end

function Quest19014:OnSubFailed1901402(arg1)
    print("OnSubFailed1901402")
end

function Quest19014:OnSubStart1901403(arg1)
    print("OnSubStart1901403")
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc12268Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12269Data.alias):DoFreeStyle(2, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12270Data.alias):DoFreeStyle(1, true, nil, true, true, false)
end

function Quest19014:OnSubFinish1901403(arg1)
    print("OnSubFinish1901403")
end

function Quest19014:OnSubFailed1901403(arg1)
    print("OnSubFailed1901403")
end

function Quest19014:OnSubStart1901404(arg1)
    print("OnSubStart1901404")
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc12268Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12269Data.alias):DoFreeStyle(2, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12270Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901404)
    self:CallDelay(1, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_SayuData.id, 2)
        arg1_2:RequestInteraction(npcs.Coop_SayuData.alias)
    end)
end

function Quest19014:OnSubFinish1901404(arg1)
    print("OnSubFinish1901404")
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
end

function Quest19014:OnSubFailed1901404(arg1)
    print("OnSubFailed1901404")
end

function Quest19014:OnSubStart1901405(arg1)
    print("OnSubStart1901405")
    self:CreateQuestNpc(arg1, npcs.Npc12170Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc12268Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12269Data.alias):DoFreeStyle(2, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12270Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901405)
    self:ExitTailMode()
    self:DailyNpcSafeHideSelf(npcs.Npc3105Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3108Data.alias, 1, true)
    self:LightNotifyTo(npcs.Npc3110Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3109Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3107Data.alias, 0, true)
end

function Quest19014:OnSubFinish1901405(arg1)
    print("OnSubFinish1901405")
    self:SafeDestroyQuestNpc(npcs.Npc12170Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12268Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12269Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12270Data.alias, 3)
end

function Quest19014:OnSubFailed1901405(arg1)
    print("OnSubFailed1901405")
end

function Quest19014:OnSubStart1901406(arg1)
    print("OnSubStart1901406")
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:SetQuestVar(1901406, 0, 0)
    actorMgr:CreateActorWithPos("Q19014Trigger_linshi", "Actor/Gadget/Q19014Trigger_linshi", 70900002, 0, sceneData:GetDummyPoint(3, "Q19014_Final2_Pos").pos, sceneData:GetDummyPoint(3, "Q19014_Final2_Pos").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q19014Trigger_Sneak_Leave", "Actor/Gadget/Q19014Trigger_Sneak_Leave", 70900002, 0, sceneData:GetDummyPoint(3, "Q19014_Sneak_Pos").pos, sceneData:GetDummyPoint(3, "Q19014_Sneak_Pos").rot, true, false, 3)
    self:EnterTailMode(11)
    self:CreateQuestNpc(arg1, npcs.Npc12242Data.id, 3):CallOnStart(function(arg1)
        arg1.PatrolPosNum = 4
        arg1.PatrolPos = datas.RoundWalkData_Solider1_Pos
        arg1.PatrolDir = datas.RoundWalkData_Solider1_Rot
        arg1.PatrolNext = 0
        arg1:Start()
        arg1:ThreatTask(arg1.Discover, arg1.Aware, arg1.ReturnToPatrol, arg1.OnLure)
    end)

    self:CreateQuestNpc(arg1, npcs.Npc12243Data.id, 4):CallOnStart(function(arg1)
        arg1.PatrolPosNum = 4
        arg1.PatrolPos = datas.RoundWalkData_Solider2_Pos
        arg1.PatrolDir = datas.RoundWalkData_Solider2_Rot
        arg1.PatrolNext = 0
        arg1:Start()
        arg1:ThreatTask(arg1.Discover, arg1.Aware, arg1.ReturnToPatrol, arg1.OnLure)
    end)

    self:CreateQuestNpc(arg1, npcs.Npc12244Data.id, 5):CallOnStart(function(arg1)
        arg1:Start()
        arg1:ThreatTask(arg1.Discover, arg1.Aware, arg1.ReturnToPatrol, arg1.OnLure)
    end)

    self:CreateQuestNpc(arg1, npcs.Npc12245Data.id, 6):CallOnStart(function(arg1)
        arg1:Start()
        arg1:ThreatTask(arg1.Discover, arg1.Aware, arg1.ReturnToPatrol, arg1.OnLure)
    end)

    self:CreateQuestNpc(arg1, npcs.Npc12246Data.id, 7):CallOnStart(function(arg1)
        arg1:Start()
        arg1:ThreatTask(arg1.Discover, arg1.Aware, arg1.ReturnToPatrol, arg1.OnLure)
    end)

    self:CreateQuestNpc(arg1, npcs.Npc12247Data.id, 8):CallOnStart(function(arg1)
        arg1:Start()
        arg1:ThreatTask(arg1.Discover, arg1.Aware, arg1.ReturnToPatrol, arg1.OnLure)
    end)

    local questNpc = self:CreateQuestNpc(arg1, npcs.Npc12271Data.id, 9)
    local v = self:CreateQuestNpc(arg1, npcs.Npc12272Data.id, 10)
    self:CreateQuestNpc(arg1, npcs.Npc12248Data.id, 17):CallOnStart(function(arg1)
        arg1:Start()
        arg1:ThreatTask(arg1.Discover, arg1.Aware, arg1.ReturnToPatrol, arg1.OnLure)
    end)

    self:CreateQuestNpc(arg1, npcs.Npc12249Data.id, 18):CallOnStart(function(arg1)
        arg1:Start()
        arg1:ThreatTask(arg1.Discover, arg1.Aware, arg1.ReturnToPatrol, arg1.OnLure)
    end)

    self:NotifyTo(npcs.Npc3106Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3109Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3107Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3105Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3108Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3110Data.alias, 1, true)
end

function Quest19014:OnSubFinish1901406(arg1)
    print("OnSubFinish1901406")
    self:SafeDestroyQuestNpc(npcs.Npc12242Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12243Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12244Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12245Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12246Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12247Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12271Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12272Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12248Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12249Data.alias, 3)
    self:ExitTailMode()
    self:LightNotifyTo(npcs.Npc3106Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3105Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3108Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3110Data.alias, 0, true)
end

function Quest19014:OnSubFailed1901406(arg1)
    print("OnSubFailed1901406")
    self:SafeDestroyQuestNpc(npcs.Npc12242Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12243Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12244Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12245Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12246Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12247Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12271Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12272Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12248Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12249Data.alias, 3)
    local questVar = self:GetQuestVar(1901406, 0)
    print("SenakVar\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148", questVar)
    if questVar == 1 then
        print("\229\135\186\229\156\136\230\143\144\231\164\186\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148")
        self:TransmitPlayerWithTextByQuestId(1901406, 1, datas.Text_Fail2, 5)
    else
        print("\232\162\171\229\143\145\231\142\176\230\143\144\231\164\186\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148")
        self:TransmitPlayerWithTextByQuestId(1901406, 1, datas.Text_Fail1, 5)
    end

    self:ExitTailMode()
    globalActor:EnablePlayerInput(true)
end

function Quest19014:OnSubStart1901410(arg1)
    print("OnSubStart1901410")
end

function Quest19014:OnSubFinish1901410(arg1)
    print("OnSubFinish1901410")
end

function Quest19014:OnSubFailed1901410(arg1)
    print("OnSubFailed1901410")
    self:SafeDestroyQuestNpc(npcs.Npc12242Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12243Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12244Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12245Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12246Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12247Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12271Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12272Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12248Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12249Data.alias, 3)
    self:ExitTailMode()
    globalActor:EnablePlayerInput(true)
end

function Quest19014:OnSubStart1901407(arg1)
    print("OnSubStart1901407")
    self:CreateQuestNpc(arg1, npcs.Npc12170Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901407)
    self:NotifyTo(npcs.Npc3109Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc12170Data.alias)
end

function Quest19014:OnSubFinish1901407(arg1)
    print("OnSubFinish1901407")
    self:SafeDestroyQuestNpc(npcs.Npc12170Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3106Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:LightNotifyTo(npcs.Npc3109Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3107Data.alias, 0, true)
end

function Quest19014:OnSubFailed1901407(arg1)
    print("OnSubFailed1901407")
end

return Quest19014
