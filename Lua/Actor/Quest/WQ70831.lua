require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70831 = class("Quest70831", QuestActorProxy)
Quest70831.defaultAlias = "Quest70831"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70831:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70831:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7083101"] = self.OnSubStart7083101,
        ["7083102"] = self.OnSubStart7083102,
        ["7083103"] = self.OnSubStart7083103
    }
end

function Quest70831:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7083101"] = self.OnSubFinish7083101,
        ["7083102"] = self.OnSubFinish7083102,
        ["7083103"] = self.OnSubFinish7083103
    }
end

function Quest70831:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7083102"] = self.OnSubFailed7083102, ["7083103"] = self.OnSubFailed7083103}
end

function Quest70831:Start()
    print("Start")
end

function Quest70831:OnDestroy()
    print("OnDestroy")
end

function Quest70831:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70831:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70831:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70831:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70831:OnSubStart7083101(arg1)
    print("OnSubStart7083101")
    this:LightNotifyTo(npcs.Npc1798.alias, 0, true)
end

function Quest70831:OnSubFinish7083101(arg1)
    print("OnSubFinish7083101")
    this:NotifyTo(npcs.Npc1798.alias, 1, true)
end

function Quest70831:OnSubStart7083102(arg1)
    print("OnSubStart7083102")
    this:NotifyTo(npcs.Npc1792.alias, 1, true)
end

function Quest70831:OnSubFinish7083102(arg1)
    print("OnSubFinish7083102")
    this:LightNotifyTo(npcs.Npc1792.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1798.alias, 0, true)
end

function Quest70831:OnSubFailed7083102(arg1)
    print("OnSubFailed7083102")
    this:RecycleAllRes()
    this:LightNotifyTo(npcs.Npc1792.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1798.alias, 0, true)
end

function Quest70831:OnSubStart7083103(arg1)
    print("OnSubStart7083103")
    actorUtils.FinishQuestWithParam({false}, {7083103})
end

function Quest70831:OnSubFinish7083103(arg1)
    print("OnSubFinish7083103")
end

function Quest70831:OnSubFailed7083103(arg1)
    print("OnSubFailed7083103")
    this:RecycleAllRes()
end

return Quest70831
