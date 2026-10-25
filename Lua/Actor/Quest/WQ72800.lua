require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72800 = class("Quest72800", QuestActorProxy)
Quest72800.defaultAlias = "Quest72800"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72800:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72800:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7280001"] = self.OnSubStart7280001,
        ["7280002"] = self.OnSubStart7280002,
        ["7280003"] = self.OnSubStart7280003,
        ["7280004"] = self.OnSubStart7280004,
        ["7280005"] = self.OnSubStart7280005,
        ["7280006"] = self.OnSubStart7280006,
        ["7280007"] = self.OnSubStart7280007,
        ["7280008"] = self.OnSubStart7280008,
        ["7280009"] = self.OnSubStart7280009,
        ["7280010"] = self.OnSubStart7280010,
        ["7280011"] = self.OnSubStart7280011
    }
end

function Quest72800:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7280001"] = self.OnSubFinish7280001,
        ["7280002"] = self.OnSubFinish7280002,
        ["7280003"] = self.OnSubFinish7280003,
        ["7280004"] = self.OnSubFinish7280004,
        ["7280005"] = self.OnSubFinish7280005,
        ["7280006"] = self.OnSubFinish7280006,
        ["7280007"] = self.OnSubFinish7280007,
        ["7280008"] = self.OnSubFinish7280008,
        ["7280009"] = self.OnSubFinish7280009,
        ["7280010"] = self.OnSubFinish7280010,
        ["7280011"] = self.OnSubFinish7280011
    }
end

function Quest72800:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7280001"] = self.OnSubFailed7280001,
        ["7280002"] = self.OnSubFailed7280002,
        ["7280003"] = self.OnSubFailed7280003,
        ["7280004"] = self.OnSubFailed7280004,
        ["7280005"] = self.OnSubFailed7280005,
        ["7280006"] = self.OnSubFailed7280006,
        ["7280007"] = self.OnSubFailed7280007,
        ["7280008"] = self.OnSubFailed7280008,
        ["7280009"] = self.OnSubFailed7280009,
        ["7280010"] = self.OnSubFailed7280010,
        ["7280011"] = self.OnSubFailed7280011
    }
end

function Quest72800:Start()
    print("Start")
end

function Quest72800:OnDestroy()
    print("OnDestroy")
end

function Quest72800:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72800:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72800:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72800:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest72800:NpcCreate(arg1, arg2, arg3)
    print("\229\188\128\229\167\139\229\136\155\229\187\186\228\186\134")
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72800:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
        arg1_2:SafeDestroyQuestNpc(npcs.Npc20268Data.alias, 3)
        arg1_2:SafeDestroyQuestNpc(npcs.Npc20269Data.alias, 3)
        arg1_2:SafeDestroyQuestNpc(npcs.Npc20270Data.alias, 3)
    end, nil, nil, "")
end

function Quest72800:OnSubStart7280001(arg1)
    print("OnSubStart7280001")
end

function Quest72800:OnSubFinish7280001(arg1)
    print("OnSubFinish7280001")
    self:ShowBlackScreen(0.3, 1.5, 0.5, nil)
end

function Quest72800:OnSubFailed7280001(arg1)
    print("OnSubFailed7280001")
end

function Quest72800:OnSubStart7280002(arg1)
    print("OnSubStart7280002")
    self:NotifyTo(npcs.Npc20268Data.alias, 1, true)
    self:NotifyTo(npcs.Npc20269Data.alias, 1, true)
    self:NotifyTo(npcs.Npc20270Data.alias, 1, true)
    self:CallDelay(0.5, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc20271Data.id, 1)
    end)

    actorMgr:CreateActorWithPos("Q72800Trigger", "Actor/Gadget/Q72800Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7280002").pos, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest72800:OnSubFinish7280002(arg1)
    print("OnSubFinish7280002")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest72800:OnSubFailed7280002(arg1)
    print("OnSubFailed7280002")
end

function Quest72800:OnSubStart7280003(arg1)
    print("OnSubStart7280003")
    self:NotifyTo(npcs.Npc20268Data.alias, 1, true)
    self:NotifyTo(npcs.Npc20269Data.alias, 1, true)
    self:NotifyTo(npcs.Npc20270Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q72800Trigger1", "Actor/Gadget/Q72800Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q7280003").pos, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest72800:OnSubFinish7280003(arg1)
    print("OnSubFinish7280003")
    self:NarratorOnlyTask(datas.NarratorTable1, nil, "")
end

function Quest72800:OnSubFailed7280003(arg1)
    print("OnSubFailed7280003")
end

function Quest72800:OnSubStart7280004(arg1)
    print("OnSubStart7280004")
    self:NotifyTo(npcs.Npc20268Data.alias, 1, true)
    self:NotifyTo(npcs.Npc20269Data.alias, 1, true)
    self:NotifyTo(npcs.Npc20270Data.alias, 1, true)
end

function Quest72800:OnSubFinish7280004(arg1)
    print("OnSubFinish7280004")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20271Data.alias)
