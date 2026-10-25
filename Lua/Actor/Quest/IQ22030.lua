require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22030 = class("Quest22030", QuestActorProxy)
Quest22030.defaultAlias = "Quest22030"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest22030:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest22030:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2203001"] = self.OnSubStart2203001,
        ["2203002"] = self.OnSubStart2203002,
        ["2203003"] = self.OnSubStart2203003,
        ["2203004"] = self.OnSubStart2203004,
        ["2203005"] = self.OnSubStart2203005,
        ["2203006"] = self.OnSubStart2203006,
        ["2203007"] = self.OnSubStart2203007,
        ["2203008"] = self.OnSubStart2203008,
        ["2203009"] = self.OnSubStart2203009,
        ["2203010"] = self.OnSubStart2203010,
        ["2203013"] = self.OnSubStart2203013,
        ["2203011"] = self.OnSubStart2203011,
        ["2203012"] = self.OnSubStart2203012
    }
end

function Quest22030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2203001"] = self.OnSubFinish2203001,
        ["2203002"] = self.OnSubFinish2203002,
        ["2203003"] = self.OnSubFinish2203003,
        ["2203004"] = self.OnSubFinish2203004,
        ["2203005"] = self.OnSubFinish2203005,
        ["2203006"] = self.OnSubFinish2203006,
        ["2203007"] = self.OnSubFinish2203007,
        ["2203008"] = self.OnSubFinish2203008,
        ["2203009"] = self.OnSubFinish2203009,
        ["2203010"] = self.OnSubFinish2203010,
        ["2203013"] = self.OnSubFinish2203013,
        ["2203011"] = self.OnSubFinish2203011,
        ["2203012"] = self.OnSubFinish2203012
    }
end

function Quest22030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2203001"] = self.OnSubFailed2203001,
        ["2203002"] = self.OnSubFailed2203002,
        ["2203003"] = self.OnSubFailed2203003,
        ["2203004"] = self.OnSubFailed2203004,
        ["2203005"] = self.OnSubFailed2203005,
        ["2203006"] = self.OnSubFailed2203006,
        ["2203007"] = self.OnSubFailed2203007,
        ["2203008"] = self.OnSubFailed2203008,
        ["2203009"] = self.OnSubFailed2203009,
        ["2203010"] = self.OnSubFailed2203010,
        ["2203013"] = self.OnSubFailed2203013,
        ["2203011"] = self.OnSubFailed2203011,
        ["2203012"] = self.OnSubFailed2203012
    }
end

function Quest22030:Start()
    print("Start")
end

function Quest22030:OnDestroy()
    print("OnDestroy")
end

function Quest22030:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22030:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22030:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc20271Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70210101Data.alias)
    actorMgr:DestroyEntityActor("Q22030Trigger", 3, false)
end

function Quest22030:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest22030:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22030:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest22030:DelayCreateWithBlackScreen() end

function Quest22030:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:ShowBlackScreen(0.4, 3, 0.4, nil, nil, nil, "QUEST_Message_Q2203001")
    elseif arg1 == 2 then
    end
end

function Quest22030:OnSubStart2203001(arg1)
    print("OnSubStart2203001")
    self:CreateQuestNpc(arg1, npcs.Npc20271Data.id, 1)
end

function Quest22030:OnSubFinish2203001(arg1)
    print("OnSubFinish2203001")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20271Data.alias)
end

function Quest22030:OnSubFailed2203001(arg1)
    print("OnSubFailed2203001")
end

function Quest22030:OnSubStart2203002(arg1)
    print("OnSubStart2203002")
    actorMgr:CreateActorWithPos("Q22030Trigger", "Actor/Gadget/Q22030Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q22030_01").pos, sceneData:GetDummyPoint(3, "Q22030_01").rot, true, false, 3)
end

function Quest22030:OnSubFinish2203002(arg1)
    print("OnSubFinish2203002")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20271Data.id, 1, npcs.Npc20271Data.alias)
end

