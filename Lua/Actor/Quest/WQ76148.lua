require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76148 = class("Quest76148", QuestActorProxy)
Quest76148.defaultAlias = "Quest76148"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76148:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76148:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7614801"] = self.OnSubStart7614801,
        ["7614802"] = self.OnSubStart7614802,
        ["7614803"] = self.OnSubStart7614803,
        ["7614804"] = self.OnSubStart7614804,
        ["7614805"] = self.OnSubStart7614805,
        ["7614806"] = self.OnSubStart7614806,
        ["7614817"] = self.OnSubStart7614817,
        ["7614807"] = self.OnSubStart7614807,
        ["7614808"] = self.OnSubStart7614808,
        ["7614809"] = self.OnSubStart7614809,
        ["7614810"] = self.OnSubStart7614810,
        ["7614811"] = self.OnSubStart7614811,
        ["7614812"] = self.OnSubStart7614812,
        ["7614813"] = self.OnSubStart7614813,
        ["7614821"] = self.OnSubStart7614821,
        ["7614814"] = self.OnSubStart7614814,
        ["7614815"] = self.OnSubStart7614815,
        ["7614818"] = self.OnSubStart7614818,
        ["7614820"] = self.OnSubStart7614820,
        ["7614819"] = self.OnSubStart7614819,
        ["7614816"] = self.OnSubStart7614816
    }
end

function Quest76148:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7614801"] = self.OnSubFinish7614801,
        ["7614802"] = self.OnSubFinish7614802,
        ["7614803"] = self.OnSubFinish7614803,
        ["7614804"] = self.OnSubFinish7614804,
        ["7614805"] = self.OnSubFinish7614805,
        ["7614806"] = self.OnSubFinish7614806,
        ["7614817"] = self.OnSubFinish7614817,
        ["7614807"] = self.OnSubFinish7614807,
        ["7614808"] = self.OnSubFinish7614808,
        ["7614809"] = self.OnSubFinish7614809,
        ["7614810"] = self.OnSubFinish7614810,
        ["7614811"] = self.OnSubFinish7614811,
        ["7614812"] = self.OnSubFinish7614812,
        ["7614813"] = self.OnSubFinish7614813,
        ["7614821"] = self.OnSubFinish7614821,
        ["7614814"] = self.OnSubFinish7614814,
        ["7614815"] = self.OnSubFinish7614815,
        ["7614818"] = self.OnSubFinish7614818,
        ["7614820"] = self.OnSubFinish7614820,
        ["7614819"] = self.OnSubFinish7614819,
        ["7614816"] = self.OnSubFinish7614816
    }
end

function Quest76148:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7614821"] = self.OnSubFailed7614821,
        ["7614815"] = self.OnSubFailed7614815,
        ["7614818"] = self.OnSubFailed7614818,
        ["7614820"] = self.OnSubFailed7614820,
        ["7614819"] = self.OnSubFailed7614819
    }
end

function Quest76148:Start()
    print("Start")
end

function Quest76148:OnDestroy()
    print("OnDestroy")
end

function Quest76148:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76148:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76148:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76148:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7614813Trigger", nil)
    this:ActorDestroy("Q7614806Trigger_disableESC", nil)
    this:ActorDestroy("Q7614815Trigger", nil)
    this:ActorDestroy("Q7614806Trigger_disableESC", nil)
    this:ActorDestroy("Q7614805Trigger", nil)
    this:ActorDestroy("Q7614806Trigger_disableESC", nil)
    this:ActorDestroy("Q7614806Trigger_disableESC", nil)
    this:ActorDestroy("Q7614806Trigger_disableESC", nil)
    this:ActorDestroy("Q7614806Trigger_disableESC", nil)
    this:ActorDestroy("Q7614806Trigger_disableESC", nil)
    this:ActorDestroy("Q7614806Trigger_disableESC", nil)
    this:ActorDestroy("Q7614806Trigger_disableESC", nil)
    this:ActorDestroy("Q7614806Trigger_disableESC", nil)
    this:ActorDestroy("Q7614806Trigger_disableESC", nil)
    this:ActorDestroy("Q7614819Trigger_disableESC_2", 76148)
    this:ActorDestroy("Q7614820Trigger_RollBack", 76148)
    this:ActorDestroy("Q7614821Trigger", 76148)
    this:ActorDestroy("Q7614806Trigger_disableESC", 76148)
    this:ActorDestroy("Q7614818Trigger", nil)
