require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75121 = class("Quest75121", QuestActorProxy)
Quest75121.defaultAlias = "Quest75121"
local clientData
local this
local mainID
local actorAlias

function Quest75121:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75121:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7512104"] = self.OnSubStart7512104,
        ["7512105"] = self.OnSubStart7512105,
        ["7512101"] = self.OnSubStart7512101,
        ["7512102"] = self.OnSubStart7512102,
        ["7512103"] = self.OnSubStart7512103,
        ["7512106"] = self.OnSubStart7512106,
        ["7512107"] = self.OnSubStart7512107,
        ["7512108"] = self.OnSubStart7512108,
        ["7512109"] = self.OnSubStart7512109
    }
end

function Quest75121:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7512104"] = self.OnSubFinish7512104,
        ["7512105"] = self.OnSubFinish7512105,
        ["7512101"] = self.OnSubFinish7512101,
        ["7512102"] = self.OnSubFinish7512102,
        ["7512103"] = self.OnSubFinish7512103,
        ["7512106"] = self.OnSubFinish7512106,
        ["7512107"] = self.OnSubFinish7512107,
        ["7512108"] = self.OnSubFinish7512108,
        ["7512109"] = self.OnSubFinish7512109
    }
end

function Quest75121:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75121:Start()
    print("Start")
end

function Quest75121:OnDestroy()
    print("OnDestroy")
end

function Quest75121:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75121:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75121:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75121:OnSubStart7512104(arg1)
    print("OnSubStart7512104")
    actorUtils.FinishQuestID(false, 7512104)
end

function Quest75121:OnSubFinish7512104(arg1)
    print("OnSubFinish7512104")
end

function Quest75121:OnSubStart7512105(arg1)
    print("OnSubStart7512105")
    actorUtils.FinishQuestID(false, 7512105)
end

function Quest75121:OnSubFinish7512105(arg1)
    print("OnSubFinish7512105")
end

function Quest75121:OnSubStart7512101(arg1)
    print("OnSubStart7512101")
end

function Quest75121:OnSubFinish7512101(arg1)
    print("OnSubFinish7512101")
end

function Quest75121:OnSubStart7512102(arg1)
    print("OnSubStart7512102")
end

function Quest75121:OnSubFinish7512102(arg1)
    print("OnSubFinish7512102")
end

function Quest75121:OnSubStart7512103(arg1)
    print("OnSubStart7512103")
end

function Quest75121:OnSubFinish7512103(arg1)
    print("OnSubFinish7512103")
end

function Quest75121:OnSubStart7512106(arg1)
    print("OnSubStart7512106")
end

function Quest75121:OnSubFinish7512106(arg1)
    print("OnSubFinish7512106")
end

function Quest75121:OnSubStart7512107(arg1)
    print("OnSubStart7512107")
end

function Quest75121:OnSubFinish7512107(arg1)
    print("OnSubFinish7512107")
end

function Quest75121:OnSubStart7512108(arg1)
    print("OnSubStart7512108")
end

function Quest75121:OnSubFinish7512108(arg1)
    print("OnSubFinish7512108")
end

function Quest75121:OnSubStart7512109(arg1)
    print("OnSubStart7512109")
    actorUtils.FinishQuestID(false, 7512109)
end

function Quest75121:OnSubFinish7512109(arg1)
    print("OnSubFinish7512109")
end

return Quest75121
