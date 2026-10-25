require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73800 = class("Quest73800", QuestActorProxy)
Quest73800.defaultAlias = "Quest73800"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73800:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73800:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7380001"] = self.OnSubStart7380001,
        ["7380002"] = self.OnSubStart7380002,
        ["7380003"] = self.OnSubStart7380003,
        ["7380004"] = self.OnSubStart7380004,
        ["7380005"] = self.OnSubStart7380005,
        ["7380006"] = self.OnSubStart7380006,
        ["7380007"] = self.OnSubStart7380007,
        ["7380008"] = self.OnSubStart7380008,
        ["7380009"] = self.OnSubStart7380009,
        ["7380010"] = self.OnSubStart7380010,
        ["7380011"] = self.OnSubStart7380011,
        ["7380012"] = self.OnSubStart7380012,
        ["7380013"] = self.OnSubStart7380013,
        ["7380014"] = self.OnSubStart7380014,
        ["7380015"] = self.OnSubStart7380015,
        ["7380016"] = self.OnSubStart7380016,
        ["7380017"] = self.OnSubStart7380017,
        ["7380018"] = self.OnSubStart7380018,
        ["7380019"] = self.OnSubStart7380019,
        ["7380020"] = self.OnSubStart7380020,
        ["7380021"] = self.OnSubStart7380021,
        ["7380022"] = self.OnSubStart7380022,
        ["7380023"] = self.OnSubStart7380023,
        ["7380024"] = self.OnSubStart7380024
    }
end

function Quest73800:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7380001"] = self.OnSubFinish7380001,
        ["7380002"] = self.OnSubFinish7380002,
        ["7380003"] = self.OnSubFinish7380003,
        ["7380004"] = self.OnSubFinish7380004,
        ["7380005"] = self.OnSubFinish7380005,
        ["7380006"] = self.OnSubFinish7380006,
        ["7380007"] = self.OnSubFinish7380007,
        ["7380008"] = self.OnSubFinish7380008,
        ["7380009"] = self.OnSubFinish7380009,
        ["7380010"] = self.OnSubFinish7380010,
        ["7380011"] = self.OnSubFinish7380011,
        ["7380012"] = self.OnSubFinish7380012,
        ["7380013"] = self.OnSubFinish7380013,
        ["7380014"] = self.OnSubFinish7380014,
        ["7380015"] = self.OnSubFinish7380015,
        ["7380016"] = self.OnSubFinish7380016,
        ["7380017"] = self.OnSubFinish7380017,
        ["7380018"] = self.OnSubFinish7380018,
        ["7380019"] = self.OnSubFinish7380019,
        ["7380020"] = self.OnSubFinish7380020,
        ["7380021"] = self.OnSubFinish7380021,
        ["7380022"] = self.OnSubFinish7380022,
        ["7380023"] = self.OnSubFinish7380023,
        ["7380024"] = self.OnSubFinish7380024
    }
end

function Quest73800:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73800:Start()
    print("Start")
end

function Quest73800:OnDestroy()
    print("OnDestroy")
end

function Quest73800:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73800:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73800:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc20268Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20270Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20269Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20271Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20857Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20858Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4069Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4022Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4336Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4112Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4354Data.alias, 3)
    self:LightNotifyTo(npcs.Npc20857Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc20858Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4336Data.alias, 0, true)
end

function Quest73800:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73800:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    self:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest73800:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73800:OnSubStart7380001(arg1)
    print("OnSubStart7380001")
    self:CreateQuestNpc(arg1, npcs.Npc20268Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20270Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20269Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20271Data.id, 4)
end

function Quest73800:OnSubFinish7380001(arg1)
    print("OnSubFinish7380001")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20268Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20270Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20269Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20271Data.alias)
end

function Quest73800:OnSubStart7380002(arg1)
    print("OnSubStart7380002")
    self:NpcCreateWithTriggerBlack(npcs.Npc20270Data.id, 7380002, 1)
end

function Quest73800:OnSubFinish7380002(arg1)
    print("OnSubFinish7380002")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20268Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20270Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20269Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20271Data.alias)
end

function Quest73800:OnSubStart7380003(arg1)
    print("OnSubStart7380003")
    self:CreateQuestNpc(arg1, npcs.Npc20857Data.id, 1)
    self:NotifyTo(npcs.Npc20857Data.alias, 1, true)
end

function Quest73800:OnSubFinish7380003(arg1)
    print("OnSubFinish7380003")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20857Data.alias)
end

function Quest73800:OnSubStart7380004(arg1)
    print("OnSubStart7380004")
    self:CreateQuestNpc(arg1, npcs.Npc4069Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4069Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest73800:OnSubFinish7380004(arg1)
    print("OnSubFinish7380004")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4069Data.alias)
end

function Quest73800:OnSubStart7380005(arg1)
    print("OnSubStart7380005")
    self:CreateQuestNpc(arg1, npcs.Npc4022Data.id, 1)
end

function Quest73800:OnSubFinish7380005(arg1)
    print("OnSubFinish7380005")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4022Data.alias)
end

function Quest73800:OnSubStart7380006(arg1)
    print("OnSubStart7380006")
    self:CreateQuestNpc(arg1, npcs.Npc4029Data.id, 1)
end

function Quest73800:OnSubFinish7380006(arg1)
    print("OnSubFinish7380006")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4029Data.alias)
end

function Quest73800:OnSubStart7380007(arg1)
    print("OnSubStart7380007")
end

function Quest73800:OnSubFinish7380007(arg1)
    print("OnSubFinish7380007")
    self:NarratorOnlyTask(datas.NarratorTable1, nil, "")