end

function Quest76148:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest76148:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76148:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76148:OnSubStart7614801(arg1)
    print("OnSubStart7614801")
    this:DisableMainPageWithConfigByQuest(true, "DisableMVRolePlay")
end

function Quest76148:OnSubFinish7614801(arg1)
    print("OnSubFinish7614801")
end

function Quest76148:OnSubStart7614802(arg1)
    print("OnSubStart7614802")
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 103 then
                this:TransmitPlayerByData(arg1, 1, datas.TransmitData7614802, function(arg1)
                    actorUtils.FinishQuestID(false, 7614802)
                end, nil, nil)
            end
        end)
    end)
end

function Quest76148:OnSubFinish7614802(arg1)
    print("OnSubFinish7614802")
end

function Quest76148:OnSubStart7614803(arg1)
    print("OnSubStart7614803")
    this:DisableMainPageWithConfigByQuest(true, "DisableMVRolePlay")
end

function Quest76148:OnSubFinish7614803(arg1)
    print("OnSubFinish7614803")
end

function Quest76148:OnSubStart7614804(arg1)
    print("OnSubStart7614804")
    this:DisableMainPageWithConfigByQuest(true, "DisableMVRolePlayMindSpace")
end

function Quest76148:OnSubFinish7614804(arg1)
    print("OnSubFinish7614804")
end

function Quest76148:OnSubStart7614805(arg1)
    print("OnSubStart7614805")
    actorMgr:CreateActorWithPos("Q7614805Trigger", "Actor/Gadget/Q7614805Trigger", 70900002, 0, points._Q7614805TriggerPoint_.pos, points._Q7614805TriggerPoint_.rot, true, false, 103, nil, 0, 0)
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 103 then
                this:TransmitPlayerByData(arg1, 2, datas.TransmitData7614805, function(arg1)
                    actorUtils.FinishQuestID(false, 7614805)
                end, nil, nil)
            end
        end)
    end)
end

function Quest76148:OnSubFinish7614805(arg1)
    print("OnSubFinish7614805")
end

function Quest76148:OnSubStart7614806(arg1)
    print("OnSubStart7614806")
    actorMgr:CreateActorWithPos("Q7614806Trigger_disableESC", "Actor/Gadget/Q7614806Trigger_disableESC", 70900002, 0, points._Q7614806Trigger_disableESCPoint_.pos, points._Q7614806Trigger_disableESCPoint_.rot, true, false, 103, nil, 0, 76148)
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlayBeach")
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlayMindSpace")
    if actorMgr:GetActor("76148"):GetQuestVar(7614806, 0) == 0 then
        this:QuestNarratorTask(datas.NarratorWithId_7614801, nil)
        this:SetQuestVarByMainId(0, 1)
    end
end

function Quest76148:OnSubFinish7614806(arg1)
    print("OnSubFinish7614806")
end

function Quest76148:OnSubStart7614817(arg1)
    print("OnSubStart7614817")
end

function Quest76148:OnSubFinish7614817(arg1)
    print("OnSubFinish7614817")
end

function Quest76148:OnSubStart7614807(arg1)
    print("OnSubStart7614807")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7614807, 0, 30, 0, npcs.Npc22306.id)
    actorMgr:CreateActorWithPos("Q7614806Trigger_disableESC", "Actor/Gadget/Q7614806Trigger_disableESC", 70900002, 0, points._Q7614806Trigger_disableESCPoint_.pos, points._Q7614806Trigger_disableESCPoint_.rot, true, false, 103, nil, 0, 76148)
end

function Quest76148:OnSubFinish7614807(arg1)
    print("OnSubFinish7614807")
    this:NpcDestroyWithBlackscreen(103, npcs.Npc22306.alias)
end

function Quest76148:OnSubStart7614808(arg1)
    print("OnSubStart7614808")
    actorMgr:CreateActorWithPos("Q7614806Trigger_disableESC", "Actor/Gadget/Q7614806Trigger_disableESC", 70900002, 0, points._Q7614806Trigger_disableESCPoint_.pos, points._Q7614806Trigger_disableESCPoint_.rot, true, false, 103, nil, 0, 76148)
end

function Quest76148:OnSubFinish7614808(arg1)
    print("OnSubFinish7614808")
end

