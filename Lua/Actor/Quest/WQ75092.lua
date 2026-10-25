require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75092 = class("Quest75092", QuestActorProxy)
Quest75092.defaultAlias = "Quest75092"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75092:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75092:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7509201"] = self.OnSubStart7509201,
        ["7509202"] = self.OnSubStart7509202,
        ["7509203"] = self.OnSubStart7509203
    }
end

function Quest75092:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7509201"] = self.OnSubFinish7509201,
        ["7509202"] = self.OnSubFinish7509202,
        ["7509203"] = self.OnSubFinish7509203
    }
end

function Quest75092:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7509201"] = self.OnSubFailed7509201,
        ["7509202"] = self.OnSubFailed7509202,
        ["7509203"] = self.OnSubFailed7509203
    }
end

function Quest75092:Start()
    print("Start")
end

function Quest75092:OnDestroy()
    print("OnDestroy")
end

function Quest75092:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75092:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75092:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75092:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end, nil, nil, "", false, true)
end

function Quest75092:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end, nil, nil, "", false, true)
end

function Quest75092:OnSubStart7509201(arg1)
    print("OnSubStart7509201")
end

function Quest75092:OnSubFinish7509201(arg1)
    print("OnSubFinish7509201")
end

function Quest75092:OnSubFailed7509201(arg1)
    print("OnSubFailed7509201")
end

function Quest75092:OnSubStart7509202(arg1)
    print("OnSubStart7509202")
end

function Quest75092:OnSubFinish7509202(arg1)
    print("OnSubFinish7509202")
end

function Quest75092:OnSubFailed7509202(arg1)
    print("OnSubFailed7509202")
end

function Quest75092:OnSubStart7509203(arg1)
    print("OnSubStart7509203")
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc21460.id, 0)
end

function Quest75092:OnSubFinish7509203(arg1)
    print("OnSubFinish7509203")
    this:NpcDestroyWithBlackscreen(npcs.Npc21460.alias, 3)
end

function Quest75092:OnSubFailed7509203(arg1)
    print("OnSubFailed7509203")
end

return Quest75092
