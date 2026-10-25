require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23010 = class("Quest23010", QuestActorProxy)
Quest23010.defaultAlias = "Quest23010"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest23010:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest23010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2301004"] = self.OnSubStart2301004,
        ["2301001"] = self.OnSubStart2301001,
        ["2301002"] = self.OnSubStart2301002,
        ["2301003"] = self.OnSubStart2301003,
        ["2301005"] = self.OnSubStart2301005,
        ["2301006"] = self.OnSubStart2301006,
        ["2301007"] = self.OnSubStart2301007,
        ["2301008"] = self.OnSubStart2301008,
        ["2301009"] = self.OnSubStart2301009,
        ["2301010"] = self.OnSubStart2301010
    }
end

function Quest23010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2301004"] = self.OnSubFinish2301004,
        ["2301001"] = self.OnSubFinish2301001,
        ["2301002"] = self.OnSubFinish2301002,
        ["2301003"] = self.OnSubFinish2301003,
        ["2301005"] = self.OnSubFinish2301005,
        ["2301006"] = self.OnSubFinish2301006,
        ["2301007"] = self.OnSubFinish2301007,
        ["2301008"] = self.OnSubFinish2301008,
        ["2301009"] = self.OnSubFinish2301009,
        ["2301010"] = self.OnSubFinish2301010
    }
end

function Quest23010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23010:Start()
    print("Start")
end

function Quest23010:OnDestroy()
    print("OnDestroy")
end

function Quest23010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23010:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4027Data.alias, 1072)
end

function Quest23010:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23010:OnSubStart2301004(arg1)
    print("OnSubStart2301004")
end

function Quest23010:OnSubFinish2301004(arg1)
    print("OnSubFinish2301004")
end

function Quest23010:OnSubStart2301001(arg1)
    print("OnSubStart2301001")
    self:CreateQuestNpc(arg1, npcs.Npc4027Data.id, 1)
end

function Quest23010:OnSubFinish2301001(arg1)
    print("OnSubFinish2301001")
end

function Quest23010:OnSubStart2301002(arg1)
    print("OnSubStart2301002")
end

function Quest23010:OnSubFinish2301002(arg1)
    print("OnSubFinish2301002")
end

function Quest23010:OnSubStart2301003(arg1)
    print("OnSubStart2301003")
end

function Quest23010:OnSubFinish2301003(arg1)
    print("OnSubFinish2301003")
    self:NpcDestroyWithBlackscreen(1072, npcs.Npc4027Data.alias)
end

function Quest23010:OnSubStart2301005(arg1)
    print("OnSubStart2301005")
    self:CreateQuestNpc(arg1, npcs.Npc4027Data.id, 1)
end

function Quest23010:OnSubFinish2301005(arg1)
    print("OnSubFinish2301005")
end

function Quest23010:OnSubStart2301006(arg1)
    print("OnSubStart2301006")
end

function Quest23010:OnSubFinish2301006(arg1)
    print("OnSubFinish2301006")
end

function Quest23010:OnSubStart2301007(arg1)
    print("OnSubStart2301007")
end

function Quest23010:OnSubFinish2301007(arg1)
    print("OnSubFinish2301007")
    self:NpcDestroyWithBlackscreen(1072, npcs.Npc4027Data.alias)
end

function Quest23010:OnSubStart2301008(arg1)
    print("OnSubStart2301008")
    self:CreateQuestNpc(arg1, npcs.Npc4027Data.id, 1)
end

function Quest23010:OnSubFinish2301008(arg1)
    print("OnSubFinish2301008")
end

function Quest23010:OnSubStart2301009(arg1)
    print("OnSubStart2301009")
end

function Quest23010:OnSubFinish2301009(arg1)
    print("OnSubFinish2301009")
end

function Quest23010:OnSubStart2301010(arg1)
    print("OnSubStart2301010")
end

function Quest23010:OnSubFinish2301010(arg1)
    print("OnSubFinish2301010")
    self:NpcDestroyWithBlackscreen(1072, npcs.Npc4027Data.alias)
end

return Quest23010