end

function Quest72800:OnSubFailed7280004(arg1)
    print("OnSubFailed7280004")
end

function Quest72800:OnSubStart7280005(arg1)
    print("OnSubStart7280005")
    self:NotifyTo(npcs.Npc20268Data.alias, 1, true)
    self:NotifyTo(npcs.Npc20269Data.alias, 1, true)
    self:NotifyTo(npcs.Npc20270Data.alias, 1, true)
end

function Quest72800:OnSubFinish7280005(arg1)
    print("OnSubFinish7280005")
end

function Quest72800:OnSubFailed7280005(arg1)
    print("OnSubFailed7280005")
end

function Quest72800:OnSubStart7280006(arg1)
    print("OnSubStart7280006")
    self:NotifyTo(npcs.Npc20268Data.alias, 1, true)
    self:NotifyTo(npcs.Npc20269Data.alias, 1, true)
    self:NotifyTo(npcs.Npc20270Data.alias, 1, true)
end

function Quest72800:OnSubFinish7280006(arg1)
    print("OnSubFinish7280006")
end

function Quest72800:OnSubFailed7280006(arg1)
    print("OnSubFailed7280006")
end

function Quest72800:OnSubStart7280007(arg1)
    print("OnSubStart7280007")
    self:NotifyTo(npcs.Npc20268Data.alias, 1, true)
    self:NotifyTo(npcs.Npc20269Data.alias, 1, true)
    self:NotifyTo(npcs.Npc20270Data.alias, 1, true)
end

function Quest72800:OnSubFinish7280007(arg1)
    print("OnSubFinish7280007")
end

function Quest72800:OnSubFailed7280007(arg1)
    print("OnSubFailed7280007")
end

function Quest72800:OnSubStart7280008(arg1)
    print("OnSubStart7280008")
    self:NotifyTo(npcs.Npc20268Data.alias, 1, true)
    self:NotifyTo(npcs.Npc20269Data.alias, 1, true)
    self:NotifyTo(npcs.Npc20270Data.alias, 1, true)
end

function Quest72800:OnSubFinish7280008(arg1)
    print("OnSubFinish7280008")
end

function Quest72800:OnSubFailed7280008(arg1)
    print("OnSubFailed7280008")
end

function Quest72800:OnSubStart7280009(arg1)
    print("OnSubStart7280009")
    self:NotifyTo(npcs.Npc20268Data.alias, 1, true)
    self:NotifyTo(npcs.Npc20269Data.alias, 1, true)
    self:NotifyTo(npcs.Npc20270Data.alias, 1, true)
end

function Quest72800:OnSubFinish7280009(arg1)
    print("OnSubFinish7280009")
end

function Quest72800:OnSubFailed7280009(arg1)
    print("OnSubFailed7280009")
end

function Quest72800:OnSubStart7280010(arg1)
    print("OnSubStart7280010")
    self:NotifyTo(npcs.Npc20268Data.alias, 1, true)
    self:NotifyTo(npcs.Npc20269Data.alias, 1, true)
    self:NotifyTo(npcs.Npc20270Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q72800Trigger2", "Actor/Gadget/Q72800Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q7280010").pos, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest72800:OnSubFinish7280010(arg1)
    print("OnSubFinish7280010")
end

function Quest72800:OnSubFailed7280010(arg1)
    print("OnSubFailed7280010")
end

function Quest72800:OnSubStart7280011(arg1)
    print("OnSubStart7280011")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20268Data.id, 1, npcs.Npc20268Data.alias)
    self:NotifyTo(npcs.Npc20268Data.alias, 1, true)
    self:LightNotifyTo(npcs.Npc20269Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc20270Data.alias, 0, true)
end

function Quest72800:OnSubFinish7280011(arg1)
    print("OnSubFinish7280011")
    self:SafeDestroyQuestNpc(npcs.Npc20268Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20269Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20270Data.alias, 3)
end

function Quest72800:OnSubFailed7280011(arg1)
    print("OnSubFailed7280011")
end

return Quest72800
