require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15020 = class("Quest15020", QuestActorProxy)
Quest15020.defaultAlias = "Quest15020"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15020:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1502001"] = self.OnSubStart1502001,
        ["1502013"] = self.OnSubStart1502013,
        ["1502009"] = self.OnSubStart1502009,
        ["1502010"] = self.OnSubStart1502010,
        ["1502011"] = self.OnSubStart1502011,
        ["1502012"] = self.OnSubStart1502012,
        ["1502002"] = self.OnSubStart1502002,
        ["1502003"] = self.OnSubStart1502003,
        ["1502004"] = self.OnSubStart1502004,
        ["1502014"] = self.OnSubStart1502014,
        ["1502005"] = self.OnSubStart1502005,
        ["1502006"] = self.OnSubStart1502006,
        ["1502007"] = self.OnSubStart1502007,
        ["1502008"] = self.OnSubStart1502008
    }
end

function Quest15020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1502001"] = self.OnSubFinish1502001,
        ["1502013"] = self.OnSubFinish1502013,
        ["1502009"] = self.OnSubFinish1502009,
        ["1502010"] = self.OnSubFinish1502010,
        ["1502011"] = self.OnSubFinish1502011,
        ["1502012"] = self.OnSubFinish1502012,
        ["1502002"] = self.OnSubFinish1502002,
        ["1502003"] = self.OnSubFinish1502003,
        ["1502004"] = self.OnSubFinish1502004,
        ["1502014"] = self.OnSubFinish1502014,
        ["1502005"] = self.OnSubFinish1502005,
        ["1502006"] = self.OnSubFinish1502006,
        ["1502007"] = self.OnSubFinish1502007,
        ["1502008"] = self.OnSubFinish1502008
    }
end

function Quest15020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15020:Start()
    print("Start")
end

function Quest15020:OnDestroy()
    print("OnDestroy")
end

function Quest15020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15020:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc21708.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21709.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21710.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21711.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21716.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6247.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21648.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21713.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21714.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21712.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21735.alias, 3)
    this:ActorDestroy("Q1502003_Trigger")
    this:ActorDestroy("Q1502007_Trigger")
    this:ActorDestroy("Q1502007_02T")
    this:ActorDestroy("Q1502013_trigger")
    this:ActorDestroy("Q1502013_trigger02")
end

function Quest15020:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 1502014)
    end
end

function Quest15020:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15020:OnSubStart1502001(arg1)
    print("OnSubStart1502001")
    this:CreateQuestNpc(arg1, npcs.Npc21708.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21709.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21710.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21716.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6247.id, 0, false, 0)
    this:TryStartTribalAutoTrack(arg1)
    this:DeployStoryByQuest(121502001)
end

function Quest15020:OnSubFinish1502001(arg1)
    print("OnSubFinish1502001")
    this:SetNavigationByMainId(15020, true)
end

function Quest15020:OnSubStart1502013(arg1)
    print("OnSubStart1502013")
    this:CreateQuestNpc(arg1, npcs.Npc21711.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q1502013_trigger", "Actor/Gadget/Q1502013_trigger", 70900002, 0, points._Q1502013_triggerPoint_.pos, points._Q1502013_triggerPoint_.rot, true, false, nil)
end

function Quest15020:OnSubFinish1502013(arg1)
    print("OnSubFinish1502013")
    this:GetQuestNpcActor(npcs.Npc21711.alias, 15020):SetPosAndTurnTo({x = -1119.023, y = 265.818, z = 9686.585}, {x = 0, y = 0, z = 0}, false)
end

function Quest15020:OnSubStart1502009(arg1)
    print("OnSubStart1502009")
end

function Quest15020:OnSubFinish1502009(arg1)
    print("OnSubFinish1502009")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1502003, nil)
    end)
end

function Quest15020:OnSubStart1502010(arg1)
    print("OnSubStart1502010")
end

function Quest15020:OnSubFinish1502010(arg1)
    print("OnSubFinish1502010")
end

function Quest15020:OnSubStart1502011(arg1)
    print("OnSubStart1502011")
end

function Quest15020:OnSubFinish1502011(arg1)
    print("OnSubFinish1502011")
end

function Quest15020:OnSubStart1502012(arg1)
    print("OnSubStart1502012")
end

function Quest15020:OnSubFinish1502012(arg1)
    print("OnSubFinish1502012")
end

function Quest15020:OnSubStart1502002(arg1)
    print("OnSubStart1502002")
    this:CreateQuestNpc(arg1, npcs.Npc21708.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21709.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21710.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21716.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6247.id, 0, false, 0)
    this:DeployStoryByQuest(121502001)
end

function Quest15020:OnSubFinish1502002(arg1)
    print("OnSubFinish1502002")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1502001, nil)
    end)

    this:CancelStoryByQuest(121502001)
end

function Quest15020:OnSubStart1502003(arg1)
    print("OnSubStart1502003")
    actorMgr:CreateActorWithPos("Q1502003_Trigger", "Actor/Gadget/Q1502003_Trigger", 70900002, 0, points._Q1502003_TriggerPoint_.pos, points._Q1502003_TriggerPoint_.rot, true, false, 3)
end

function Quest15020:OnSubFinish1502003(arg1)
    print("OnSubFinish1502003")
    this:SafeDestroyQuestNpc(npcs.Npc21708.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21709.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21710.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21711.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21716.alias, 3)
end

function Quest15020:OnSubStart1502004(arg1)
    print("OnSubStart1502004")
    this:RequestInteraction(npcs.Npc6247.alias, "", true)
end

function Quest15020:OnSubFinish1502004(arg1)
    print("OnSubFinish1502004")
end

function Quest15020:OnSubStart1502014(arg1)
    print("OnSubStart1502014")
end

function Quest15020:OnSubFinish1502014(arg1)
    print("OnSubFinish1502014")
end

function Quest15020:OnSubStart1502005(arg1)
    print("OnSubStart1502005")
end

function Quest15020:OnSubFinish1502005(arg1)
    print("OnSubFinish1502005")
end

function Quest15020:OnSubStart1502006(arg1)
    print("OnSubStart1502006")
    this:RequestInteraction(npcs.Npc6247.alias, "", true)
end

function Quest15020:OnSubFinish1502006(arg1)
    print("OnSubFinish1502006")
    this:SafeDestroyQuestNpc(npcs.Npc6247.alias, 3)
end

function Quest15020:OnSubStart1502007(arg1)
    print("OnSubStart1502007")
    this:CreateQuestNpc(arg1, npcs.Npc21648.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21713.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21713.alias, 15020):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21714.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21714.alias, 15020):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21712.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q1502007_Trigger", "Actor/Gadget/Q1502007_Trigger", 70900002, 0, points._Q1502007_TriggerPoint_.pos, points._Q1502007_TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1502007_02T", "Actor/Gadget/Q1502007_02T", 70900002, 0, points._Q1502007_02TPoint_.pos, points._Q1502007_02TPoint_.rot, true, false, 3)
end

function Quest15020:OnSubFinish1502007(arg1)
    print("OnSubFinish1502007")
end

function Quest15020:OnSubStart1502008(arg1)
    print("OnSubStart1502008")
    this:RequestInteraction(npcs.Npc21648.alias, "", true)
end

function Quest15020:OnSubFinish1502008(arg1)
    print("OnSubFinish1502008")
    this:SafeDestroyQuestNpc(npcs.Npc21648.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21713.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21714.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21712.alias, 3)
    actorUtils.ShowContext("ChapterCompleteDialog", 2062)
end

return Quest15020