function Quest76148:OnSubStart7614809(arg1)
    print("OnSubStart7614809")
    actorMgr:CreateActorWithPos("Q7614806Trigger_disableESC", "Actor/Gadget/Q7614806Trigger_disableESC", 70900002, 0, points._Q7614806Trigger_disableESCPoint_.pos, points._Q7614806Trigger_disableESCPoint_.rot, true, false, 103, nil, 0, 76148)
end

function Quest76148:OnSubFinish7614809(arg1)
    print("OnSubFinish7614809")
end

function Quest76148:OnSubStart7614810(arg1)
    print("OnSubStart7614810")
    actorMgr:CreateActorWithPos("Q7614806Trigger_disableESC", "Actor/Gadget/Q7614806Trigger_disableESC", 70900002, 0, points._Q7614806Trigger_disableESCPoint_.pos, points._Q7614806Trigger_disableESCPoint_.rot, true, false, 103, nil, 0, 76148)
end

function Quest76148:OnSubFinish7614810(arg1)
    print("OnSubFinish7614810")
end

function Quest76148:OnSubStart7614811(arg1)
    print("OnSubStart7614811")
    actorMgr:CreateActorWithPos("Q7614806Trigger_disableESC", "Actor/Gadget/Q7614806Trigger_disableESC", 70900002, 0, points._Q7614806Trigger_disableESCPoint_.pos, points._Q7614806Trigger_disableESCPoint_.rot, true, false, 103, nil, 0, 76148)
end

function Quest76148:OnSubFinish7614811(arg1)
    print("OnSubFinish7614811")
end

function Quest76148:OnSubStart7614812(arg1)
    print("OnSubStart7614812")
    this:PlayCutsceneIndex(7614812, function(arg1)
        actorUtils.FinishQuestID(false, 7614812)
        actorMgr:CreateActorWithPos("Q7614806Trigger_disableESC", "Actor/Gadget/Q7614806Trigger_disableESC", 70900002, 0, points._Q7614806Trigger_disableESCPoint_.pos, points._Q7614806Trigger_disableESCPoint_.rot, true, false, 103, nil, 0, 76148)
    end, nil, nil, false)
end

function Quest76148:OnSubFinish7614812(arg1)
    print("OnSubFinish7614812")
end

