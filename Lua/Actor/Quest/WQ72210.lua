require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72210 = class("Quest72210", QuestActorProxy)
Quest72210.defaultAlias = "Quest72210"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72210:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72210:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7221001"] = self.OnSubStart7221001,
        ["7221002"] = self.OnSubStart7221002,
        ["7221006"] = self.OnSubStart7221006,
        ["7221003"] = self.OnSubStart7221003,
        ["7221007"] = self.OnSubStart7221007,
        ["7221005"] = self.OnSubStart7221005,
        ["7221004"] = self.OnSubStart7221004
    }
end

function Quest72210:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7221001"] = self.OnSubFinish7221001,
        ["7221002"] = self.OnSubFinish7221002,
        ["7221006"] = self.OnSubFinish7221006,
        ["7221003"] = self.OnSubFinish7221003,
        ["7221007"] = self.OnSubFinish7221007,
        ["7221005"] = self.OnSubFinish7221005,
        ["7221004"] = self.OnSubFinish7221004
    }
end

function Quest72210:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7221001"] = self.OnSubFailed7221001,
        ["7221002"] = self.OnSubFailed7221002,
        ["7221006"] = self.OnSubFailed7221006,
        ["7221003"] = self.OnSubFailed7221003,
        ["7221007"] = self.OnSubFailed7221007,
        ["7221005"] = self.OnSubFailed7221005,
        ["7221004"] = self.OnSubFailed7221004
    }
end

function Quest72210:Start()
    print("Start")
end

function Quest72210:OnDestroy()
    print("OnDestroy")
end

function Quest72210:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72210:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72210:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72210:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72210:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72210:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest72210:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72210:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
    elseif arg1 == 2 then
    end
end

function Quest72210:OnSubStart7221001(arg1)
    print("OnSubStart7221001")
end

function Quest72210:OnSubFinish7221001(arg1)
    print("OnSubFinish7221001")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3189Data.alias)
end

function Quest72210:OnSubFailed7221001(arg1)
    print("OnSubFailed7221001")
end

function Quest72210:OnSubStart7221002(arg1)
    print("OnSubStart7221002")
    self:CreateQuestNpc(arg1, npcs.Npc20378Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20378Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("BabaoTrigger", "Actor/Gadget/BabaoTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72210_Babao").pos, sceneData:GetDummyPoint(3, "WQ72210_Babao").rot, true, false, 3)
end

function Quest72210:OnSubFinish7221002(arg1)
    print("OnSubFinish7221002")
end

function Quest72210:OnSubFailed7221002(arg1)
    print("OnSubFailed7221002")
end

function Quest72210:OnSubStart7221006(arg1)
    print("OnSubStart7221006")
    self:GetQuestNpcActor(npcs.Npc20378Data.alias):DoFreeStyle(1, true, nil, true, true, false)
end

function Quest72210:OnSubFinish7221006(arg1)
    print("OnSubFinish7221006")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20378Data.alias)
    self:NarratorOnlyTask(datas.Pm04, nil, "")
end

function Quest72210:OnSubFailed7221006(arg1)
    print("OnSubFailed7221006")
end

function Quest72210:OnSubStart7221003(arg1)
    print("OnSubStart7221003")
    self:CreateQuestNpc(arg1, npcs.Npc20379Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20379Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("KunbuwanTrigger", "Actor/Gadget/KunbuwanTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72210_Kunbuwan").pos, sceneData:GetDummyPoint(3, "WQ72210_Kunbuwan").rot, true, false, 3)
end

function Quest72210:OnSubFinish7221003(arg1)
    print("OnSubFinish7221003")
end

function Quest72210:OnSubFailed7221003(arg1)
    print("OnSubFailed7221003")
end

function Quest72210:OnSubStart7221007(arg1)
    print("OnSubStart7221007")
    self:GetQuestNpcActor(npcs.Npc20379Data.alias):DoFreeStyle(1, true, nil, true, true, false)
end

function Quest72210:OnSubFinish7221007(arg1)
    print("OnSubFinish7221007")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20379Data.alias)
    self:NarratorOnlyTask(datas.Pm03, nil, "")
end

function Quest72210:OnSubFailed7221007(arg1)
    print("OnSubFailed7221007")
end

function Quest72210:OnSubStart7221005(arg1)
    print("OnSubStart7221005")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3189Data.id, 1)
    self:NpcDestroy(npcs.Npc20378Data.alias, 0)
    self:NpcDestroy(npcs.Npc20379Data.alias, 0)
    self:ActorDestroy("BabaoTrigger")
    self:ActorDestroy("KunbuwanTrigger")
end

function Quest72210:OnSubFinish7221005(arg1)
    print("OnSubFinish7221005")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3189Data.alias)
end

function Quest72210:OnSubFailed7221005(arg1)
    print("OnSubFailed7221005")
end

function Quest72210:OnSubStart7221004(arg1)
    print("OnSubStart7221004")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3189Data.id, 1)
end

function Quest72210:OnSubFinish7221004(arg1)
    print("OnSubFinish7221004")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3189Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20378Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20379Data.alias)
end

function Quest72210:OnSubFailed7221004(arg1)
    print("OnSubFailed7221004")
end

return Quest72210
