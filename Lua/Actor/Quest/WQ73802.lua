require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73802 = class("Quest73802", QuestActorProxy)
Quest73802.defaultAlias = "Quest73802"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73802:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73802:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7380201"] = self.OnSubStart7380201}
end

function Quest73802:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7380201"] = self.OnSubFinish7380201}
end

function Quest73802:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73802:Start()
    print("Start")
end

function Quest73802:OnDestroy()
    print("OnDestroy")
end

function Quest73802:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73802:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73802:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4019Data.alias, 3)
end

function Quest73802:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73802:OnSubStart7380201(arg1)
    print("OnSubStart7380201")
    self:CreateQuestNpc(arg1, npcs.Npc4019Data.id, 1)
end

function Quest73802:OnSubFinish7380201(arg1)
    print("OnSubFinish7380201")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4019Data.alias)
end

return Quest73802