function Quest22030:OnSubFailed2203002(arg1)
    print("OnSubFailed2203002")
end

function Quest22030:OnSubStart2203003(arg1)
    print("OnSubStart2203003")
end

function Quest22030:OnSubFinish2203003(arg1)
    print("OnSubFinish2203003")
end

function Quest22030:OnSubFailed2203003(arg1)
    print("OnSubFailed2203003")
end

function Quest22030:OnSubStart2203004(arg1)
    print("OnSubStart2203004")
end

function Quest22030:OnSubFinish2203004(arg1)
    print("OnSubFinish2203004")
end

function Quest22030:OnSubFailed2203004(arg1)
    print("OnSubFailed2203004")
end

function Quest22030:OnSubStart2203005(arg1)
    print("OnSubStart2203005")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20271Data.id, 1)
end

function Quest22030:OnSubFinish2203005(arg1)
    print("OnSubFinish2203005")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest22030:OnSubFailed2203005(arg1)
    print("OnSubFailed2203005")
end

function Quest22030:OnSubStart2203006(arg1)
    print("OnSubStart2203006")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20271Data.id, 1)
end

function Quest22030:OnSubFinish2203006(arg1)
    print("OnSubFinish2203006")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest22030:OnSubFailed2203006(arg1)
    print("OnSubFailed2203006")
end

function Quest22030:OnSubStart2203007(arg1)
    print("OnSubStart2203007")
    self:UnSpawn(gadgets.Gadget70210101Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70210101Data.id, 1, 0)
end

function Quest22030:OnSubFinish2203007(arg1)
    print("OnSubFinish2203007")
    self:UnSpawn(gadgets.Gadget70210101Data.alias)
    self:NarratorOnlyTask(datas.NarratorTable1, nil, "")
end

function Quest22030:OnSubFailed2203007(arg1)
    print("OnSubFailed2203007")
end

function Quest22030:OnSubStart2203008(arg1)
    print("OnSubStart2203008")
    self:UnSpawn(gadgets.Gadget70210101Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70210101Data.id, 1, 0)
end

function Quest22030:OnSubFinish2203008(arg1)
    print("OnSubFinish2203008")
    self:UnSpawn(gadgets.Gadget70210101Data.alias)
    self:NarratorOnlyTask(datas.NarratorTable1, nil, "")
end

function Quest22030:OnSubFailed2203008(arg1)
    print("OnSubFailed2203008")
end

function Quest22030:OnSubStart2203009(arg1)
    print("OnSubStart2203009")
end

function Quest22030:OnSubFinish2203009(arg1)
    print("OnSubFinish2203009")
end

function Quest22030:OnSubFailed2203009(arg1)
    print("OnSubFailed2203009")
end

function Quest22030:OnSubStart2203010(arg1)
    print("OnSubStart2203010")
end

function Quest22030:OnSubFinish2203010(arg1)
    print("OnSubFinish2203010")
end

function Quest22030:OnSubFailed2203010(arg1)
    print("OnSubFailed2203010")
end

function Quest22030:OnSubStart2203011(arg1)
    print("OnSubStart2203011")
end

function Quest22030:OnSubFinish2203011(arg1)
    print("OnSubFinish2203011")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20271Data.alias)
end

function Quest22030:OnSubFailed2203011(arg1)
    print("OnSubFailed2203011")
end

function Quest22030:OnSubStart2203012(arg1)
    print("OnSubStart2203012")
end

function Quest22030:OnSubFinish2203012(arg1)
    print("OnSubFinish2203012")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20271Data.alias)
end

function Quest22030:OnSubFailed2203012(arg1)
    print("OnSubFailed2203012")
end

function Quest22030:OnSubStart2203013(arg1)
    print("OnSubStart2203013")
end

function Quest22030:OnSubFinish2203013(arg1)
    print("OnSubFinish2203013")
end

function Quest22030:OnSubFailed2203013(arg1)
    print("OnSubFailed2203013")
end

return Quest22030
