require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74078 = class("Quest74078", QuestActorProxy)
Quest74078.defaultAlias = "Quest74078"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74078:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74078:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7407806"] = self.OnSubStart7407806,
        ["7407808"] = self.OnSubStart7407808,
        ["7407815"] = self.OnSubStart7407815,
        ["7407816"] = self.OnSubStart7407816,
        ["7407817"] = self.OnSubStart7407817,
        ["7407824"] = self.OnSubStart7407824,
        ["7407820"] = self.OnSubStart7407820,
        ["7407819"] = self.OnSubStart7407819,
        ["7407829"] = self.OnSubStart7407829,
        ["7407818"] = self.OnSubStart7407818,
        ["7407822"] = self.OnSubStart7407822,
        ["7407823"] = self.OnSubStart7407823,
        ["7407825"] = self.OnSubStart7407825,
        ["7407810"] = self.OnSubStart7407810,
        ["7407811"] = self.OnSubStart7407811,
        ["7407809"] = self.OnSubStart7407809,
        ["7407807"] = self.OnSubStart7407807,
        ["7407812"] = self.OnSubStart7407812,
        ["7407813"] = self.OnSubStart7407813,
        ["7407827"] = self.OnSubStart7407827,
        ["7407828"] = self.OnSubStart7407828,
        ["7407826"] = self.OnSubStart7407826,
        ["7407801"] = self.OnSubStart7407801,
        ["7407802"] = self.OnSubStart7407802,
        ["7407803"] = self.OnSubStart7407803,
        ["7407804"] = self.OnSubStart7407804,
        ["7407805"] = self.OnSubStart7407805,
        ["7407814"] = self.OnSubStart7407814,
        ["7407821"] = self.OnSubStart7407821
    }
end

function Quest74078:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7407806"] = self.OnSubFinish7407806,
        ["7407808"] = self.OnSubFinish7407808,
        ["7407815"] = self.OnSubFinish7407815,
        ["7407816"] = self.OnSubFinish7407816,
        ["7407817"] = self.OnSubFinish7407817,
        ["7407824"] = self.OnSubFinish7407824,
        ["7407820"] = self.OnSubFinish7407820,
        ["7407819"] = self.OnSubFinish7407819,
        ["7407829"] = self.OnSubFinish7407829,
        ["7407818"] = self.OnSubFinish7407818,
        ["7407822"] = self.OnSubFinish7407822,
        ["7407823"] = self.OnSubFinish7407823,
        ["7407825"] = self.OnSubFinish7407825,
        ["7407810"] = self.OnSubFinish7407810,
        ["7407811"] = self.OnSubFinish7407811,
        ["7407809"] = self.OnSubFinish7407809,
        ["7407807"] = self.OnSubFinish7407807,
        ["7407812"] = self.OnSubFinish7407812,
        ["7407813"] = self.OnSubFinish7407813,
        ["7407827"] = self.OnSubFinish7407827,
        ["7407828"] = self.OnSubFinish7407828,
        ["7407826"] = self.OnSubFinish7407826,
        ["7407801"] = self.OnSubFinish7407801,
        ["7407802"] = self.OnSubFinish7407802,
        ["7407803"] = self.OnSubFinish7407803,
        ["7407804"] = self.OnSubFinish7407804,
        ["7407805"] = self.OnSubFinish7407805,
        ["7407814"] = self.OnSubFinish7407814,
        ["7407821"] = self.OnSubFinish7407821
    }
end

function Quest74078:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7407818"] = self.OnSubFailed7407818}
end

function Quest74078:Start()
    print("Start")
end

function Quest74078:OnDestroy()
    print("OnDestroy")
end

function Quest74078:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74078:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74078:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74078:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74078:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74078:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74078:OnSubStart7407806(arg1)
    print("OnSubStart7407806")
    this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21263Data.id, 0)
end

function Quest74078:OnSubFinish7407806(arg1)
    print("OnSubFinish7407806")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.TextmapId_Afterboss, 1, nil, nil)
end

function Quest74078:OnSubStart7407808(arg1)
    print("OnSubStart7407808")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7407808, 0, 25, 1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21263Data.id, 7407808, 0, 25, 1)
end

