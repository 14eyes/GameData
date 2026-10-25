require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73043 = class("Quest73043", QuestActorProxy)
Quest73043.defaultAlias = "Quest73043"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73043:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73043:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7304302"] = self.OnSubStart7304302, ["7304301"] = self.OnSubStart7304301}
end

function Quest73043:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7304302"] = self.OnSubFinish7304302, ["7304301"] = self.OnSubFinish7304301}
end

function Quest73043:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73043:Start()
    print("Start")
end

function Quest73043:OnDestroy()
    print("OnDestroy")
end

function Quest73043:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73043:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73043:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73043:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73043:OnSubStart7304302(arg1)
    print("OnSubStart7304302")
end

function Quest73043:OnSubFinish7304302(arg1)
    print("OnSubFinish7304302")
end

function Quest73043:OnSubStart7304301(arg1)
    print("OnSubStart7304301")
    self:CreateQuestNpc(arg1, npcs.Npc20744Data.id, 1)
end

function Quest73043:OnSubFinish7304301(arg1)
    print("OnSubFinish7304301")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20744Data.alias)
end

return Quest73043
