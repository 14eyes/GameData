require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75197 = class("Quest75197", QuestActorProxy)
Quest75197.defaultAlias = "Quest75197"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75197:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75197:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7519701"] = self.OnSubStart7519701,
        ["7519706"] = self.OnSubStart7519706,
        ["7519705"] = self.OnSubStart7519705,
        ["7519702"] = self.OnSubStart7519702,
        ["7519703"] = self.OnSubStart7519703,
        ["7519704"] = self.OnSubStart7519704
    }
end

function Quest75197:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7519701"] = self.OnSubFinish7519701,
        ["7519706"] = self.OnSubFinish7519706,
        ["7519705"] = self.OnSubFinish7519705,
        ["7519702"] = self.OnSubFinish7519702,
        ["7519703"] = self.OnSubFinish7519703,
        ["7519704"] = self.OnSubFinish7519704
    }
end

function Quest75197:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75197:Start()
    print("Start")
end

function Quest75197:OnDestroy()
    print("OnDestroy")
end

function Quest75197:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75197:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75197:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75197:OnSubStart7519701(arg1)
    print("OnSubStart7519701")
    this:CreateQuestNpc(arg1, npcs.Npc1667Data.id, 0, false, 0)
end

function Quest75197:OnSubFinish7519701(arg1)
    print("OnSubFinish7519701")
end

function Quest75197:OnSubStart7519706(arg1)
    print("OnSubStart7519706")
end

function Quest75197:OnSubFinish7519706(arg1)
    print("OnSubFinish7519706")
end

function Quest75197:OnSubStart7519705(arg1)
    print("OnSubStart7519705")
end

function Quest75197:OnSubFinish7519705(arg1)
    print("OnSubFinish7519705")
end

function Quest75197:OnSubStart7519702(arg1)
    print("OnSubStart7519702")
end

function Quest75197:OnSubFinish7519702(arg1)
    print("OnSubFinish7519702")
end

function Quest75197:OnSubStart7519703(arg1)
    print("OnSubStart7519703")
end

function Quest75197:OnSubFinish7519703(arg1)
    print("OnSubFinish7519703")
end

function Quest75197:OnSubStart7519704(arg1)
    print("OnSubStart7519704")
end

function Quest75197:OnSubFinish7519704(arg1)
    print("OnSubFinish7519704")
end

return Quest75197
