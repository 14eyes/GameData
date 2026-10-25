require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73301 = class("Quest73301", QuestActorProxy)
Quest73301.defaultAlias = "Quest73301"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73301:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73301:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7330101"] = self.OnSubStart7330101, ["7330102"] = self.OnSubStart7330102}
end

function Quest73301:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7330101"] = self.OnSubFinish7330101, ["7330102"] = self.OnSubFinish7330102}
end

function Quest73301:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73301:Start()
    print("Start")
end

function Quest73301:OnDestroy()
    print("OnDestroy")
end

function Quest73301:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73301:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73301:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73301:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73301:OnSubStart7330101(arg1)
    print("OnSubStart7330101")
end

function Quest73301:OnSubFinish7330101(arg1)
    print("OnSubFinish7330101")
end

function Quest73301:OnSubStart7330102(arg1)
    print("OnSubStart7330102")
end

function Quest73301:OnSubFinish7330102(arg1)
    print("OnSubFinish7330102")
    self:CreateQuestNpc(arg1, npcs.Npc20643Data.id, 1)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20643Data.alias)
end

return Quest73301
