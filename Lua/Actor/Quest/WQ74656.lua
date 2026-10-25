require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74656 = class("Quest74656", QuestActorProxy)
Quest74656.defaultAlias = "Quest74656"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74656:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74656:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7465601"] = self.OnSubStart7465601, ["7465602"] = self.OnSubStart7465602}
end

function Quest74656:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7465601"] = self.OnSubFinish7465601, ["7465602"] = self.OnSubFinish7465602}
end

function Quest74656:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74656:Start()
    print("Start")
end

function Quest74656:OnDestroy()
    print("OnDestroy")
end

function Quest74656:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74656:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74656:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc5020Data.alias, 3)
end

function Quest74656:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74656:OnSubStart7465601(arg1)
    print("OnSubStart7465601")
    this:CreateQuestNpc(arg1, npcs.Npc5020Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5020Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest74656:OnSubFinish7465601(arg1)
    print("OnSubFinish7465601")
end

function Quest74656:OnSubStart7465602(arg1)
    print("OnSubStart7465602")
end

function Quest74656:OnSubFinish7465602(arg1)
    print("OnSubFinish7465602")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5020Data.alias)
end

return Quest74656
