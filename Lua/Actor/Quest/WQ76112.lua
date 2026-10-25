require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76112 = class("Quest76112", QuestActorProxy)
Quest76112.defaultAlias = "Quest76112"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76112:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76112:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7611201"] = self.OnSubStart7611201}
end

function Quest76112:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7611201"] = self.OnSubFinish7611201}
end

function Quest76112:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76112:Start()
    print("Start")
end

function Quest76112:OnDestroy()
    print("OnDestroy")
end

function Quest76112:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76112:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76112:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76112:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76112:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76112:OnSubStart7611201(arg1)
    print("OnSubStart7611201")
    this:CreateQuestNpc(arg1, npcs.Npc7003.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7003.alias, 76112):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest76112:OnSubFinish7611201(arg1)
    print("OnSubFinish7611201")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc7003.alias)
end

return Quest76112