function Quest74078:OnSubFinish7407808(arg1)
    print("OnSubFinish7407808")
    this:NpcDestroyWithBlackscreen(1080, npcs.Npc20995Data.alias)
    this:NpcDestroyWithBlackscreen(1080, npcs.Npc21263Data.alias)
end

function Quest74078:OnSubStart7407815(arg1)
    print("OnSubStart7407815")
    this:CreateQuestNpc(arg1, npcs.Npc21048Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5303Data.id, 0)
    actorMgr:CreateActorWithPos("Q74078Trigger_7407815FINISH", "Actor/Gadget/Q74078Trigger_7407815FINISH", 70900002, 0, {x = 3560.789, y = 298.161, z = 4935.694}, {x = 16.541, y = 7.3, z = 346.771}, true, false)
end

function Quest74078:OnSubFinish7407815(arg1)
    print("OnSubFinish7407815")
    this:SafeDestroyQuestNpc(npcs.Npc21048Data.alias, 1080)
    this:SafeDestroyQuestNpc(npcs.Npc5303Data.alias, 1080)
end

function Quest74078:OnSubStart7407816(arg1)
    print("OnSubStart7407816")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7407816, 0, 25, 1)
end

function Quest74078:OnSubFinish7407816(arg1)
    print("OnSubFinish7407816")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20995Data.alias)
end

function Quest74078:OnSubStart7407817(arg1)
    print("OnSubStart7407817")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7407817, function(arg1)
            actorUtils.FinishQuestID(false, 7407817)
        end, nil, nil, false)
    end)
end

function Quest74078:OnSubFinish7407817(arg1)
    print("OnSubFinish7407817")
end

function Quest74078:OnSubStart7407824(arg1)
    print("OnSubStart7407824")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7407824, 0, 25, 1)
end

function Quest74078:OnSubFinish7407824(arg1)
    print("OnSubFinish7407824")
    this:CallDelayByQuest("", 1, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithIdHead2Tower)
    end)

    this:NpcDestroyWithBlackscreen(3, npcs.Npc20995Data.alias)
end

function Quest74078:OnSubStart7407820(arg1)
    print("OnSubStart7407820")
end

function Quest74078:OnSubFinish7407820(arg1)
    print("OnSubFinish7407820")
end

function Quest74078:OnSubStart7407819(arg1)
    print("OnSubStart7407819")
end

function Quest74078:OnSubFinish7407819(arg1)
    print("OnSubFinish7407819")
end

function Quest74078:OnSubStart7407829(arg1)
    print("OnSubStart7407829")
end

function Quest74078:OnSubFinish7407829(arg1)
    print("OnSubFinish7407829")
end

function Quest74078:OnSubStart7407818(arg1)
    print("OnSubStart7407818")
end

function Quest74078:OnSubFinish7407818(arg1)
    print("OnSubFinish7407818")
end

function Quest74078:OnSubFailed7407818(arg1)
    print("OnSubFailed7407818")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74078:OnSubStart7407822(arg1)
    print("OnSubStart7407822")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7407822, 0, 25, 1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21263Data.id, 7407822, 0, 25, 1)
end

function Quest74078:OnSubFinish7407822(arg1)
    print("OnSubFinish7407822")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20995Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21263Data.alias)
end

function Quest74078:OnSubStart7407823(arg1)
    print("OnSubStart7407823")
    actorMgr:CreateActorWithPos("Q74078Trigger_7407823FINISH", "Actor/Gadget/Q74078Trigger_7407823FINISH", 70900002, 0, {x = 3729.973, y = -528.348, z = 4643.619}, {x = 0.0, y = 14.678, z = 0.0}, true, false, 3)
end

function Quest74078:OnSubFinish7407823(arg1)
    print("OnSubFinish7407823")
end

function Quest74078:OnSubStart7407825(arg1)
    print("OnSubStart7407825")
    actorMgr:CreateActorWithPos("Q74078Trigger_7407825FINISH", "Actor/Gadget/Q74078Trigger_7407825FINISH", 70900002, 0, {x = 3780.903, y = -557.032, z = 4663.548}, {x = 0.0, y = 14.305, z = 0.0}, true, false)
end

function Quest74078:OnSubFinish7407825(arg1)
    print("OnSubFinish7407825")
end

