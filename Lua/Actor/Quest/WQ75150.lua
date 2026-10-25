require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75150 = class("Quest75150", QuestActorProxy)
Quest75150.defaultAlias = "Quest75150"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest75150:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest75150:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7515002"] = self.OnSubStart7515002,
        ["7515010"] = self.OnSubStart7515010,
        ["7515003"] = self.OnSubStart7515003,
        ["7515004"] = self.OnSubStart7515004,
        ["7515001"] = self.OnSubStart7515001
    }
end

function Quest75150:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7515002"] = self.OnSubFinish7515002,
        ["7515010"] = self.OnSubFinish7515010,
        ["7515003"] = self.OnSubFinish7515003,
        ["7515004"] = self.OnSubFinish7515004,
        ["7515001"] = self.OnSubFinish7515001
    }
end

function Quest75150:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75150:Start()
    print("Start")
end

function Quest75150:OnDestroy()
    print("OnDestroy")
end

function Quest75150:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75150:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75150:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75150:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7515002")
end

function Quest75150:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75150:OnSubStart7515002(arg1)
    print("OnSubStart7515002")
    this:CreateQuestNpc(arg1, npcs.Npc21803.id, 0, false, 0)
    actorUtils.FinishQuestID(false, 7515002)
end

function Quest75150:OnSubFinish7515002(arg1)
    print("OnSubFinish7515002")
end

function Quest75150:OnSubStart7515010(arg1)
    print("OnSubStart7515010")
end

function Quest75150:OnSubFinish7515010(arg1)
    print("OnSubFinish7515010")
end

function Quest75150:OnSubStart7515003(arg1)
    print("OnSubStart7515003")
end

function Quest75150:OnSubFinish7515003(arg1)
    print("OnSubFinish7515003")
    this:QuestNarratorTask(datas.NarratorWithId_7515002, nil)
    this:SetNavigationByMainId(75189, true)
end

function Quest75150:OnSubStart7515004(arg1)
    print("OnSubStart7515004")
end

function Quest75150:OnSubFinish7515004(arg1)
    print("OnSubFinish7515004")
    this:QuestNarratorTask(datas.NarratorWithId_7515004, nil)
end

function Quest75150:OnSubStart7515001(arg1)
    print("OnSubStart7515001")
end

function Quest75150:OnSubFinish7515001(arg1)
    print("OnSubFinish7515001")
    this:SafeDestroyQuestNpc(npcs.Npc21803.alias, 101)
end

return Quest75150
