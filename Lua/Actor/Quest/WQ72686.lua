require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72686 = class("Quest72686", QuestActorProxy)
Quest72686.defaultAlias = "Quest72686"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72686:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72686:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7268601"] = self.OnSubStart7268601}
end

function Quest72686:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7268601"] = self.OnSubFinish7268601}
end

function Quest72686:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72686:Start()
    print("Start")
end

function Quest72686:OnDestroy()
    print("OnDestroy")
end

function Quest72686:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72686:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72686:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30167Data.alias, 3)
end

function Quest72686:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72686:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72686:OnSubStart7268601(arg1)
    print("OnSubStart7268601")
    self:NpcCreate(arg1, npcs.Npc30167Data.id, 1)
end

function Quest72686:OnSubFinish7268601(arg1)
    print("OnSubFinish7268601")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc30167Data.alias)
    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(856)
    end)
end

return Quest72686
