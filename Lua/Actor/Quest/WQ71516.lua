require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71516 = class("Quest71516", QuestActorProxy)
Quest71516.defaultAlias = "Quest71516"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71516:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71516:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7151601"] = self.OnSubStart7151601}
end

function Quest71516:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7151601"] = self.OnSubFinish7151601}
end

function Quest71516:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71516:Start()
    print("Start")
end

function Quest71516:OnDestroy()
    print("OnDestroy")
end

function Quest71516:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71516:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71516:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30306Data.alias, 3)
    this:ClearNarratorTask()
end

function Quest71516:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71516:OnSubStart7151601(arg1)
    print("OnSubStart7151601")
    this:CreateQuestNpc(arg1, npcs.Npc30306Data.id, 1)
end

function Quest71516:OnSubFinish7151601(arg1)
    print("OnSubFinish7151601")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30306Data.alias)
end

return Quest71516
