require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19155 = class("Quest19155", QuestActorProxy)
Quest19155.defaultAlias = "Quest19155"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19155:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19155:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1915502"] = self.OnSubStart1915502,
        ["1915505"] = self.OnSubStart1915505,
        ["1915503"] = self.OnSubStart1915503,
        ["1915504"] = self.OnSubStart1915504
    }
end

function Quest19155:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1915502"] = self.OnSubFinish1915502,
        ["1915505"] = self.OnSubFinish1915505,
        ["1915503"] = self.OnSubFinish1915503,
        ["1915504"] = self.OnSubFinish1915504
    }
end

function Quest19155:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19155:Start()
    print("Start")
end

function Quest19155:OnDestroy()
    print("OnDestroy")
end

function Quest19155:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19155:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19155:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12909Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4329Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4329Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q1915503tri", 3, false)
    actorMgr:DestroyEntityActor("Q1915504tri", 3, false)
end

function Quest19155:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest19155:OnSubStart1915502(arg1)
    print("OnSubStart1915502")
end

function Quest19155:OnSubFinish1915502(arg1)
    print("OnSubFinish1915502")
end

function Quest19155:OnSubStart1915505(arg1)
    print("OnSubStart1915505")
end

function Quest19155:OnSubFinish1915505(arg1)
    print("OnSubFinish1915505")
    this:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest19155:OnSubStart1915503(arg1)
    print("OnSubStart1915503")
    this:CreateQuestNpcWithTriggerBlack("Q1915503tri", 1915503, 512, 1, 30, 1)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1915502)
end

function Quest19155:OnSubFinish1915503(arg1)
    print("OnSubFinish1915503")
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 3)
end

function Quest19155:OnSubStart1915504(arg1)
    print("OnSubStart1915504")
    this:CreateQuestNpcWithTriggerBlack("Q1915504tri", 1915504, 512, 1, 5, 1)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1915504)
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc4329Data.alias, 1, true)
    end)
end

function Quest19155:OnSubFinish1915504(arg1)
    print("OnSubFinish1915504")
    this:NpcDestroy(npcs.Coop_LaylaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12909Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4329Data.alias, 1, true)
end

return Quest19155
