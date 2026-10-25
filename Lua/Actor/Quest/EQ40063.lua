require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40063 = class("Quest40063", QuestActorProxy)
Quest40063.defaultAlias = "Quest40063"
local clientData
local mainID
local actorAlias
local subIDs

function Quest40063:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40063:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4006306"] = self.OnSubStart4006306,
        ["4006301"] = self.OnSubStart4006301,
        ["4006302"] = self.OnSubStart4006302,
        ["4006303"] = self.OnSubStart4006303,
        ["4006304"] = self.OnSubStart4006304,
        ["4006305"] = self.OnSubStart4006305,
        ["4006307"] = self.OnSubStart4006307
    }
end

function Quest40063:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4006306"] = self.OnSubFinish4006306,
        ["4006301"] = self.OnSubFinish4006301,
        ["4006302"] = self.OnSubFinish4006302,
        ["4006303"] = self.OnSubFinish4006303,
        ["4006304"] = self.OnSubFinish4006304,
        ["4006305"] = self.OnSubFinish4006305,
        ["4006307"] = self.OnSubFinish4006307
    }
end

function Quest40063:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40063:Start()
    print("Start")
end

function Quest40063:OnDestroy()
    print("OnDestroy")
end

function Quest40063:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40063:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40063:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40063:OnSubStart4006306(arg1)
    print("OnSubStart4006306")
    actorUtils.FinishQuestID(false, 4006306)
end

function Quest40063:OnSubFinish4006306(arg1)
    print("OnSubFinish4006306")
end

function Quest40063:OnSubStart4006301(arg1)
    print("OnSubStart4006301")
end

function Quest40063:OnSubFinish4006301(arg1)
    print("OnSubFinish4006301")
end

function Quest40063:OnSubStart4006302(arg1)
    print("OnSubStart4006302")
end

function Quest40063:OnSubFinish4006302(arg1)
    print("OnSubFinish4006302")
end

function Quest40063:OnSubStart4006303(arg1)
    print("OnSubStart4006303")
end

function Quest40063:OnSubFinish4006303(arg1)
    print("OnSubFinish4006303")
end

function Quest40063:OnSubStart4006304(arg1)
    print("OnSubStart4006304")
end

function Quest40063:OnSubFinish4006304(arg1)
    print("OnSubFinish4006304")
end

function Quest40063:OnSubStart4006305(arg1)
    print("OnSubStart4006305")
end

function Quest40063:OnSubFinish4006305(arg1)
    print("OnSubFinish4006305")
end

function Quest40063:OnSubStart4006307(arg1)
    print("OnSubStart4006307")
end

function Quest40063:OnSubFinish4006307(arg1)
    print("OnSubFinish4006307")
end

return Quest40063