function Quest76148:OnSubStart7614813(arg1)
    print("OnSubStart7614813")
    actorMgr:CreateActorWithPos("Q7614813Trigger", "Actor/Gadget/Q7614813Trigger", 70900002, 0, points._Q7614813TriggerPoint_.pos, points._Q7614813TriggerPoint_.rot, true, false, 103, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7614806Trigger_disableESC", "Actor/Gadget/Q7614806Trigger_disableESC", 70900002, 0, points._Q7614806Trigger_disableESCPoint_.pos, points._Q7614806Trigger_disableESCPoint_.rot, true, false, 103, nil, 0, 76148)
end

function Quest76148:OnSubFinish7614813(arg1)
    print("OnSubFinish7614813")
end

function Quest76148:OnSubStart7614821(arg1)
    print("OnSubStart7614821")
    actorMgr:CreateActorWithPos("Q7614821Trigger", "Actor/Gadget/Q7614821Trigger", 70900002, 0, points._Q7614821TriggerPoint_.pos, points._Q7614821TriggerPoint_.rot, true, false, 103, nil, 0, 76148)
    actorMgr:CreateActorWithPos("Q7614806Trigger_disableESC", "Actor/Gadget/Q7614806Trigger_disableESC", 70900002, 0, points._Q7614806Trigger_disableESCPoint_.pos, points._Q7614806Trigger_disableESCPoint_.rot, true, false, 103, nil, 0, 76148)
end

function Quest76148:OnSubFinish7614821(arg1)
    print("OnSubFinish7614821")
end

function Quest76148:OnSubFailed7614821(arg1)
    print("OnSubFailed7614821")
    this:RecycleAllRes()
end

function Quest76148:OnSubStart7614814(arg1)
    print("OnSubStart7614814")
    this:PlayCutsceneIndex(7614814, function(arg1)
        actorUtils.FinishQuestID(false, 7614814)
    end, nil, nil, false)

    actorMgr:CreateActorWithPos("Q7614806Trigger_disableESC", "Actor/Gadget/Q7614806Trigger_disableESC", 70900002, 0, points._Q7614806Trigger_disableESCPoint_.pos, points._Q7614806Trigger_disableESCPoint_.rot, true, false, 103, nil, 0, 76148)
end

function Quest76148:OnSubFinish7614814(arg1)
    print("OnSubFinish7614814")
end

function Quest76148:OnSubStart7614815(arg1)
    print("OnSubStart7614815")
    actorMgr:CreateActorWithPos("Q7614815Trigger", "Actor/Gadget/Q7614815Trigger", 70900002, 0, points._Q7614815TriggerPoint_.pos, points._Q7614815TriggerPoint_.rot, true, false, 103, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7614806Trigger_disableESC", "Actor/Gadget/Q7614806Trigger_disableESC", 70900002, 0, points._Q7614806Trigger_disableESCPoint_.pos, points._Q7614806Trigger_disableESCPoint_.rot, true, false, 103, nil, 0, 76148)
end

function Quest76148:OnSubFinish7614815(arg1)
    print("OnSubFinish7614815")
end

function Quest76148:OnSubFailed7614815(arg1)
    print("OnSubFailed7614815")
    this:RecycleAllRes()
end

function Quest76148:OnSubStart7614818(arg1)
    print("OnSubStart7614818")
    actorMgr:CreateActorWithPos("Q7614818Trigger", "Actor/Gadget/Q7614818Trigger", 70900002, 0, points._Q7614818TriggerPoint_.pos, points._Q7614818TriggerPoint_.rot, true, false, 103, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7614806Trigger_disableESC", "Actor/Gadget/Q7614806Trigger_disableESC", 70900002, 0, points._Q7614806Trigger_disableESCPoint_.pos, points._Q7614806Trigger_disableESCPoint_.rot, true, false, 103, nil, 0, 76148)
end

function Quest76148:OnSubFinish7614818(arg1)
    print("OnSubFinish7614818")
end

function Quest76148:OnSubFailed7614818(arg1)
    print("OnSubFailed7614818")
    this:RecycleAllRes()
end

function Quest76148:OnSubStart7614820(arg1)
    print("OnSubStart7614820")
    actorMgr:CreateActorWithPos("Q7614820Trigger_RollBack", "Actor/Gadget/Q7614820Trigger_RollBack", 70900002, 0, points._Q7614820Trigger_RollBackPoint_.pos, points._Q7614820Trigger_RollBackPoint_.rot, true, false, 3, nil, 0, 76148)
end

function Quest76148:OnSubFinish7614820(arg1)
    print("OnSubFinish7614820")
end

function Quest76148:OnSubFailed7614820(arg1)
    print("OnSubFailed7614820")
    this:RecycleAllRes()
end

function Quest76148:OnSubStart7614819(arg1)
    print("OnSubStart7614819")
    actorMgr:CreateActorWithPos("Q7614819Trigger_disableESC_2", "Actor/Gadget/Q7614819Trigger_disableESC_2", 70900002, 0, points._Q7614819Trigger_disableESC_2Point_.pos, points._Q7614819Trigger_disableESC_2Point_.rot, true, false, 103, nil, 0, 76148)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7614819, 0, 5, 1, npcs.Npc22272.id)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7614819, 0, 5, 1, npcs.Npc22306.id)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7614819, 0, 5, 1, npcs.Npc22311.id)
end

function Quest76148:OnSubFinish7614819(arg1)
    print("OnSubFinish7614819")
    this:NpcDestroyWithBlackscreen(103, npcs.Npc22272.alias)
    this:NpcDestroyWithBlackscreen(103, npcs.Npc22306.alias)
    this:NpcDestroyWithBlackscreen(103, npcs.Npc22311.alias)
    this:ActorDestroy("Q7614806Trigger_disableESC", nil)
    this:ActorDestroy("Q7614819Trigger_disableESC_2", nil)
    globalActor:ResumePaimonInProfilePage({103})
    actorUtils.ShowContext("ChapterBeginDialog", 10132)
end

function Quest76148:OnSubFailed7614819(arg1)
    print("OnSubFailed7614819")
    this:RecycleAllRes()
end

function Quest76148:OnSubStart7614816(arg1)
    print("OnSubStart7614816")
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 103 then
                this:TransmitPlayerByData(arg1, 4, datas.TransmitData7614816, nil, nil, nil)
                actorUtils.FinishQuestID(false, 7614816)
            end
        end)
    end)
end

function Quest76148:OnSubFinish7614816(arg1)
    print("OnSubFinish7614816")
end

return Quest76148
