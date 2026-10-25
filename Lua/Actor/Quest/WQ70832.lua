require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70832 = class("Quest70832", QuestActorProxy)
Quest70832.defaultAlias = "Quest70832"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70832:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70832:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7083201"] = self.OnSubStart7083201,
        ["7083202"] = self.OnSubStart7083202,
        ["7083203"] = self.OnSubStart7083203
    }
end

function Quest70832:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7083201"] = self.OnSubFinish7083201,
        ["7083202"] = self.OnSubFinish7083202,
        ["7083203"] = self.OnSubFinish7083203
    }
end

function Quest70832:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7083202"] = self.OnSubFailed7083202, ["7083203"] = self.OnSubFailed7083203}
end

function Quest70832:Start()
    print("Start")
end

function Quest70832:OnDestroy()
    print("OnDestroy")
end

function Quest70832:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70832:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70832:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70832:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70832:OnSubStart7083201(arg1)
    print("OnSubStart7083201")
    this:LightNotifyTo(npcs.Npc1798.alias, 0, true)
end

function Quest70832:OnSubFinish7083201(arg1)
    print("OnSubFinish7083201")
    this:NotifyTo(npcs.Npc1798.alias, 1, true)
end

function Quest70832:OnSubStart7083202(arg1)
    print("OnSubStart7083202")
    this:NotifyTo(npcs.Npc1792.alias, 1, true)
end

function Quest70832:OnSubFinish7083202(arg1)
    print("OnSubFinish7083202")
    this:LightNotifyTo(npcs.Npc1792.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1798.alias, 0, true)
end

function Quest70832:OnSubFailed7083202(arg1)
    print("OnSubFailed7083202")
    this:RecycleAllRes()
    this:LightNotifyTo(npcs.Npc1792.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1798.alias, 0, true)
end

function Quest70832:OnSubStart7083203(arg1)
    print("OnSubStart7083203")
    actorUtils.FinishQuestWithParam({true}, {7083203})
end

function Quest70832:OnSubFinish7083203(arg1)
    print("OnSubFinish7083203")
end

function Quest70832:OnSubFailed7083203(arg1)
    print("OnSubFailed7083203")
    this:RecycleAllRes()
end

return Quest70832
