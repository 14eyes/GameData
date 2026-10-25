require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72131 = class("Quest72131", QuestActorProxy)
Quest72131.defaultAlias = "Quest72131"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72131:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72131:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7213104"] = self.OnSubStart7213104,
        ["7213105"] = self.OnSubStart7213105,
        ["7213106"] = self.OnSubStart7213106,
        ["7213107"] = self.OnSubStart7213107,
        ["7213108"] = self.OnSubStart7213108,
        ["7213109"] = self.OnSubStart7213109
    }
end

function Quest72131:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7213104"] = self.OnSubFinish7213104,
        ["7213105"] = self.OnSubFinish7213105,
        ["7213106"] = self.OnSubFinish7213106,
        ["7213107"] = self.OnSubFinish7213107,
        ["7213108"] = self.OnSubFinish7213108,
        ["7213109"] = self.OnSubFinish7213109
    }
end

function Quest72131:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7213104"] = self.OnSubFailed7213104,
        ["7213105"] = self.OnSubFailed7213105,
        ["7213106"] = self.OnSubFailed7213106,
        ["7213107"] = self.OnSubFailed7213107,
        ["7213108"] = self.OnSubFailed7213108,
        ["7213109"] = self.OnSubFailed7213109
    }
end

function Quest72131:Start()
    print("Start")
end

function Quest72131:OnDestroy()
    print("OnDestroy")
end

function Quest72131:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72131:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72131:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72131:cutscene()
    print("cutscene")
    self:PlayCutsceneIndex("7213101", self.finishquest, nil, nil, false)
end

function Quest72131:finishquest()
    print("finishquest")
    self:FinishQuestID(false, 7213109)
end

function Quest72131:OnSubStart7213104(arg1)
    print("OnSubStart7213104")
end

function Quest72131:OnSubFinish7213104(arg1)
    print("OnSubFinish7213104")
end

function Quest72131:OnSubFailed7213104(arg1)
    print("OnSubFailed7213104")
end

function Quest72131:OnSubStart7213105(arg1)
    print("OnSubStart7213105")
end

function Quest72131:OnSubFinish7213105(arg1)
    print("OnSubFinish7213105")
end

function Quest72131:OnSubFailed7213105(arg1)
    print("OnSubFailed7213105")
end

function Quest72131:OnSubStart7213106(arg1)
    print("OnSubStart7213106")
end

function Quest72131:OnSubFinish7213106(arg1)
    print("OnSubFinish7213106")
    self:ActionSafeCall(self.cutscene)
end

function Quest72131:OnSubFailed7213106(arg1)
    print("OnSubFailed7213106")
end

function Quest72131:OnSubStart7213107(arg1)
    print("OnSubStart7213107")
end

function Quest72131:OnSubFinish7213107(arg1)
    print("OnSubFinish7213107")
end

function Quest72131:OnSubFailed7213107(arg1)
    print("OnSubFailed7213107")
end

function Quest72131:OnSubStart7213108(arg1)
    print("OnSubStart7213108")
end

function Quest72131:OnSubFinish7213108(arg1)
    print("OnSubFinish7213108")
end

function Quest72131:OnSubFailed7213108(arg1)
    print("OnSubFailed7213108")
end

function Quest72131:OnSubStart7213109(arg1)
    print("OnSubStart7213109")
end

function Quest72131:OnSubFinish7213109(arg1)
    print("OnSubFinish7213109")
end

function Quest72131:OnSubFailed7213109(arg1)
    print("OnSubFailed7213109")
end

return Quest72131
