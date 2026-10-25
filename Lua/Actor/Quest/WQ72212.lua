require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72212 = class("Quest72212", QuestActorProxy)
Quest72212.defaultAlias = "Quest72212"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72212:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72212:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7221201"] = self.OnSubStart7221201,
        ["7221202"] = self.OnSubStart7221202,
        ["7221203"] = self.OnSubStart7221203,
        ["7221204"] = self.OnSubStart7221204,
        ["7221205"] = self.OnSubStart7221205
    }
end

function Quest72212:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7221201"] = self.OnSubFinish7221201,
        ["7221202"] = self.OnSubFinish7221202,
        ["7221203"] = self.OnSubFinish7221203,
        ["7221204"] = self.OnSubFinish7221204,
        ["7221205"] = self.OnSubFinish7221205
    }
end

function Quest72212:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7221201"] = self.OnSubFailed7221201,
        ["7221202"] = self.OnSubFailed7221202,
        ["7221203"] = self.OnSubFailed7221203,
        ["7221204"] = self.OnSubFailed7221204,
        ["7221205"] = self.OnSubFailed7221205
    }
end

function Quest72212:Start()
    print("Start")
end

function Quest72212:OnDestroy()
    print("OnDestroy")
end

function Quest72212:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72212:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72212:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72212:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72212:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72212:OnSubStart7221201(arg1)
    print("OnSubStart7221201")
    self:CreateQuestNpc(arg1, npcs.Npc3180Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3181Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20455Data.id, 3)
end

function Quest72212:OnSubFinish7221201(arg1)
    print("OnSubFinish7221201")
end

function Quest72212:OnSubFailed7221201(arg1)
    print("OnSubFailed7221201")
end

function Quest72212:OnSubStart7221202(arg1)
    print("OnSubStart7221202")
end

function Quest72212:OnSubFinish7221202(arg1)
    print("OnSubFinish7221202")
end

function Quest72212:OnSubFailed7221202(arg1)
    print("OnSubFailed7221202")
end

function Quest72212:OnSubStart7221203(arg1)
    print("OnSubStart7221203")
    actorMgr:CreateActorWithPos("Q7221203Trigger", "Actor/Gadget/Q7221203Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72212_Dadao01").pos, sceneData:GetDummyPoint(3, "WQ72212_Dadao01").rot, true, false, 3)
end

function Quest72212:OnSubFinish7221203(arg1)
    print("OnSubFinish7221203")
    self:NarratorOnlyTask(datas.pm01, nil, "")
end

function Quest72212:OnSubFailed7221203(arg1)
    print("OnSubFailed7221203")
end

function Quest72212:OnSubStart7221204(arg1)
    print("OnSubStart7221204")
end

function Quest72212:OnSubFinish7221204(arg1)
    print("OnSubFinish7221204")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20455Data.alias)
end

function Quest72212:OnSubFailed7221204(arg1)
    print("OnSubFailed7221204")
end

function Quest72212:OnSubStart7221205(arg1)
    print("OnSubStart7221205")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3182Data.id, 1)
end

function Quest72212:OnSubFinish7221205(arg1)
    print("OnSubFinish7221205")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3180Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3181Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3182Data.alias)
end

function Quest72212:OnSubFailed7221205(arg1)
    print("OnSubFailed7221205")
end

return Quest72212