end

function Quest73800:OnSubStart7380008(arg1)
    print("OnSubStart7380008")
    self:CreateQuestNpc(arg1, npcs.Npc20268Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20270Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20269Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20271Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20857Data.id, 5)
    self:NotifyTo(npcs.Npc20857Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc20858Data.id, 6)
    self:NotifyTo(npcs.Npc20858Data.alias, 1, true)
end

function Quest73800:OnSubFinish7380008(arg1)
    print("OnSubFinish7380008")
    self:NarratorOnlyTask(datas.NarratorTable3, nil, "")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20268Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20270Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20269Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20271Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20857Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20858Data.alias, 3)
end

function Quest73800:OnSubStart7380009(arg1)
    print("OnSubStart7380009")
    self:NpcCreateWithTriggerBlack(npcs.Npc20271Data.id, 7380009, 1)
end

function Quest73800:OnSubFinish7380009(arg1)
    print("OnSubFinish7380009")
end

function Quest73800:OnSubStart7380010(arg1)
    print("OnSubStart7380010")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc20271Data.id, 1)
end

function Quest73800:OnSubFinish7380010(arg1)
    print("OnSubFinish7380010")
    self:NarratorOnlyTask(datas.NarratorTable2, nil, "")
end

function Quest73800:OnSubStart7380011(arg1)
    print("OnSubStart7380011")
end

function Quest73800:OnSubFinish7380011(arg1)
    print("OnSubFinish7380011")
end

function Quest73800:OnSubStart7380012(arg1)
    print("OnSubStart7380012")
end

function Quest73800:OnSubFinish7380012(arg1)
    print("OnSubFinish7380012")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20271Data.alias)
end

function Quest73800:OnSubStart7380013(arg1)
    print("OnSubStart7380013")
    self:CreateQuestNpc(arg1, npcs.Npc20269Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4022Data.id, 2)
end

function Quest73800:OnSubFinish7380013(arg1)
    print("OnSubFinish7380013")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20269Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4022Data.alias)
end

function Quest73800:OnSubStart7380014(arg1)
    print("OnSubStart7380014")
    self:CreateQuestNpc(arg1, npcs.Npc20268Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20270Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20271Data.id, 3)
end

function Quest73800:OnSubFinish7380014(arg1)
    print("OnSubFinish7380014")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20268Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20270Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20271Data.alias)
end

function Quest73800:OnSubStart7380015(arg1)
    print("OnSubStart7380015")
    self:CreateQuestNpc(arg1, npcs.Npc4336Data.id, 1)
    self:NotifyTo(npcs.Npc4336Data.alias, 1, true)
end

function Quest73800:OnSubFinish7380015(arg1)
    print("OnSubFinish7380015")
end

function Quest73800:OnSubStart7380016(arg1)
    print("OnSubStart7380016")
    self:CreateQuestNpc(arg1, npcs.Npc20268Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20270Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20269Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20271Data.id, 4)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc4336Data.id, 5)
    self:NotifyTo(npcs.Npc4336Data.alias, 1, true)
end

function Quest73800:OnSubFinish7380016(arg1)
    print("OnSubFinish7380016")
end

function Quest73800:OnSubStart7380017(arg1)
    print("OnSubStart7380017")
    self:NotifyTo(npcs.Npc4336Data.alias, 1, true)
end

function Quest73800:OnSubFinish7380017(arg1)
    print("OnSubFinish7380017")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20268Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20270Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20269Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20271Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4336Data.alias)
end

function Quest73800:OnSubStart7380018(arg1)
    print("OnSubStart7380018")
    self:CreateQuestNpc(arg1, npcs.Npc4112Data.id, 1)
end

function Quest73800:OnSubFinish7380018(arg1)
    print("OnSubFinish7380018")
end

function Quest73800:OnSubStart7380019(arg1)
    print("OnSubStart7380019")
    self:CreateQuestNpc(arg1, npcs.Npc20268Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20270Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20269Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20271Data.id, 4)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc4112Data.id, 5)
end

function Quest73800:OnSubFinish7380019(arg1)
    print("OnSubFinish7380019")
end

function Quest73800:OnSubStart7380020(arg1)
    print("OnSubStart7380020")
end

function Quest73800:OnSubFinish7380020(arg1)
    print("OnSubFinish7380020")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20268Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20270Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20269Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20271Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4112Data.alias)
end

function Quest73800:OnSubStart7380021(arg1)
    print("OnSubStart7380021")
    self:CreateQuestNpc(arg1, npcs.Npc4354Data.id, 1)
end

function Quest73800:OnSubFinish7380021(arg1)
    print("OnSubFinish7380021")
end

function Quest73800:OnSubStart7380022(arg1)
    print("OnSubStart7380022")
    self:CreateQuestNpc(arg1, npcs.Npc20268Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20270Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20269Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20271Data.id, 4)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc4354Data.id, 5)
end

function Quest73800:OnSubFinish7380022(arg1)
    print("OnSubFinish7380022")
end

function Quest73800:OnSubStart7380023(arg1)
    print("OnSubStart7380023")
end

function Quest73800:OnSubFinish7380023(arg1)
    print("OnSubFinish7380023")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20268Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20270Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20269Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20271Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4354Data.alias)
end

function Quest73800:OnSubStart7380024(arg1)
    print("OnSubStart7380024")
    self:CreateQuestNpc(arg1, npcs.Npc20858Data.id, 1)
    self:NotifyTo(npcs.Npc20858Data.alias, 1, true)
end

function Quest73800:OnSubFinish7380024(arg1)
    print("OnSubFinish7380024")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20858Data.alias)
end

return Quest73800
