require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76082 = class("Quest76082", QuestActorProxy)
Quest76082.defaultAlias = "Quest76082"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest76082:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest76082:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7608201"] = self.OnSubStart7608201,
        ["7608202"] = self.OnSubStart7608202,
        ["7608203"] = self.OnSubStart7608203,
        ["7608204"] = self.OnSubStart7608204,
        ["7608205"] = self.OnSubStart7608205,
        ["7608206"] = self.OnSubStart7608206
    }
end

function Quest76082:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7608201"] = self.OnSubFinish7608201,
        ["7608202"] = self.OnSubFinish7608202,
        ["7608203"] = self.OnSubFinish7608203,
        ["7608204"] = self.OnSubFinish7608204,
        ["7608205"] = self.OnSubFinish7608205,
        ["7608206"] = self.OnSubFinish7608206
    }
end

function Quest76082:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76082:Start()
    print("Start")
end

function Quest76082:OnDestroy()
    print("OnDestroy")
end

function Quest76082:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76082:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76082:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76082:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest76082:OnSubStart7608201(arg1)
    print("OnSubStart7608201")
    this:CreateQuestNpc(arg1, npcs.Npc21903.id, 0, false, 0)
end

function Quest76082:OnSubFinish7608201(arg1)
    print("OnSubFinish7608201")
    this:QuestNarratorTask(datas.NarratorWithId_7601417, nil)
end

function Quest76082:OnSubStart7608202(arg1)
    print("OnSubStart7608202")
end

function Quest76082:OnSubFinish7608202(arg1)
    print("OnSubFinish7608202")
end

function Quest76082:OnSubStart7608203(arg1)
    print("OnSubStart7608203")
end

function Quest76082:OnSubFinish7608203(arg1)
    print("OnSubFinish7608203")
end

function Quest76082:OnSubStart7608204(arg1)
    print("OnSubStart7608204")
end

function Quest76082:OnSubFinish7608204(arg1)
    print("OnSubFinish7608204")
end

function Quest76082:OnSubStart7608205(arg1)
    print("OnSubStart7608205")
end

function Quest76082:OnSubFinish7608205(arg1)
    print("OnSubFinish7608205")
end

function Quest76082:OnSubStart7608206(arg1)
    print("OnSubStart7608206")
end

function Quest76082:OnSubFinish7608206(arg1)
    print("OnSubFinish7608206")
end

return Quest76082
