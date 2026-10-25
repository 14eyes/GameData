require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74092 = class("Quest74092", QuestActorProxy)
Quest74092.defaultAlias = "Quest74092"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74092:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74092:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7409201"] = self.OnSubStart7409201, ["7409202"] = self.OnSubStart7409202}
end

function Quest74092:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7409201"] = self.OnSubFinish7409201, ["7409202"] = self.OnSubFinish7409202}
end

function Quest74092:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74092:Start()
    print("Start")
end

function Quest74092:OnDestroy()
    print("OnDestroy")
end

function Quest74092:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74092:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74092:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74092:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74092:OnSubStart7409201(arg1)
    print("OnSubStart7409201")
    this:CreateQuestNpc(arg1, npcs.Npc5259Data.id, 0)
end

function Quest74092:OnSubFinish7409201(arg1)
    print("OnSubFinish7409201")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5259Data.alias)
end

function Quest74092:OnSubStart7409202(arg1)
    print("OnSubStart7409202")
    this:CreateQuestNpc(arg1, npcs.Npc5259Data.id, 0)
end

function Quest74092:OnSubFinish7409202(arg1)
    print("OnSubFinish7409202")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5259Data.alias)
end

return Quest74092
