require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21027 = class("Quest21027", QuestActorProxy)
Quest21027.defaultAlias = "Quest21027"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest21027:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest21027:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2102701"] = self.OnSubStart2102701,
        ["2102702"] = self.OnSubStart2102702,
        ["2102703"] = self.OnSubStart2102703,
        ["2102704"] = self.OnSubStart2102704,
        ["2102705"] = self.OnSubStart2102705,
        ["2102706"] = self.OnSubStart2102706,
        ["2102707"] = self.OnSubStart2102707,
        ["2102708"] = self.OnSubStart2102708,
        ["2102709"] = self.OnSubStart2102709
    }
end

function Quest21027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2102701"] = self.OnSubFinish2102701,
        ["2102702"] = self.OnSubFinish2102702,
        ["2102703"] = self.OnSubFinish2102703,
        ["2102704"] = self.OnSubFinish2102704,
        ["2102705"] = self.OnSubFinish2102705,
        ["2102706"] = self.OnSubFinish2102706,
        ["2102707"] = self.OnSubFinish2102707,
        ["2102708"] = self.OnSubFinish2102708,
        ["2102709"] = self.OnSubFinish2102709
    }
end

function Quest21027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest21027:Start()
    print("Start")
end

function Quest21027:OnDestroy()
    print("OnDestroy")
end

function Quest21027:OnMainFinished(arg1)
    print("OnMainFinished")
    this:SafeDestroyQuestNpc(npcs.Npc2031Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2045Data.alias, 3)
    this:LightNotifyTo(npcs.Npc2030Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2074Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2031Data.alias, 0, true)
end

function Quest21027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest21027:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc2031Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2045Data.alias, 3)
    this:LightNotifyTo(npcs.Npc2030Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2074Data.alias, 0, true)
    this:ActorDestroy("Q21027Trigger")
    this:LightNotifyTo(npcs.Npc2031Data.alias, 0, true)
end

function Quest21027:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest21027:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest21027:NpcCreate(arg1, arg2, arg3)
    this:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest21027:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest21027:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest21027:OnSubStart2102701(arg1)
    print("OnSubStart2102701")
    this:NpcCreate(arg1, npcs.Npc2031Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
end

function Quest21027:OnSubFinish2102701(arg1)
    print("OnSubFinish2102701")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    this:ActionSafeCall(function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc2031Data.alias, 3)
    end)
end

function Quest21027:OnSubStart2102702(arg1)
    print("OnSubStart2102702")
    this:ActionSafeCall(function(arg1_2)
        this:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
        this:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
        actorMgr:CreateActorWithPos("Q21027Trigger", "Actor/Gadget/Q21027Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2102704_N10000005").pos, sceneData:GetDummyPoint(3, "Q2102704_N10000005").rot, true, false, 3)
        this:NotifyTo(npcs.Npc2031Data.alias, 1, true)
        this:NpcCreate(arg1, npcs.Npc2045Data.id, 2)
    end)
end

function Quest21027:OnSubFinish2102702(arg1)
    print("OnSubFinish2102702")
    this:ActorDestroy("Q21027Trigger")
end

function Quest21027:OnSubStart2102703(arg1)
    print("OnSubStart2102703")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc2031Data.id, 1, npcs.Npc2031Data.alias)
    this:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
end

function Quest21027:OnSubFinish2102703(arg1)
    print("OnSubFinish2102703")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2045Data.alias)
end

function Quest21027:OnSubStart2102704(arg1)
    print("OnSubStart2102704")
    this:NpcCreate(arg1, npcs.Npc2031Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
end

function Quest21027:OnSubFinish2102704(arg1)
    print("OnSubFinish2102704")
end

function Quest21027:OnSubStart2102705(arg1)
    print("OnSubStart2102705")
    this:NpcCreate(arg1, npcs.Npc2031Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
end

function Quest21027:OnSubFinish2102705(arg1)
    print("OnSubFinish2102705")
end

function Quest21027:OnSubStart2102706(arg1)
    print("OnSubStart2102706")
    this:NpcCreate(arg1, npcs.Npc2031Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
end

function Quest21027:OnSubFinish2102706(arg1)
    print("OnSubFinish2102706")
end

function Quest21027:OnSubStart2102707(arg1)
    print("OnSubStart2102707")
    this:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
end

function Quest21027:OnSubFinish2102707(arg1)
    print("OnSubFinish2102707")
end

function Quest21027:OnSubStart2102708(arg1)
    print("OnSubStart2102708")
    this:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    this:RequestInteraction(npcs.Npc2031Data.alias, "", true)
end

function Quest21027:OnSubFinish2102708(arg1)
    print("OnSubFinish2102708")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2031Data.alias)
end

function Quest21027:OnSubStart2102709(arg1)
    print("OnSubStart2102709")
    this:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    this:RequestInteraction(npcs.Npc2031Data.alias, "", true)
end

function Quest21027:OnSubFinish2102709(arg1)
    print("OnSubFinish2102709")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2031Data.alias)
end

return Quest21027
