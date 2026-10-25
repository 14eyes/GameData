require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15038 = class("Quest15038", QuestActorProxy)
Quest15038.defaultAlias = "Quest15038"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15038:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15038:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1503801"] = self.OnSubStart1503801,
        ["1503802"] = self.OnSubStart1503802,
        ["1503804"] = self.OnSubStart1503804,
        ["1503803"] = self.OnSubStart1503803,
        ["1503806"] = self.OnSubStart1503806,
        ["1503807"] = self.OnSubStart1503807,
        ["1503808"] = self.OnSubStart1503808,
        ["1503805"] = self.OnSubStart1503805
    }
end

function Quest15038:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1503801"] = self.OnSubFinish1503801,
        ["1503802"] = self.OnSubFinish1503802,
        ["1503804"] = self.OnSubFinish1503804,
        ["1503803"] = self.OnSubFinish1503803,
        ["1503806"] = self.OnSubFinish1503806,
        ["1503807"] = self.OnSubFinish1503807,
        ["1503808"] = self.OnSubFinish1503808,
        ["1503805"] = self.OnSubFinish1503805
    }
end

function Quest15038:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1503802"] = self.OnSubFailed1503802}
end

function Quest15038:Start()
    print("Start")
end

function Quest15038:OnDestroy()
    print("OnDestroy")
end

function Quest15038:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15038:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15038:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15038:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1503808Trigger")
end

function Quest15038:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 1503805)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 1503807)
    end
end

function Quest15038:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15038:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest15038:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15038:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest15038:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest15038:OnSubStart1503801(arg1)
    print("OnSubStart1503801")
end

function Quest15038:OnSubFinish1503801(arg1)
    print("OnSubFinish1503801")
end

function Quest15038:OnSubStart1503802(arg1)
    print("OnSubStart1503802")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1311.id, 0, 1503802, 49, true)
end

function Quest15038:OnSubFinish1503802(arg1)
    print("OnSubFinish1503802")
    this:SafeDestroyQuestNpc(npcs.Npc1311.alias, 20272)
end

function Quest15038:OnSubFailed1503802(arg1)
    print("OnSubFailed1503802")
    this:SafeDestroyQuestNpc(npcs.Npc1311.alias, 20272)
    this:DestroyNpcTrigger("Q1503802N1311Trigger")
end

function Quest15038:OnSubStart1503804(arg1)
    print("OnSubStart1503804")
end

function Quest15038:OnSubFinish1503804(arg1)
    print("OnSubFinish1503804")
end

function Quest15038:OnSubStart1503803(arg1)
    print("OnSubStart1503803")
end

function Quest15038:OnSubFinish1503803(arg1)
    print("OnSubFinish1503803")
end

function Quest15038:OnSubStart1503806(arg1)
    print("OnSubStart1503806")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503806, 0, 49, 1, npcs.Npc1311.id)
end

function Quest15038:OnSubFinish1503806(arg1)
    print("OnSubFinish1503806")
    this:SafeDestroyQuestNpc(npcs.Npc1311.alias, 20272)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1503801, nil)
        this:SetNavigationByMainId(15038, true)
    end)
end

function Quest15038:OnSubStart1503807(arg1)
    print("OnSubStart1503807")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1311.id, arg1)
    this:ActionSafeCall(function(arg1_2)
        this:GetQuestNpcActor(npcs.Npc1311.alias, 15038):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1311.alias, 15038):DisableInteeHeadCtrl(true)
        this:CreateQuestNpc(arg1, npcs.Npc15468.id, 0, false, 0)
    end)
end

function Quest15038:OnSubFinish1503807(arg1)
    print("OnSubFinish1503807")
    this:NpcDestroyImmediately(20272, npcs.Npc1311.alias)
    this:NpcDestroyImmediately(20272, npcs.Npc15468.alias)
end

function Quest15038:OnSubStart1503808(arg1)
    print("OnSubStart1503808")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503808, 0, 30, 1, npcs.Npc1311.id)
    actorMgr:CreateActorWithPos("Q1503808Trigger", "Actor/Gadget/Q1503808Trigger", 70900002, 0, points._Q1503808TriggerPoint_.pos, points._Q1503808TriggerPoint_.rot, true, false, 20272)
end

function Quest15038:OnSubFinish1503808(arg1)
    print("OnSubFinish1503808")
    this:SafeDestroyQuestNpc(npcs.Npc1311.alias, 3)
    this:ActorDestroy("Q1503808Trigger")
end

function Quest15038:OnSubStart1503805(arg1)
    print("OnSubStart1503805")
end

function Quest15038:OnSubFinish1503805(arg1)
    print("OnSubFinish1503805")
end

return Quest15038
