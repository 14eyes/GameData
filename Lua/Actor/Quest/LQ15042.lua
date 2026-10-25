require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15042 = class("Quest15042", QuestActorProxy)
Quest15042.defaultAlias = "Quest15042"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15042:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15042:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1504201"] = self.OnSubStart1504201,
        ["1504204"] = self.OnSubStart1504204,
        ["1504213"] = self.OnSubStart1504213,
        ["1504214"] = self.OnSubStart1504214,
        ["1504215"] = self.OnSubStart1504215,
        ["1504202"] = self.OnSubStart1504202,
        ["1504216"] = self.OnSubStart1504216,
        ["1504203"] = self.OnSubStart1504203,
        ["1504217"] = self.OnSubStart1504217
    }
end

function Quest15042:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1504201"] = self.OnSubFinish1504201,
        ["1504204"] = self.OnSubFinish1504204,
        ["1504213"] = self.OnSubFinish1504213,
        ["1504214"] = self.OnSubFinish1504214,
        ["1504215"] = self.OnSubFinish1504215,
        ["1504202"] = self.OnSubFinish1504202,
        ["1504216"] = self.OnSubFinish1504216,
        ["1504203"] = self.OnSubFinish1504203,
        ["1504217"] = self.OnSubFinish1504217
    }
end

function Quest15042:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1504201"] = self.OnSubFailed1504201}
end

function Quest15042:Start()
    print("Start")
end

function Quest15042:OnDestroy()
    print("OnDestroy")
end

function Quest15042:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15042:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15042:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15042:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1504216Trigger")
    this:ActorDestroy("Q1504203Trigger")
    this:ActorDestroy("Q1504202Trigger")
    actorUtils.RemoveQuestAvatarNpcMark(21846, 15042)
end

function Quest15042:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15042:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15042:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest15042:OnSubStart1504201(arg1)
    print("OnSubStart1504201")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504201, 0, 20, 1, npcs.Npc21845.id)
end

function Quest15042:OnSubFinish1504201(arg1)
    print("OnSubFinish1504201")
    this:SafeDestroyQuestNpc(npcs.Npc21845.alias, 3)
    this:SetNavigationByMainId(15042, true)
end

function Quest15042:OnSubFailed1504201(arg1)
    print("OnSubFailed1504201")
    this:ClearNpcTriggerByQuestId(1504201)
end

function Quest15042:OnSubStart1504204(arg1)
    print("OnSubStart1504204")
end

function Quest15042:OnSubFinish1504204(arg1)
    print("OnSubFinish1504204")
end

function Quest15042:OnSubStart1504213(arg1)
    print("OnSubStart1504213")
    this:CreateQuestNpc(arg1, npcs.Npc21846.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21846.alias, 15042):DoFreeStyle(1220, true, nil, true, true, false, true)
    actorUtils.AddQuestAvatarNpcMark(21846, 15042, false, "UI_AvatarIcon_Side_Chasca")
end

function Quest15042:OnSubFinish1504213(arg1)
    print("OnSubFinish1504213")
    this:SafeDestroyQuestNpc(npcs.Npc21846.alias, 3)
    actorUtils.RemoveQuestAvatarNpcMark(npcs.Npc21846.id, 15042)
end

function Quest15042:OnSubStart1504214(arg1)
    print("OnSubStart1504214")
    actorUtils.FinishQuestID(false, 1504214)
end

function Quest15042:OnSubFinish1504214(arg1)
    print("OnSubFinish1504214")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1504201, nil)
    end)

    this:SetNavigationByMainId(15042, true)
end

function Quest15042:OnSubStart1504215(arg1)
    print("OnSubStart1504215")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504215, 0, 15, 1, npcs.Npc21845.id)
end

function Quest15042:OnSubFinish1504215(arg1)
    print("OnSubFinish1504215")
    this:SafeDestroyQuestNpc(npcs.Npc21845.alias, 3)
    this:PlayerEnterDungeonWithData(1601, 1248, 1504215, 1, datas.PlayerEnterDungeonData, nil, nil)
end

function Quest15042:OnSubStart1504202(arg1)
    print("OnSubStart1504202")
    actorMgr:CreateActorWithPos("Q1504202Trigger", "Actor/Gadget/Q1504202Trigger", 70900002, 0, points._Q1504202TriggerPoint_.pos, points._Q1504202TriggerPoint_.rot, true, false, 3)
end

function Quest15042:OnSubFinish1504202(arg1)
    print("OnSubFinish1504202")
    this:ActorDestroy("Q1504202Trigger")
end

function Quest15042:OnSubStart1504216(arg1)
    print("OnSubStart1504216")
    actorMgr:CreateActorWithPos("Q1504216Trigger", "Actor/Gadget/Q1504216Trigger", 70900002, 0, points._Q1504216TriggerPoint_.pos, points._Q1504216TriggerPoint_.rot, true, false, 20267)
end

function Quest15042:OnSubFinish1504216(arg1)
    print("OnSubFinish1504216")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataBlack, nil, nil, nil)
end

function Quest15042:OnSubStart1504203(arg1)
    print("OnSubStart1504203")
    actorMgr:CreateActorWithPos("Q1504203Trigger", "Actor/Gadget/Q1504203Trigger", 70900002, 0, points._Q1504203TriggerPoint_.pos, points._Q1504203TriggerPoint_.rot, true, false, 3)
end

function Quest15042:OnSubFinish1504203(arg1)
    print("OnSubFinish1504203")
end

function Quest15042:OnSubStart1504217(arg1)
    print("OnSubStart1504217")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc6551.id, 0, 1504217, 30, true)
end

function Quest15042:OnSubFinish1504217(arg1)
    print("OnSubFinish1504217")
    this:SafeDestroyQuestNpc(npcs.Npc6551.alias, 3)
    this:SetNavigationByMainId(15043, true)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("HolidayMemoryBookPage", 3)
    end)
end

return Quest15042
