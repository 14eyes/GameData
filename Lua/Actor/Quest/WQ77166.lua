require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77166 = class("Quest77166", QuestActorProxy)
Quest77166.defaultAlias = "Quest77166"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77166:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77166:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7716601"] = self.OnSubStart7716601,
        ["7716602"] = self.OnSubStart7716602,
        ["7716603"] = self.OnSubStart7716603
    }
end

function Quest77166:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7716601"] = self.OnSubFinish7716601,
        ["7716602"] = self.OnSubFinish7716602,
        ["7716603"] = self.OnSubFinish7716603
    }
end

function Quest77166:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7716602"] = self.OnSubFailed7716602, ["7716603"] = self.OnSubFailed7716603}
end

function Quest77166:Start()
    print("Start")
end

function Quest77166:OnDestroy()
    print("OnDestroy")
end

function Quest77166:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77166:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77166:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77166:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77166:OnSubStart7716601(arg1)
    print("OnSubStart7716601")
end

function Quest77166:OnSubFinish7716601(arg1)
    print("OnSubFinish7716601")
end

function Quest77166:OnSubStart7716602(arg1)
    print("OnSubStart7716602")
    this:RequestInteractionForceAlias(npcs.Npc7590.alias, "", true)
end

function Quest77166:OnSubFinish7716602(arg1)
    print("OnSubFinish7716602")
end

function Quest77166:OnSubFailed7716602(arg1)
    print("OnSubFailed7716602")
    this:RecycleAllRes()
end

function Quest77166:OnSubStart7716603(arg1)
    print("OnSubStart7716603")
    actorUtils.FinishQuestWithParam({true}, {7716603})
end

function Quest77166:OnSubFinish7716603(arg1)
    print("OnSubFinish7716603")
end

function Quest77166:OnSubFailed7716603(arg1)
    print("OnSubFailed7716603")
    this:RecycleAllRes()
end

return Quest77166
