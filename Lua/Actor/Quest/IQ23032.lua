require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23032 = class("Quest23032", QuestActorProxy)
Quest23032.defaultAlias = "Quest23032"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23032:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23032:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2303201"] = self.OnSubStart2303201,
        ["2303202"] = self.OnSubStart2303202,
        ["2303218"] = self.OnSubStart2303218,
        ["2303203"] = self.OnSubStart2303203,
        ["2303204"] = self.OnSubStart2303204,
        ["2303205"] = self.OnSubStart2303205,
        ["2303206"] = self.OnSubStart2303206,
        ["2303207"] = self.OnSubStart2303207,
        ["2303216"] = self.OnSubStart2303216,
        ["2303211"] = self.OnSubStart2303211,
        ["2303208"] = self.OnSubStart2303208,
        ["2303209"] = self.OnSubStart2303209,
        ["2303217"] = self.OnSubStart2303217,
        ["2303212"] = self.OnSubStart2303212,
        ["2303210"] = self.OnSubStart2303210,
        ["2303213"] = self.OnSubStart2303213,
        ["2303214"] = self.OnSubStart2303214,
        ["2303215"] = self.OnSubStart2303215
    }
end

function Quest23032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2303201"] = self.OnSubFinish2303201,
        ["2303202"] = self.OnSubFinish2303202,
        ["2303218"] = self.OnSubFinish2303218,
        ["2303203"] = self.OnSubFinish2303203,
        ["2303204"] = self.OnSubFinish2303204,
        ["2303205"] = self.OnSubFinish2303205,
        ["2303206"] = self.OnSubFinish2303206,
        ["2303207"] = self.OnSubFinish2303207,
        ["2303216"] = self.OnSubFinish2303216,
        ["2303211"] = self.OnSubFinish2303211,
        ["2303208"] = self.OnSubFinish2303208,
        ["2303209"] = self.OnSubFinish2303209,
        ["2303217"] = self.OnSubFinish2303217,
        ["2303212"] = self.OnSubFinish2303212,
        ["2303210"] = self.OnSubFinish2303210,
        ["2303213"] = self.OnSubFinish2303213,
        ["2303214"] = self.OnSubFinish2303214,
        ["2303215"] = self.OnSubFinish2303215
    }
end

function Quest23032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["2303203"] = self.OnSubFailed2303203}
end

function Quest23032:Start()
    print("Start")
end

function Quest23032:OnDestroy()
    print("OnDestroy")
end

function Quest23032:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23032:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1517Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4052Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4030Data.alias, 1072)
    self:SafeDestroyQuestNpc(npcs.Npc4055Data.alias, 3)
    actorMgr:DestroyEntityActor("Q2303203Trigger", 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc12763Data.alias, 3)
end

function Quest23032:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23032:OnSubStart2303201(arg1)
    print("OnSubStart2303201")
    self:CreateQuestNpc(arg1, npcs.Npc1517Data.id, 1)
end

function Quest23032:OnSubFinish2303201(arg1)
    print("OnSubFinish2303201")
end

function Quest23032:OnSubStart2303202(arg1)
    print("OnSubStart2303202")
    self:CreateQuestNpc(arg1, npcs.Npc4052Data.id, 1)
end

function Quest23032:OnSubFinish2303202(arg1)
    print("OnSubFinish2303202")
end

function Quest23032:OnSubStart2303218(arg1)
    print("OnSubStart2303218")
end

function Quest23032:OnSubFinish2303218(arg1)
    print("OnSubFinish2303218")
end

function Quest23032:OnSubStart2303203(arg1)
    print("OnSubStart2303203")
    actorMgr:CreateActorWithPos("Q2303203Trigger", "Actor/Gadget/Q2303203Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2303203_GUIDE").pos, sceneData:GetDummyPoint(3, "Q2303203_GUIDE").rot, true, false, 3)
end

function Quest23032:OnSubFinish2303203(arg1)
    print("OnSubFinish2303203")
end

function Quest23032:OnSubFailed2303203(arg1)
    print("OnSubFailed2303203")
    actorMgr:DestroyEntityActor("Q2303203Trigger", 3, false)
end

function Quest23032:OnSubStart2303204(arg1)
    print("OnSubStart2303204")
end

function Quest23032:OnSubFinish2303204(arg1)
    print("OnSubFinish2303204")
    self:NarratorOnlyTaskByData(datas.NarratorWithId04)
end

function Quest23032:OnSubStart2303205(arg1)
    print("OnSubStart2303205")
end

function Quest23032:OnSubFinish2303205(arg1)
    print("OnSubFinish2303205")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4052Data.alias)
end

function Quest23032:OnSubStart2303206(arg1)
    print("OnSubStart2303206")
end

function Quest23032:OnSubFinish2303206(arg1)
    print("OnSubFinish2303206")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1517Data.alias)
end

function Quest23032:OnSubStart2303207(arg1)
    print("OnSubStart2303207")
    self:CreateQuestNpc(arg1, npcs.Npc4030Data.id, 1)
end

function Quest23032:OnSubFinish2303207(arg1)
    print("OnSubFinish2303207")
end

function Quest23032:OnSubStart2303216(arg1)
    print("OnSubStart2303216")
end

function Quest23032:OnSubFinish2303216(arg1)
    print("OnSubFinish2303216")
end

function Quest23032:OnSubStart2303211(arg1)
    print("OnSubStart2303211")
end

function Quest23032:OnSubFinish2303211(arg1)
    print("OnSubFinish2303211")
    self:NpcDestroyWithBlackscreen(1072, npcs.Npc4030Data.alias)
end

function Quest23032:OnSubStart2303208(arg1)
    print("OnSubStart2303208")
end

function Quest23032:OnSubFinish2303208(arg1)
    print("OnSubFinish2303208")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1517Data.alias)
end

function Quest23032:OnSubStart2303209(arg1)
    print("OnSubStart2303209")
    self:CreateQuestNpc(arg1, npcs.Npc4055Data.id, 1)
end

function Quest23032:OnSubFinish2303209(arg1)
    print("OnSubFinish2303209")
end

function Quest23032:OnSubStart2303217(arg1)
    print("OnSubStart2303217")
end

function Quest23032:OnSubFinish2303217(arg1)
    print("OnSubFinish2303217")
end

function Quest23032:OnSubStart2303212(arg1)
    print("OnSubStart2303212")
end

function Quest23032:OnSubFinish2303212(arg1)
    print("OnSubFinish2303212")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4055Data.alias)
end

function Quest23032:OnSubStart2303210(arg1)
    print("OnSubStart2303210")
end

function Quest23032:OnSubFinish2303210(arg1)
    print("OnSubFinish2303210")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1517Data.alias)
end

function Quest23032:OnSubStart2303213(arg1)
    print("OnSubStart2303213")
    self:CreateQuestNpc(arg1, npcs.Npc1517Data.id, 1)
end

function Quest23032:OnSubFinish2303213(arg1)
    print("OnSubFinish2303213")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1517Data.alias)
end

function Quest23032:OnSubStart2303214(arg1)
    print("OnSubStart2303214")
    self:CreateQuestNpc(arg1, npcs.Npc1517Data.id, 1)
end

function Quest23032:OnSubFinish2303214(arg1)
    print("OnSubFinish2303214")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1517Data.alias)
end

function Quest23032:OnSubStart2303215(arg1)
    print("OnSubStart2303215")
    self:CreateQuestNpc(arg1, npcs.Npc1517Data.id, 1)
end

function Quest23032:OnSubFinish2303215(arg1)
    print("OnSubFinish2303215")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1517Data.alias)
end

return Quest23032
