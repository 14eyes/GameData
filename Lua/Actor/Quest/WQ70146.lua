require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70146 = class("Quest70146", QuestActorProxy)
Quest70146.defaultAlias = "Quest70146"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70146:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70146:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7014601"] = self.OnSubStart7014601,
        ["7014602"] = self.OnSubStart7014602,
        ["7014603"] = self.OnSubStart7014603
    }
end

function Quest70146:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7014601"] = self.OnSubFinish7014601,
        ["7014602"] = self.OnSubFinish7014602,
        ["7014603"] = self.OnSubFinish7014603
    }
end

function Quest70146:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7014603"] = self.OnSubFailed7014603}
end

function Quest70146:Start()
    print("Start")
end

function Quest70146:OnDestroy()
    print("OnDestroy")
end

function Quest70146:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70146:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70146:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70146:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70146:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 101 then
    end
end

function Quest70146:OnSubStart7014601(arg1)
    print("OnSubStart7014601")
    this:CreateQuestNpc(arg1, npcs.Npc22825.id, 0, false, 0)
end

function Quest70146:OnSubFinish7014601(arg1)
    print("OnSubFinish7014601")
end

function Quest70146:OnSubStart7014602(arg1)
    print("OnSubStart7014602")
    this:CreateQuestNpc(arg1, npcs.Npc22825.id, 0, false, 0)
end

function Quest70146:OnSubFinish7014602(arg1)
    print("OnSubFinish7014602")
end

function Quest70146:OnSubStart7014603(arg1)
    print("OnSubStart7014603")
    this:CreateQuestNpc(arg1, npcs.Npc22825.id, 0, false, 0)
end

function Quest70146:OnSubFinish7014603(arg1)
    print("OnSubFinish7014603")
end

function Quest70146:OnSubFailed7014603(arg1)
    print("OnSubFailed7014603")
    this:RecycleAllRes()
end

return Quest70146
