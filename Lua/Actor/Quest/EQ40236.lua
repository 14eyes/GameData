require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40236 = class("Quest40236", QuestActorProxy)
Quest40236.defaultAlias = "Quest40236"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest40236:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest40236:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4023601"] = self.OnSubStart4023601,
        ["4023602"] = self.OnSubStart4023602,
        ["4023603"] = self.OnSubStart4023603,
        ["4023604"] = self.OnSubStart4023604,
        ["4023605"] = self.OnSubStart4023605,
        ["4023606"] = self.OnSubStart4023606,
        ["4023607"] = self.OnSubStart4023607,
        ["4023612"] = self.OnSubStart4023612,
        ["4023608"] = self.OnSubStart4023608,
        ["4023609"] = self.OnSubStart4023609,
        ["4023611"] = self.OnSubStart4023611,
        ["4023613"] = self.OnSubStart4023613,
        ["4023610"] = self.OnSubStart4023610
    }
end

function Quest40236:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4023601"] = self.OnSubFinish4023601,
        ["4023602"] = self.OnSubFinish4023602,
        ["4023603"] = self.OnSubFinish4023603,
        ["4023604"] = self.OnSubFinish4023604,
        ["4023605"] = self.OnSubFinish4023605,
        ["4023606"] = self.OnSubFinish4023606,
        ["4023607"] = self.OnSubFinish4023607,
        ["4023612"] = self.OnSubFinish4023612,
        ["4023608"] = self.OnSubFinish4023608,
        ["4023609"] = self.OnSubFinish4023609,
        ["4023611"] = self.OnSubFinish4023611,
        ["4023613"] = self.OnSubFinish4023613,
        ["4023610"] = self.OnSubFinish4023610
    }
end

function Quest40236:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40236:Start()
    print("Start")
end

function Quest40236:OnDestroy()
    print("OnDestroy")
end

function Quest40236:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40236:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40236:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc16350.alias, 1205)
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 1205)
    this:SafeDestroyQuestNpc(npcs.Npc2613.alias, 1205)
    this:SafeDestroyQuestNpc(npcs.Npc1081.alias, 1205)
    this:SafeDestroyQuestNpc(npcs.Npc16350.alias, 3)
    this:RecycleAllRes()
    this:DestroyNpcTrigger("Q4023603N16350Trigger")
    this:DestroyNpcTrigger("Q4023604N1317Trigger")
    this:DestroyNpcTrigger("Q4023608N16350Trigger")
    this:DestroyNpcTrigger("Q4023609N16350Trigger")
    this:DestroyNpcTrigger("Q4023611N16350Trigger")
end

function Quest40236:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest40236:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40236:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40236:OnSubStart4023601(arg1)
    print("OnSubStart4023601")
    this:QuestNarratorTask(datas.NarratorWithId_4023601, nil)
    actorUtils.FinishQuestWithParam({false}, {4023601})
end

function Quest40236:OnSubFinish4023601(arg1)
    print("OnSubFinish4023601")
end

function Quest40236:OnSubStart4023602(arg1)
    print("OnSubStart4023602")
end

function Quest40236:OnSubFinish4023602(arg1)
    print("OnSubFinish4023602")
    this:QuestNarratorTask(datas.NarratorWithId_4023602, nil)
    this:SetNavigationByMainId(40236, true)
end

function Quest40236:OnSubStart4023603(arg1)
    print("OnSubStart4023603")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023603, 0, 30, 2, npcs.Npc16350.id)
end

function Quest40236:OnSubFinish4023603(arg1)
    print("OnSubFinish4023603")
    this:NpcDestroyImmediately(1205, npcs.Npc16350.alias)
    this:ClearNarratorTask()
end

function Quest40236:OnSubStart4023604(arg1)
    print("OnSubStart4023604")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023604, 0, 30, 2, npcs.Npc1317.id)
    this:CreateQuestNpc(arg1, npcs.Npc1316.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 40236):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 40236):DoFreeStyle(8010, true, nil, true, true, false, false)
end

function Quest40236:OnSubFinish4023604(arg1)
    print("OnSubFinish4023604")
    this:NpcDestroyImmediately(1205, npcs.Npc1316.alias)
end

function Quest40236:OnSubStart4023605(arg1)
    print("OnSubStart4023605")
end

function Quest40236:OnSubFinish4023605(arg1)
    print("OnSubFinish4023605")
end

function Quest40236:OnSubStart4023606(arg1)
    print("OnSubStart4023606")
end

function Quest40236:OnSubFinish4023606(arg1)
    print("OnSubFinish4023606")
end

function Quest40236:OnSubStart4023607(arg1)
    print("OnSubStart4023607")
end

function Quest40236:OnSubFinish4023607(arg1)
    print("OnSubFinish4023607")
end

function Quest40236:OnSubStart4023612(arg1)
    print("OnSubStart4023612")
end

function Quest40236:OnSubFinish4023612(arg1)
    print("OnSubFinish4023612")
    this:NpcDestroyImmediately(3, npcs.Npc1317.alias)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4023612, nil)
    end)
end

function Quest40236:OnSubStart4023608(arg1)
    print("OnSubStart4023608")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023608, 0, 15, 2, npcs.Npc16350.id)
end

function Quest40236:OnSubFinish4023608(arg1)
    print("OnSubFinish4023608")
    this:NpcDestroyImmediately(3, npcs.Npc16350.alias)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("TradeShowMainPage", 0)
        this:AfterMainPageActiveSafeCall(function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId_4023608, nil)
        end)
    end)
end

function Quest40236:OnSubStart4023609(arg1)
    print("OnSubStart4023609")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023609, 0, 10, 2, npcs.Npc16350.id)
end

function Quest40236:OnSubFinish4023609(arg1)
    print("OnSubFinish4023609")
    this:NpcDestroyImmediately(3, npcs.Npc16350.alias)
end

function Quest40236:OnSubStart4023611(arg1)
    print("OnSubStart4023611")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023611, 0, 30, 2, npcs.Npc16350.id)
end

function Quest40236:OnSubFinish4023611(arg1)
    print("OnSubFinish4023611")
    this:NpcDestroyImmediately(1205, npcs.Npc16350.alias)
end

function Quest40236:OnSubStart4023613(arg1)
    print("OnSubStart4023613")
    this:CreateQuestNpc(arg1, npcs.Npc1316.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2613.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1081.id, 0, false, 0)
end

function Quest40236:OnSubFinish4023613(arg1)
    print("OnSubFinish4023613")
    this:NpcDestroyImmediately(1205, npcs.Npc1316.alias)
    this:NpcDestroyImmediately(1205, npcs.Npc2613.alias)
    this:NpcDestroyImmediately(1205, npcs.Npc1081.alias)
end

function Quest40236:OnSubStart4023610(arg1)
    print("OnSubStart4023610")
end

function Quest40236:OnSubFinish4023610(arg1)
    print("OnSubFinish4023610")
end

return Quest40236
