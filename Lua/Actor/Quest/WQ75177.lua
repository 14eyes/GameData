require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75177 = class("Quest75177", QuestActorProxy)
Quest75177.defaultAlias = "Quest75177"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75177:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75177:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7517701"] = self.OnSubStart7517701,
        ["7517705"] = self.OnSubStart7517705,
        ["7517702"] = self.OnSubStart7517702,
        ["7517703"] = self.OnSubStart7517703,
        ["7517704"] = self.OnSubStart7517704
    }
end

function Quest75177:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7517701"] = self.OnSubFinish7517701,
        ["7517705"] = self.OnSubFinish7517705,
        ["7517702"] = self.OnSubFinish7517702,
        ["7517703"] = self.OnSubFinish7517703,
        ["7517704"] = self.OnSubFinish7517704
    }
end

function Quest75177:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75177:Start()
    print("Start")
end

function Quest75177:OnDestroy()
    print("OnDestroy")
end

function Quest75177:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75177:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75177:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75177:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7517705Trigger")
end

function Quest75177:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75177:OnSubStart7517701(arg1)
    print("OnSubStart7517701")
    actorUtils.FinishQuestID(false, 7517701)
end

function Quest75177:OnSubFinish7517701(arg1)
    print("OnSubFinish7517701")
    this:QuestNarratorTask(datas.NarratorWithId_7517701, nil)
end

function Quest75177:OnSubStart7517705(arg1)
    print("OnSubStart7517705")
    this:CreateQuestNpc(arg1, npcs.Npc21460.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7517705Trigger", "Actor/Gadget/Q7517705Trigger", 70900002, 0, points._Q7517705TriggerPoint_.pos, points._Q7517705TriggerPoint_.rot, true, false, 3)
end

function Quest75177:OnSubFinish7517705(arg1)
    print("OnSubFinish7517705")
end

function Quest75177:OnSubStart7517702(arg1)
    print("OnSubStart7517702")
end

function Quest75177:OnSubFinish7517702(arg1)
    print("OnSubFinish7517702")
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
    this:QuestNarratorTask(datas.NarratorWithId_7517702, nil)
end

function Quest75177:OnSubStart7517703(arg1)
    print("OnSubStart7517703")
end

function Quest75177:OnSubFinish7517703(arg1)
    print("OnSubFinish7517703")
end

function Quest75177:OnSubStart7517704(arg1)
    print("OnSubStart7517704")
end

function Quest75177:OnSubFinish7517704(arg1)
    print("OnSubFinish7517704")
end

return Quest75177
