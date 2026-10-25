require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77243 = class("Quest77243", QuestActorProxy)
Quest77243.defaultAlias = "Quest77243"
local clientData
local this
local mainID
local actorAlias

function Quest77243:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77243:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7724301"] = self.OnSubStart7724301,
        ["7724303"] = self.OnSubStart7724303,
        ["7724305"] = self.OnSubStart7724305,
        ["7724304"] = self.OnSubStart7724304,
        ["7724306"] = self.OnSubStart7724306,
        ["7724307"] = self.OnSubStart7724307,
        ["7724308"] = self.OnSubStart7724308,
        ["7724302"] = self.OnSubStart7724302
    }
end

function Quest77243:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7724301"] = self.OnSubFinish7724301,
        ["7724303"] = self.OnSubFinish7724303,
        ["7724305"] = self.OnSubFinish7724305,
        ["7724304"] = self.OnSubFinish7724304,
        ["7724306"] = self.OnSubFinish7724306,
        ["7724307"] = self.OnSubFinish7724307,
        ["7724308"] = self.OnSubFinish7724308,
        ["7724302"] = self.OnSubFinish7724302
    }
end

function Quest77243:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7724303"] = self.OnSubFailed7724303, ["7724304"] = self.OnSubFailed7724304}
end

function Quest77243:Start()
    print("Start")
end

function Quest77243:OnDestroy()
    print("OnDestroy")
end

function Quest77243:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77243:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77243:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77243:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77243:OnSubStart7724301(arg1)
    print("OnSubStart7724301")
end

function Quest77243:OnSubFinish7724301(arg1)
    print("OnSubFinish7724301")
end

function Quest77243:OnSubStart7724303(arg1)
    print("OnSubStart7724303")
    actorUtils.FinishQuestWithParam({false}, {7724303})
end

function Quest77243:OnSubFinish7724303(arg1)
    print("OnSubFinish7724303")
end

function Quest77243:OnSubFailed7724303(arg1)
    print("OnSubFailed7724303")
    this:RecycleAllRes()
end

function Quest77243:OnSubStart7724305(arg1)
    print("OnSubStart7724305")
    this:CallDelayByQuest("", 0.5, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7724305})
    end)
end

function Quest77243:OnSubFinish7724305(arg1)
    print("OnSubFinish7724305")
end

function Quest77243:OnSubStart7724304(arg1)
    print("OnSubStart7724304")
    actorUtils.FinishQuestWithParam({false}, {7724304})
end

function Quest77243:OnSubFinish7724304(arg1)
    print("OnSubFinish7724304")
end

function Quest77243:OnSubFailed7724304(arg1)
    print("OnSubFailed7724304")
    this:RecycleAllRes()
end

function Quest77243:OnSubStart7724306(arg1)
    print("OnSubStart7724306")
    this:CallDelayByQuest("", 0.5, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7724306})
    end)
end

function Quest77243:OnSubFinish7724306(arg1)
    print("OnSubFinish7724306")
end

function Quest77243:OnSubStart7724307(arg1)
    print("OnSubStart7724307")
end

function Quest77243:OnSubFinish7724307(arg1)
    print("OnSubFinish7724307")
end

function Quest77243:OnSubStart7724308(arg1)
    print("OnSubStart7724308")
end

function Quest77243:OnSubFinish7724308(arg1)
    print("OnSubFinish7724308")
end

function Quest77243:OnSubStart7724302(arg1)
    print("OnSubStart7724302")
end

function Quest77243:OnSubFinish7724302(arg1)
    print("OnSubFinish7724302")
end

return Quest77243
