require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71038 = class("Quest71038", QuestActorProxy)
Quest71038.defaultAlias = "Quest71038"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71038:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71038:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7103801"] = self.OnSubStart7103801,
        ["7103802"] = self.OnSubStart7103802,
        ["7103816"] = self.OnSubStart7103816,
        ["7103803"] = self.OnSubStart7103803,
        ["7103804"] = self.OnSubStart7103804,
        ["7103805"] = self.OnSubStart7103805,
        ["7103806"] = self.OnSubStart7103806,
        ["7103807"] = self.OnSubStart7103807,
        ["7103808"] = self.OnSubStart7103808,
        ["7103810"] = self.OnSubStart7103810,
        ["7103811"] = self.OnSubStart7103811,
        ["7103817"] = self.OnSubStart7103817,
        ["7103813"] = self.OnSubStart7103813,
        ["7103814"] = self.OnSubStart7103814,
        ["7103815"] = self.OnSubStart7103815
    }
end

function Quest71038:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7103801"] = self.OnSubFinish7103801,
        ["7103802"] = self.OnSubFinish7103802,
        ["7103816"] = self.OnSubFinish7103816,
        ["7103803"] = self.OnSubFinish7103803,
        ["7103804"] = self.OnSubFinish7103804,
        ["7103805"] = self.OnSubFinish7103805,
        ["7103806"] = self.OnSubFinish7103806,
        ["7103807"] = self.OnSubFinish7103807,
        ["7103808"] = self.OnSubFinish7103808,
        ["7103810"] = self.OnSubFinish7103810,
        ["7103811"] = self.OnSubFinish7103811,
        ["7103817"] = self.OnSubFinish7103817,
        ["7103813"] = self.OnSubFinish7103813,
        ["7103814"] = self.OnSubFinish7103814,
        ["7103815"] = self.OnSubFinish7103815
    }
end

function Quest71038:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71038:Start()
    print("Start")
end

function Quest71038:OnDestroy()
    print("OnDestroy")
end

function Quest71038:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71038:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71038:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc20523Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc2616Data.alias, 6)
end

function Quest71038:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest71038:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest71038:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest71038:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest71038:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71038:OnSubStart7103801(arg1)
    print("OnSubStart7103801")
    self:NpcCreate(arg1, npcs.Npc20523Data.id, 1)
end

function Quest71038:OnSubFinish7103801(arg1)
    print("OnSubFinish7103801")
    self:NpcDestroy(npcs.Npc20523Data.alias, 6)
end

function Quest71038:OnSubStart7103802(arg1)
    print("OnSubStart7103802")
    self:CreateQuestNpc(arg1, npcs.Npc2616Data.id, 1)
end

function Quest71038:OnSubFinish7103802(arg1)
    print("OnSubFinish7103802")
end

function Quest71038:OnSubStart7103816(arg1)
    print("OnSubStart7103816")
end

function Quest71038:OnSubFinish7103816(arg1)
    print("OnSubFinish7103816")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc2616Data.alias)
end

function Quest71038:OnSubStart7103803(arg1)
    print("OnSubStart7103803")
end

function Quest71038:OnSubFinish7103803(arg1)
    print("OnSubFinish7103803")
end

function Quest71038:OnSubStart7103804(arg1)
    print("OnSubStart7103804")
end

function Quest71038:OnSubFinish7103804(arg1)
    print("OnSubFinish7103804")
end

function Quest71038:OnSubStart7103805(arg1)
    print("OnSubStart7103805")
end

function Quest71038:OnSubFinish7103805(arg1)
    print("OnSubFinish7103805")
end

function Quest71038:OnSubStart7103806(arg1)
    print("OnSubStart7103806")
end

function Quest71038:OnSubFinish7103806(arg1)
    print("OnSubFinish7103806")
end

function Quest71038:OnSubStart7103807(arg1)
    print("OnSubStart7103807")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc20523Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20523Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
end

function Quest71038:OnSubFinish7103807(arg1)
    print("OnSubFinish7103807")
end

function Quest71038:OnSubStart7103808(arg1)
    print("OnSubStart7103808")
end

function Quest71038:OnSubFinish7103808(arg1)
    print("OnSubFinish7103808")
end

function Quest71038:OnSubStart7103810(arg1)
    print("OnSubStart7103810")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc20523Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20523Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
end

function Quest71038:OnSubFinish7103810(arg1)
    print("OnSubFinish7103810")
end

function Quest71038:OnSubStart7103811(arg1)
    print("OnSubStart7103811")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20523Data.id, 1, npcs.Npc20523Data.alias)
end

function Quest71038:OnSubFinish7103811(arg1)
    print("OnSubFinish7103811")
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 5)
end

function Quest71038:OnSubStart7103817(arg1)
    print("OnSubStart7103817")
end

function Quest71038:OnSubFinish7103817(arg1)
    print("OnSubFinish7103817")
end

function Quest71038:OnSubStart7103813(arg1)
    print("OnSubStart7103813")
    self:CreateQuestNpc(arg1, npcs.Npc20523Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20523Data.alias):DoFreeStyle(4100, true, nil, true, true, false)
end

function Quest71038:OnSubFinish7103813(arg1)
    print("OnSubFinish7103813")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc2616Data.alias)
end

function Quest71038:OnSubStart7103814(arg1)
    print("OnSubStart7103814")
    self:CreateQuestNpc(arg1, npcs.Npc20523Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20523Data.alias):DoFreeStyle(4100, true, nil, true, true, false)
end

function Quest71038:OnSubFinish7103814(arg1)
    print("OnSubFinish7103814")
end

function Quest71038:OnSubStart7103815(arg1)
    print("OnSubStart7103815")
end

function Quest71038:OnSubFinish7103815(arg1)
    print("OnSubFinish7103815")
    self:NpcDestroy(npcs.Npc20523Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc2616Data.alias, 6)
    self:ShowBlackScreen(0.2, 1.5, 0.5, nil, nil, nil, "", false, true)
end

return Quest71038
