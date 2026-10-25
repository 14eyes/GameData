require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75262 = class("Quest75262", QuestActorProxy)
Quest75262.defaultAlias = "Quest75262"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75262:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75262:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7526202"] = self.OnSubStart7526202,
        ["7526203"] = self.OnSubStart7526203,
        ["7526204"] = self.OnSubStart7526204,
        ["7526201"] = self.OnSubStart7526201
    }
end

function Quest75262:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7526202"] = self.OnSubFinish7526202,
        ["7526203"] = self.OnSubFinish7526203,
        ["7526204"] = self.OnSubFinish7526204,
        ["7526201"] = self.OnSubFinish7526201
    }
end

function Quest75262:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75262:Start()
    print("Start")
end

function Quest75262:OnDestroy()
    print("OnDestroy")
end

function Quest75262:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75262:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75262:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75262:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75262:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest75262:OnSubStart7526202(arg1)
    print("OnSubStart7526202")
    this:CreateQuestNpc(arg1, npcs.Npc21997.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21997.alias, 75262):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest75262:OnSubFinish7526202(arg1)
    print("OnSubFinish7526202")
end

function Quest75262:OnSubStart7526203(arg1)
    print("OnSubStart7526203")
end

function Quest75262:OnSubFinish7526203(arg1)
    print("OnSubFinish7526203")
end

function Quest75262:OnSubStart7526204(arg1)
    print("OnSubStart7526204")
end

function Quest75262:OnSubFinish7526204(arg1)
    print("OnSubFinish7526204")
    this:NpcDestroyImmediately(3, npcs.Npc21997.alias)
end

function Quest75262:OnSubStart7526201(arg1)
    print("OnSubStart7526201")
end

function Quest75262:OnSubFinish7526201(arg1)
    print("OnSubFinish7526201")
end

return Quest75262
