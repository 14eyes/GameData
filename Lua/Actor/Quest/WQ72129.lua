require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72129 = class("Quest72129", QuestActorProxy)
Quest72129.defaultAlias = "Quest72129"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72129:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72129:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7212910"] = self.OnSubStart7212910,
        ["7212905"] = self.OnSubStart7212905,
        ["7212906"] = self.OnSubStart7212906,
        ["7212907"] = self.OnSubStart7212907,
        ["7212908"] = self.OnSubStart7212908,
        ["7212909"] = self.OnSubStart7212909,
        ["7212911"] = self.OnSubStart7212911
    }
end

function Quest72129:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7212910"] = self.OnSubFinish7212910,
        ["7212905"] = self.OnSubFinish7212905,
        ["7212906"] = self.OnSubFinish7212906,
        ["7212907"] = self.OnSubFinish7212907,
        ["7212908"] = self.OnSubFinish7212908,
        ["7212909"] = self.OnSubFinish7212909,
        ["7212911"] = self.OnSubFinish7212911
    }
end

function Quest72129:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7212910"] = self.OnSubFailed7212910,
        ["7212905"] = self.OnSubFailed7212905,
        ["7212906"] = self.OnSubFailed7212906,
        ["7212907"] = self.OnSubFailed7212907,
        ["7212908"] = self.OnSubFailed7212908,
        ["7212909"] = self.OnSubFailed7212909,
        ["7212911"] = self.OnSubFailed7212911
    }
end

function Quest72129:Start()
    print("Start")
end

function Quest72129:OnDestroy()
    print("OnDestroy")
end

function Quest72129:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72129:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72129:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72129:cutscene()
    print("cutscene")
    self:PlayCutsceneIndex("7212901", self.FinishQuest, nil, nil, false)
end

function Quest72129:FinishQuest()
    print("FinishQuest")
    self:FinishQuestID(false, 7212909)
end

function Quest72129:OnSubStart7212910(arg1)
    print("OnSubStart7212910")
end

function Quest72129:OnSubFinish7212910(arg1)
    print("OnSubFinish7212910")
end

function Quest72129:OnSubFailed7212910(arg1)
    print("OnSubFailed7212910")
end

function Quest72129:OnSubStart7212905(arg1)
    print("OnSubStart7212905")
end

function Quest72129:OnSubFinish7212905(arg1)
    print("OnSubFinish7212905")
end

function Quest72129:OnSubFailed7212905(arg1)
    print("OnSubFailed7212905")
end

function Quest72129:OnSubStart7212906(arg1)
    print("OnSubStart7212906")
end

function Quest72129:OnSubFinish7212906(arg1)
    print("OnSubFinish7212906")
    self:ActionSafeCall(self.cutscene)
end

function Quest72129:OnSubFailed7212906(arg1)
    print("OnSubFailed7212906")
end

function Quest72129:OnSubStart7212907(arg1)
    print("OnSubStart7212907")
end

function Quest72129:OnSubFinish7212907(arg1)
    print("OnSubFinish7212907")
end

function Quest72129:OnSubFailed7212907(arg1)
    print("OnSubFailed7212907")
end

function Quest72129:OnSubStart7212908(arg1)
    print("OnSubStart7212908")
end

function Quest72129:OnSubFinish7212908(arg1)
    print("OnSubFinish7212908")
end

function Quest72129:OnSubFailed7212908(arg1)
    print("OnSubFailed7212908")
end

function Quest72129:OnSubStart7212909(arg1)
    print("OnSubStart7212909")
end

function Quest72129:OnSubFinish7212909(arg1)
    print("OnSubFinish7212909")
end

function Quest72129:OnSubFailed7212909(arg1)
    print("OnSubFailed7212909")
end

function Quest72129:OnSubStart7212911(arg1)
    print("OnSubStart7212911")
end

function Quest72129:OnSubFinish7212911(arg1)
    print("OnSubFinish7212911")
end

function Quest72129:OnSubFailed7212911(arg1)
    print("OnSubFailed7212911")
end

return Quest72129
