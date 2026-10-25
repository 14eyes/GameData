require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74686 = class("Quest74686", QuestActorProxy)
Quest74686.defaultAlias = "Quest74686"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74686:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74686:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7468601"] = self.OnSubStart7468601}
end

function Quest74686:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7468601"] = self.OnSubFinish7468601}
end

function Quest74686:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74686:Start()
    print("Start")
end

function Quest74686:OnDestroy()
    print("OnDestroy")
end

function Quest74686:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74686:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74686:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30771Data.alias, 3)
end

function Quest74686:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74686:OnSubStart7468601(arg1)
    print("OnSubStart7468601")
    this:CreateQuestNpc(arg1, npcs.Npc30771Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30771Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest74686:OnSubFinish7468601(arg1)
    print("OnSubFinish7468601")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30771Data.alias)
end

return Quest74686