function Quest74078:OnSubStart7407810(arg1)
    print("OnSubStart7407810")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7407810, 0, 25, 1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21263Data.id, 7407810, 0, 25, 1)
end

function Quest74078:OnSubFinish7407810(arg1)
    print("OnSubFinish7407810")
    this:CallDelayByQuest("", 0.5, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithIdGlass)
    end)

    this:NpcDestroyWithBlackscreen(3, npcs.Npc20995Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21263Data.alias)
end

function Quest74078:OnSubStart7407811(arg1)
    print("OnSubStart7407811")
end

function Quest74078:OnSubFinish7407811(arg1)
    print("OnSubFinish7407811")
end

function Quest74078:OnSubStart7407809(arg1)
    print("OnSubStart7407809")
end

function Quest74078:OnSubFinish7407809(arg1)
    print("OnSubFinish7407809")
end

function Quest74078:OnSubStart7407807(arg1)
    print("OnSubStart7407807")
    this:ClearNarratorTask()
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7407807, function(arg1)
            actorUtils.FinishQuestID(false, 7407807)
        end, nil, nil, false)
    end)
end

function Quest74078:OnSubFinish7407807(arg1)
    print("OnSubFinish7407807")
end

function Quest74078:OnSubStart7407812(arg1)
    print("OnSubStart7407812")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7407812, 0, 25, 1)
end

function Quest74078:OnSubFinish7407812(arg1)
    print("OnSubFinish7407812")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20995Data.alias)
end

function Quest74078:OnSubStart7407813(arg1)
    print("OnSubStart7407813")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21048Data.id, 7407813, 0, 25, 1)
    this:CreateQuestNpc(arg1, npcs.Npc21263Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5303Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21002Data.id, 0)
end

function Quest74078:OnSubFinish7407813(arg1)
    print("OnSubFinish7407813")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21048Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21263Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5303Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21002Data.alias, 3)
end

function Quest74078:OnSubStart7407827(arg1)
    print("OnSubStart7407827")
    this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc5301Data.id, 7407827, 0, 10)
    this:CreateQuestNpc(arg1, npcs.Npc21345Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21345Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74078:OnSubFinish7407827(arg1)
    print("OnSubFinish7407827")
    this:TransmitPlayerWithDialogTextById(arg1, 2, datas.DialogsId_Endingtransmit, 5, nil, nil)
    globalActor:ChangeDay24Time(17.5, false)
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5301Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21345Data.alias, 3)
end

function Quest74078:OnSubStart7407828(arg1)
    print("OnSubStart7407828")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21048Data.id, 7407828, 0, 10, 1)
end

function Quest74078:OnSubFinish7407828(arg1)
    print("OnSubFinish7407828")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21048Data.alias)
end

function Quest74078:OnSubStart7407826(arg1)
    print("OnSubStart7407826")
end

function Quest74078:OnSubFinish7407826(arg1)
    print("OnSubFinish7407826")
end

function Quest74078:OnSubStart7407801(arg1)
    print("OnSubStart7407801")
end

function Quest74078:OnSubFinish7407801(arg1)
    print("OnSubFinish7407801")
end

function Quest74078:OnSubStart7407802(arg1)
    print("OnSubStart7407802")
end

function Quest74078:OnSubFinish7407802(arg1)
    print("OnSubFinish7407802")
end

function Quest74078:OnSubStart7407803(arg1)
    print("OnSubStart7407803")
end

function Quest74078:OnSubFinish7407803(arg1)
    print("OnSubFinish7407803")
end

function Quest74078:OnSubStart7407804(arg1)
    print("OnSubStart7407804")
end

function Quest74078:OnSubFinish7407804(arg1)
    print("OnSubFinish7407804")
end

function Quest74078:OnSubStart7407805(arg1)
    print("OnSubStart7407805")
end

function Quest74078:OnSubFinish7407805(arg1)
    print("OnSubFinish7407805")
end

function Quest74078:OnSubStart7407814(arg1)
    print("OnSubStart7407814")
end

function Quest74078:OnSubFinish7407814(arg1)
    print("OnSubFinish7407814")
end

function Quest74078:OnSubStart7407821(arg1)
    print("OnSubStart7407821")
end

function Quest74078:OnSubFinish7407821(arg1)
    print("OnSubFinish7407821")
end

return Quest74078
