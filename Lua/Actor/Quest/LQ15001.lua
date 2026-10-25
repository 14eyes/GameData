require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15001 = class("Quest15001", QuestActorProxy)
Quest15001.defaultAlias = "Quest15001"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest15001:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest15001:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1500101"] = self.OnSubStart1500101,
        ["1500110"] = self.OnSubStart1500110,
        ["1500102"] = self.OnSubStart1500102,
        ["1500103"] = self.OnSubStart1500103,
        ["1500112"] = self.OnSubStart1500112,
        ["1500104"] = self.OnSubStart1500104,
        ["1500105"] = self.OnSubStart1500105,
        ["1500106"] = self.OnSubStart1500106,
        ["1500107"] = self.OnSubStart1500107,
        ["1500108"] = self.OnSubStart1500108,
        ["1500111"] = self.OnSubStart1500111,
        ["1500109"] = self.OnSubStart1500109
    }
end

function Quest15001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1500101"] = self.OnSubFinish1500101,
        ["1500110"] = self.OnSubFinish1500110,
        ["1500102"] = self.OnSubFinish1500102,
        ["1500103"] = self.OnSubFinish1500103,
        ["1500112"] = self.OnSubFinish1500112,
        ["1500104"] = self.OnSubFinish1500104,
        ["1500105"] = self.OnSubFinish1500105,
        ["1500106"] = self.OnSubFinish1500106,
        ["1500107"] = self.OnSubFinish1500107,
        ["1500108"] = self.OnSubFinish1500108,
        ["1500111"] = self.OnSubFinish1500111,
        ["1500109"] = self.OnSubFinish1500109
    }
end

function Quest15001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15001:Start()
    print("Start")
end

function Quest15001:OnDestroy()
    print("OnDestroy")
end

function Quest15001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15001:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15001:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest15001:OnSubStart1500101(arg1)
    print("OnSubStart1500101")
    this:CreateQuestNpc(arg1, npcs.Npc14145Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14151Data.id, 0, false, 0)
    this:TryStartTribalAutoTrack(arg1)
end

function Quest15001:OnSubFinish1500101(arg1)
    print("OnSubFinish1500101")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.TextmapId, 3, nil, nil)
    this:SetNavigationByMainId(15001, true)
    this:SafeDestroyQuestNpc(npcs.Npc14145Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14151Data.alias, 3)
end

function Quest15001:OnSubStart1500110(arg1)
    print("OnSubStart1500110")
    this:CreateQuestNpcWithTrigger("Q1500110Trigger", 1500110, npcs.Npc14221Data.id, 1, 5, 2)
end

function Quest15001:OnSubFinish1500110(arg1)
    print("OnSubFinish1500110")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.null, 3, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc14221Data.alias, 3)
end

function Quest15001:OnSubStart1500102(arg1)
    print("OnSubStart1500102")
    actorMgr:CreateActorWithPos("Q1500102Trigger", "Actor/Gadget/Q1500102Trigger", 70900002, 0, points.TPos_Q1500102Trigger.pos, points.TPos_Q1500102Trigger.rot, true, false, 3)
end

function Quest15001:OnSubFinish1500102(arg1)
    print("OnSubFinish1500102")
end

function Quest15001:OnSubStart1500103(arg1)
    print("OnSubStart1500103")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc14145Data.id, 1500103, 0, 10, 1)
end

function Quest15001:OnSubFinish1500103(arg1)
    print("OnSubFinish1500103")
    this:SetNavigationByMainId(15001, true)
end

function Quest15001:OnSubStart1500112(arg1)
    print("OnSubStart1500112")
    this:CreateQuestNpc(arg1, npcs.Npc14145Data.id, 0, false, 0)
end

function Quest15001:OnSubFinish1500112(arg1)
    print("OnSubFinish1500112")
    this:SetNavigationByMainId(15001, true)
end

function Quest15001:OnSubStart1500104(arg1)
    print("OnSubStart1500104")
end

function Quest15001:OnSubFinish1500104(arg1)
    print("OnSubFinish1500104")
    this:SetNavigationByMainId(15001, true)
end

function Quest15001:OnSubStart1500105(arg1)
    print("OnSubStart1500105")
end

function Quest15001:OnSubFinish1500105(arg1)
    print("OnSubFinish1500105")
    this:SetNavigationByMainId(15001, true)
end

function Quest15001:OnSubStart1500106(arg1)
    print("OnSubStart1500106")
end

function Quest15001:OnSubFinish1500106(arg1)
    print("OnSubFinish1500106")
    this:SetNavigationByMainId(15001, true)
end

function Quest15001:OnSubStart1500107(arg1)
    print("OnSubStart1500107")
end

function Quest15001:OnSubFinish1500107(arg1)
    print("OnSubFinish1500107")
    this:SetNavigationByMainId(15001, true)
end

function Quest15001:OnSubStart1500108(arg1)
    print("OnSubStart1500108")
end

function Quest15001:OnSubFinish1500108(arg1)
    print("OnSubFinish1500108")
    this:SetNavigationByMainId(15001, true)
end

function Quest15001:OnSubStart1500111(arg1)
    print("OnSubStart1500111")
end

function Quest15001:OnSubFinish1500111(arg1)
    print("OnSubFinish1500111")
    this:QuestNarratorTask(datas.finish)
end

function Quest15001:OnSubStart1500109(arg1)
    print("OnSubStart1500109")
end

function Quest15001:OnSubFinish1500109(arg1)
    print("OnSubFinish1500109")
    this:SafeDestroyQuestNpc(npcs.Npc14145Data.alias, 3)
end

return Quest15001
