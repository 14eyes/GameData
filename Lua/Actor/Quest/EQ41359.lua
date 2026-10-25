require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41359 = class("Quest41359", QuestActorProxy)
Quest41359.defaultAlias = "Quest41359"
local clientData
local mainID
local actorAlias
local subIDs

function Quest41359:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest41359:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4135901"] = self.OnSubStart4135901,
        ["4135902"] = self.OnSubStart4135902,
        ["4135903"] = self.OnSubStart4135903,
        ["4135908"] = self.OnSubStart4135908,
        ["4135904"] = self.OnSubStart4135904,
        ["4135909"] = self.OnSubStart4135909,
        ["4135905"] = self.OnSubStart4135905,
        ["4135910"] = self.OnSubStart4135910,
        ["4135906"] = self.OnSubStart4135906,
        ["4135907"] = self.OnSubStart4135907
    }
end

function Quest41359:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4135901"] = self.OnSubFinish4135901,
        ["4135902"] = self.OnSubFinish4135902,
        ["4135903"] = self.OnSubFinish4135903,
        ["4135908"] = self.OnSubFinish4135908,
        ["4135904"] = self.OnSubFinish4135904,
        ["4135909"] = self.OnSubFinish4135909,
        ["4135905"] = self.OnSubFinish4135905,
        ["4135910"] = self.OnSubFinish4135910,
        ["4135906"] = self.OnSubFinish4135906,
        ["4135907"] = self.OnSubFinish4135907
    }
end

function Quest41359:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4135901"] = self.OnSubFailed4135901,
        ["4135902"] = self.OnSubFailed4135902,
        ["4135903"] = self.OnSubFailed4135903,
        ["4135908"] = self.OnSubFailed4135908,
        ["4135904"] = self.OnSubFailed4135904,
        ["4135909"] = self.OnSubFailed4135909,
        ["4135905"] = self.OnSubFailed4135905,
        ["4135910"] = self.OnSubFailed4135910,
        ["4135906"] = self.OnSubFailed4135906,
        ["4135907"] = self.OnSubFailed4135907
    }
end

function Quest41359:Start()
    print("Start")
end

function Quest41359:OnDestroy()
    print("OnDestroy")
end

function Quest41359:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41359:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41359:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest41359:OnSubStart4135901(arg1)
    print("OnSubStart4135901")
end

function Quest41359:OnSubFinish4135901(arg1)
    print("OnSubFinish4135901")
end

function Quest41359:OnSubFailed4135901(arg1)
    print("OnSubFailed4135901")
end

function Quest41359:OnSubStart4135902(arg1)
    print("OnSubStart4135902")
end

function Quest41359:OnSubFinish4135902(arg1)
    print("OnSubFinish4135902")
end

function Quest41359:OnSubFailed4135902(arg1)
    print("OnSubFailed4135902")
end

function Quest41359:OnSubStart4135903(arg1)
    print("OnSubStart4135903")
end

function Quest41359:OnSubFinish4135903(arg1)
    print("OnSubFinish4135903")
end

function Quest41359:OnSubFailed4135903(arg1)
    print("OnSubFailed4135903")
end

function Quest41359:OnSubStart4135908(arg1)
    print("OnSubStart4135908")
end

function Quest41359:OnSubFinish4135908(arg1)
    print("OnSubFinish4135908")
end

function Quest41359:OnSubFailed4135908(arg1)
    print("OnSubFailed4135908")
end

function Quest41359:OnSubStart4135904(arg1)
    print("OnSubStart4135904")
end

function Quest41359:OnSubFinish4135904(arg1)
    print("OnSubFinish4135904")
end

function Quest41359:OnSubFailed4135904(arg1)
    print("OnSubFailed4135904")
end

function Quest41359:OnSubStart4135909(arg1)
    print("OnSubStart4135909")
end

function Quest41359:OnSubFinish4135909(arg1)
    print("OnSubFinish4135909")
end

function Quest41359:OnSubFailed4135909(arg1)
    print("OnSubFailed4135909")
end

function Quest41359:OnSubStart4135905(arg1)
    print("OnSubStart4135905")
end

function Quest41359:OnSubFinish4135905(arg1)
    print("OnSubFinish4135905")
end

function Quest41359:OnSubFailed4135905(arg1)
    print("OnSubFailed4135905")
end

function Quest41359:OnSubStart4135910(arg1)
    print("OnSubStart4135910")
end

function Quest41359:OnSubFinish4135910(arg1)
    print("OnSubFinish4135910")
end

function Quest41359:OnSubFailed4135910(arg1)
    print("OnSubFailed4135910")
end

function Quest41359:OnSubStart4135906(arg1)
    print("OnSubStart4135906")
end

function Quest41359:OnSubFinish4135906(arg1)
    print("OnSubFinish4135906")
end

function Quest41359:OnSubFailed4135906(arg1)
    print("OnSubFailed4135906")
end

function Quest41359:OnSubStart4135907(arg1)
    print("OnSubStart4135907")
end

function Quest41359:OnSubFinish4135907(arg1)
    print("OnSubFinish4135907")
end

function Quest41359:OnSubFailed4135907(arg1)
    print("OnSubFailed4135907")
end

return Quest41359
