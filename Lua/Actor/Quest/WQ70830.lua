require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70830 = class("Quest70830", QuestActorProxy)
Quest70830.defaultAlias = "Quest70830"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70830:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70830:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7083001"] = self.OnSubStart7083001,
        ["7083002"] = self.OnSubStart7083002,
        ["7083003"] = self.OnSubStart7083003
    }
end

function Quest70830:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7083001"] = self.OnSubFinish7083001,
        ["7083002"] = self.OnSubFinish7083002,
        ["7083003"] = self.OnSubFinish7083003
    }
end

function Quest70830:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7083002"] = self.OnSubFailed7083002, ["7083003"] = self.OnSubFailed7083003}
end

function Quest70830:Start()
    print("Start")
end

function Quest70830:OnDestroy()
    print("OnDestroy")
end

function Quest70830:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70830:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70830:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70830:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70830:OnSubStart7083001(arg1)
    print("OnSubStart7083001")
    this:LightNotifyTo(npcs.Npc1798.alias, 0, true)
end

function Quest70830:OnSubFinish7083001(arg1)
    print("OnSubFinish7083001")
    this:NotifyTo(npcs.Npc1798.alias, 1, true)
end

function Quest70830:OnSubStart7083002(arg1)
    print("OnSubStart7083002")
    this:NotifyTo(npcs.Npc1792.alias, 1, true)
end

function Quest70830:OnSubFinish7083002(arg1)
    print("OnSubFinish7083002")
    this:LightNotifyTo(npcs.Npc1792.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1798.alias, 0, true)
end

function Quest70830:OnSubFailed7083002(arg1)
    print("OnSubFailed7083002")
    this:RecycleAllRes()
    this:LightNotifyTo(npcs.Npc1792.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1798.alias, 0, true)
end

function Quest70830:OnSubStart7083003(arg1)
    print("OnSubStart7083003")
    actorUtils.FinishQuestWithParam({false}, {7083003})
end

function Quest70830:OnSubFinish7083003(arg1)
    print("OnSubFinish7083003")
end

function Quest70830:OnSubFailed7083003(arg1)
    print("OnSubFailed7083003")
    this:RecycleAllRes()
end

return Quest70830
