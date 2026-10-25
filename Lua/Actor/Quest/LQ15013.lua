require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15013 = class("Quest15013", QuestActorProxy)
Quest15013.defaultAlias = "Quest15013"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15013:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1501308"] = self.OnSubStart1501308,
        ["1501301"] = self.OnSubStart1501301,
        ["1501311"] = self.OnSubStart1501311,
        ["1501302"] = self.OnSubStart1501302,
        ["1501303"] = self.OnSubStart1501303,
        ["1501304"] = self.OnSubStart1501304,
        ["1501305"] = self.OnSubStart1501305,
        ["1501306"] = self.OnSubStart1501306,
        ["1501307"] = self.OnSubStart1501307,
        ["1501309"] = self.OnSubStart1501309
    }
end

function Quest15013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1501308"] = self.OnSubFinish1501308,
        ["1501301"] = self.OnSubFinish1501301,
        ["1501311"] = self.OnSubFinish1501311,
        ["1501302"] = self.OnSubFinish1501302,
        ["1501303"] = self.OnSubFinish1501303,
        ["1501304"] = self.OnSubFinish1501304,
        ["1501305"] = self.OnSubFinish1501305,
        ["1501306"] = self.OnSubFinish1501306,
        ["1501307"] = self.OnSubFinish1501307,
        ["1501309"] = self.OnSubFinish1501309
    }
end

function Quest15013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1501305"] = self.OnSubFailed1501305}
end

function Quest15013:Start()
    print("Start")
end

function Quest15013:OnDestroy()
    print("OnDestroy")
end

function Quest15013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15013:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15013:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest15013:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15013:OnSubStart1501308(arg1)
    print("OnSubStart1501308")
    actorMgr:CreateActorWithPos("tigger1501308", "Actor/Gadget/tigger1501308", 70900002, 0, points._tigger1501308Point_.pos, points._tigger1501308Point_.rot, true, false, 3)
    this:TryStartTribalAutoTrack(arg1)
end

function Quest15013:OnSubFinish1501308(arg1)
    print("OnSubFinish1501308")
    this:SetNavigationByMainId(15013, true)
    this:QuestNarratorTask(datas.NarratorWithId_1501308, nil)
end

function Quest15013:OnSubStart1501301(arg1)
    print("OnSubStart1501301")
    this:NpcCreateWithNpcTrigger(npcs.Npc1095.id, 0, 10, 1501301)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 15013):SitOnChair(8061, false)
end

function Quest15013:OnSubFinish1501301(arg1)
    print("OnSubFinish1501301")
    this:ClearNarratorTask()
end

function Quest15013:OnSubStart1501311(arg1)
    print("OnSubStart1501311")
    this:NpcCreateWithNpcTrigger(npcs.Npc1095.id, 0, 20, 1501311)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 15013):DoFreeStyle(8013, true, nil, true, true, false, false)
end

function Quest15013:OnSubFinish1501311(arg1)
    print("OnSubFinish1501311")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
end

function Quest15013:OnSubStart1501302(arg1)
    print("OnSubStart1501302")
    this:NpcCreateWithNpcTrigger(npcs.Npc14310.id, 0, 15, 1501302)
    this:GetQuestNpcActor(npcs.Npc14310.alias, 15013):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14706.id, 0, false, 0)
end

function Quest15013:OnSubFinish1501302(arg1)
    print("OnSubFinish1501302")
    this:SafeDestroyQuestNpc(npcs.Npc14310.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14706.alias, 3)
end

function Quest15013:OnSubStart1501303(arg1)
    print("OnSubStart1501303")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(3, npcs.Npc14310.id, 0, 1501303, 10, true)
end

function Quest15013:OnSubFinish1501303(arg1)
    print("OnSubFinish1501303")
end

function Quest15013:OnSubStart1501304(arg1)
    print("OnSubStart1501304")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1501304, 0, 8, 3, npcs.Npc14363.id)
    this:CreateQuestNpc(arg1, npcs.Npc14310.id, 0, false, 0)
end

function Quest15013:OnSubFinish1501304(arg1)
    print("OnSubFinish1501304")
end

function Quest15013:OnSubStart1501305(arg1)
    print("OnSubStart1501305")
    this:GetQuestNpcActor(npcs.Npc14363.alias, 15013):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest15013:OnSubFinish1501305(arg1)
    print("OnSubFinish1501305")
    this:SafeDestroyQuestNpc(npcs.Npc14363.alias, 3)
end

function Quest15013:OnSubFailed1501305(arg1)
    print("OnSubFailed1501305")
    this:SafeDestroyQuestNpc(npcs.Npc14363.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc14310.alias, 1100)
end

function Quest15013:OnSubStart1501306(arg1)
    print("OnSubStart1501306")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1501306, 0, 30, 3, npcs.Npc14363.id)
end

function Quest15013:OnSubFinish1501306(arg1)
    print("OnSubFinish1501306")
    this:SafeDestroyQuestNpc(npcs.Npc14363.alias, 3)
end

function Quest15013:OnSubStart1501307(arg1)
    print("OnSubStart1501307")
    this:NpcCreateWithNpcTrigger(npcs.Npc14310.id, 0, 5, 1501307)
    this:GetQuestNpcActor(npcs.Npc14310.alias, 15013):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest15013:OnSubFinish1501307(arg1)
    print("OnSubFinish1501307")
    this:TransmitPlayerById(arg1, 4, nil, nil, nil)
    this:DestroyQuestNpcActor(npcs.Npc14310.alias, 1100)
end

function Quest15013:OnSubStart1501309(arg1)
    print("OnSubStart1501309")
    actorMgr:CreateActorWithPos("tigger1501309", "Actor/Gadget/tigger1501309", 70900002, 0, points._tigger1501309Point_.pos, points._tigger1501309Point_.rot, true, false, 3)
end

function Quest15013:OnSubFinish1501309(arg1)
    print("OnSubFinish1501309")
end

return Quest15013
