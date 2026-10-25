require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74008 = class("Quest74008", QuestActorProxy)
Quest74008.defaultAlias = "Quest74008"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74008:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7400801"] = self.OnSubStart7400801,
        ["7400807"] = self.OnSubStart7400807,
        ["7400802"] = self.OnSubStart7400802,
        ["7400803"] = self.OnSubStart7400803,
        ["7400804"] = self.OnSubStart7400804,
        ["7400805"] = self.OnSubStart7400805,
        ["7400806"] = self.OnSubStart7400806,
        ["7400808"] = self.OnSubStart7400808,
        ["7400809"] = self.OnSubStart7400809,
        ["7400810"] = self.OnSubStart7400810,
        ["7400811"] = self.OnSubStart7400811,
        ["7400825"] = self.OnSubStart7400825,
        ["7400812"] = self.OnSubStart7400812,
        ["7400813"] = self.OnSubStart7400813,
        ["7400814"] = self.OnSubStart7400814,
        ["7400815"] = self.OnSubStart7400815,
        ["7400816"] = self.OnSubStart7400816,
        ["7400817"] = self.OnSubStart7400817,
        ["7400818"] = self.OnSubStart7400818,
        ["7400830"] = self.OnSubStart7400830,
        ["7400819"] = self.OnSubStart7400819,
        ["7400828"] = self.OnSubStart7400828,
        ["7400827"] = self.OnSubStart7400827,
        ["7400826"] = self.OnSubStart7400826,
        ["7400832"] = self.OnSubStart7400832,
        ["7400831"] = self.OnSubStart7400831,
        ["7400820"] = self.OnSubStart7400820,
        ["7400821"] = self.OnSubStart7400821,
        ["7400822"] = self.OnSubStart7400822,
        ["7400823"] = self.OnSubStart7400823,
        ["7400829"] = self.OnSubStart7400829,
        ["7400824"] = self.OnSubStart7400824
    }
end

function Quest74008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7400801"] = self.OnSubFinish7400801,
        ["7400807"] = self.OnSubFinish7400807,
        ["7400802"] = self.OnSubFinish7400802,
        ["7400803"] = self.OnSubFinish7400803,
        ["7400804"] = self.OnSubFinish7400804,
        ["7400805"] = self.OnSubFinish7400805,
        ["7400806"] = self.OnSubFinish7400806,
        ["7400808"] = self.OnSubFinish7400808,
        ["7400809"] = self.OnSubFinish7400809,
        ["7400810"] = self.OnSubFinish7400810,
        ["7400811"] = self.OnSubFinish7400811,
        ["7400825"] = self.OnSubFinish7400825,
        ["7400812"] = self.OnSubFinish7400812,
        ["7400813"] = self.OnSubFinish7400813,
        ["7400814"] = self.OnSubFinish7400814,
        ["7400815"] = self.OnSubFinish7400815,
        ["7400816"] = self.OnSubFinish7400816,
        ["7400817"] = self.OnSubFinish7400817,
        ["7400818"] = self.OnSubFinish7400818,
        ["7400830"] = self.OnSubFinish7400830,
        ["7400819"] = self.OnSubFinish7400819,
        ["7400828"] = self.OnSubFinish7400828,
        ["7400827"] = self.OnSubFinish7400827,
        ["7400826"] = self.OnSubFinish7400826,
        ["7400832"] = self.OnSubFinish7400832,
        ["7400831"] = self.OnSubFinish7400831,
        ["7400820"] = self.OnSubFinish7400820,
        ["7400821"] = self.OnSubFinish7400821,
        ["7400822"] = self.OnSubFinish7400822,
        ["7400823"] = self.OnSubFinish7400823,
        ["7400829"] = self.OnSubFinish7400829,
        ["7400824"] = self.OnSubFinish7400824
    }
end

function Quest74008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74008:Start()
    print("Start")
end

function Quest74008:OnDestroy()
    print("OnDestroy")
end

function Quest74008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74008:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74008:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74008:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest74008:OnSubStart7400801(arg1)
    print("OnSubStart7400801")
    this:CreateQuestNpc(arg1, npcs.Npc21027Data.id, 0)
end

function Quest74008:OnSubFinish7400801(arg1)
    print("OnSubFinish7400801")
    this:TransmitPlayerWithDialogTextById(arg1, 2, datas.DialogsId_01, 3, nil, nil)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21027Data.alias)
end

function Quest74008:OnSubStart7400807(arg1)
    print("OnSubStart7400807")
    this:CreateQuestNpc(arg1, npcs.Npc21030Data.id, 0)
end

function Quest74008:OnSubFinish7400807(arg1)
    print("OnSubFinish7400807")
    this:NarratorOnlyTaskByData(datas.NarratorWithId)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21030Data.alias)
end

function Quest74008:OnSubStart7400802(arg1)
    print("OnSubStart7400802")
end

function Quest74008:OnSubFinish7400802(arg1)
    print("OnSubFinish7400802")
end

function Quest74008:OnSubStart7400803(arg1)
    print("OnSubStart7400803")
end

function Quest74008:OnSubFinish7400803(arg1)
    print("OnSubFinish7400803")
end

function Quest74008:OnSubStart7400804(arg1)
    print("OnSubStart7400804")
end

function Quest74008:OnSubFinish7400804(arg1)
    print("OnSubFinish7400804")
end

function Quest74008:OnSubStart7400805(arg1)
    print("OnSubStart7400805")
    actorMgr:CreateActorWithPos("Q7400805Trigger", "Actor/Gadget/Q7400805Trigger", 70900002, 0, {x = 3282.091, y = 379.221, z = 4560.201}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74008:OnSubFinish7400805(arg1)
    print("OnSubFinish7400805")
end

function Quest74008:OnSubStart7400806(arg1)
    print("OnSubStart7400806")
end

function Quest74008:OnSubFinish7400806(arg1)
    print("OnSubFinish7400806")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_02)
end

function Quest74008:OnSubStart7400808(arg1)
    print("OnSubStart7400808")
end

function Quest74008:OnSubFinish7400808(arg1)
    print("OnSubFinish7400808")
end

function Quest74008:OnSubStart7400809(arg1)
    print("OnSubStart7400809")
    actorMgr:CreateActorWithPos("Q7400809Trigger", "Actor/Gadget/Q7400809Trigger", 70900002, 0, {x = 3104.69, y = 248.209, z = 4224.382}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74008:OnSubFinish7400809(arg1)
    print("OnSubFinish7400809")
end

function Quest74008:OnSubStart7400810(arg1)
    print("OnSubStart7400810")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21030Data.id, 7400810, 0, 6, 1)
    this:RequestInteraction(npcs.Npc21030Data.alias)
end

function Quest74008:OnSubFinish7400810(arg1)
    print("OnSubFinish7400810")
end

function Quest74008:OnSubStart7400811(arg1)
    print("OnSubStart7400811")
end

function Quest74008:OnSubFinish7400811(arg1)
    print("OnSubFinish7400811")
end

function Quest74008:OnSubStart7400825(arg1)
    print("OnSubStart7400825")
    this:RequestInteraction(npcs.Npc21030Data.alias)
end

function Quest74008:OnSubFinish7400825(arg1)
    print("OnSubFinish7400825")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_03)
    this:SafeDestroyQuestNpc(npcs.Npc21030Data.alias, 3)
end

function Quest74008:OnSubStart7400812(arg1)
    print("OnSubStart7400812")
    actorMgr:CreateActorWithPos("Q7400812Trigger", "Actor/Gadget/Q7400812Trigger", 70900002, 0, points.TPos_Q7400812Trigger.pos, points.TPos_Q7400812Trigger.rot, true, false)
end

function Quest74008:OnSubFinish7400812(arg1)
    print("OnSubFinish7400812")
end

function Quest74008:OnSubStart7400813(arg1)
    print("OnSubStart7400813")
end

function Quest74008:OnSubFinish7400813(arg1)
    print("OnSubFinish7400813")
end

function Quest74008:OnSubStart7400814(arg1)
    print("OnSubStart7400814")
    this:CreateQuestNpc(arg1, npcs.Npc21030Data.id, 0)
    this:RequestInteraction(npcs.Npc21030Data.alias)
end

function Quest74008:OnSubFinish7400814(arg1)
    print("OnSubFinish7400814")
    this:SafeDestroyQuestNpc(npcs.Npc21030Data.alias, 3)
end

function Quest74008:OnSubStart7400815(arg1)
    print("OnSubStart7400815")
    actorMgr:CreateActorWithPos("Q7400815Trigger", "Actor/Gadget/Q7400815Trigger", 70900002, 0, points.TPos_Q7400815Trigger.pos, points.TPos_Q7400815Trigger.rot, true, false)
end

function Quest74008:OnSubFinish7400815(arg1)
    print("OnSubFinish7400815")
end

function Quest74008:OnSubStart7400816(arg1)
    print("OnSubStart7400816")
end

function Quest74008:OnSubFinish7400816(arg1)
    print("OnSubFinish7400816")
end

function Quest74008:OnSubStart7400817(arg1)
    print("OnSubStart7400817")
    actorMgr:CreateActorWithPos("Q7400817Trigger", "Actor/Gadget/Q7400817Trigger", 70900002, 0, points.TPos_Q7400817Trigger.pos, points.TPos_Q7400817Trigger.rot, true, false)
end

function Quest74008:OnSubFinish7400817(arg1)
    print("OnSubFinish7400817")
end

function Quest74008:OnSubStart7400818(arg1)
    print("OnSubStart7400818")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21030Data.id, 7400818, 0, 10, 0.5)
    this:CreateQuestNpc(arg1, npcs.Npc21139Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21140Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21141Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21142Data.id, 0)
    this:RequestInteraction(npcs.Npc21030Data.alias)
end

function Quest74008:OnSubFinish7400818(arg1)
    print("OnSubFinish7400818")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_04)
end

function Quest74008:OnSubStart7400830(arg1)
    print("OnSubStart7400830")
    this:CreateQuestNpc(arg1, npcs.Npc21030Data.id, 0)
end

function Quest74008:OnSubFinish7400830(arg1)
    print("OnSubFinish7400830")
end

function Quest74008:OnSubStart7400819(arg1)
    print("OnSubStart7400819")
end

function Quest74008:OnSubFinish7400819(arg1)
    print("OnSubFinish7400819")
end

function Quest74008:OnSubStart7400828(arg1)
    print("OnSubStart7400828")
end

function Quest74008:OnSubFinish7400828(arg1)
    print("OnSubFinish7400828")
end

function Quest74008:OnSubStart7400827(arg1)
    print("OnSubStart7400827")
end

function Quest74008:OnSubFinish7400827(arg1)
    print("OnSubFinish7400827")
end

function Quest74008:OnSubStart7400826(arg1)
    print("OnSubStart7400826")
end

function Quest74008:OnSubFinish7400826(arg1)
    print("OnSubFinish7400826")
end

function Quest74008:OnSubStart7400832(arg1)
    print("OnSubStart7400832")
    actorUtils.FinishQuestID(false, 7400832)
end

function Quest74008:OnSubFinish7400832(arg1)
    print("OnSubFinish7400832")
end

function Quest74008:OnSubStart7400831(arg1)
    print("OnSubStart7400831")
    actorMgr:CreateActorWithPos("Q7400831Trigger", "Actor/Gadget/Q7400831Trigger", 70900002, 0, {x = 3241.591, y = 248.783, z = 4178.581}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74008:OnSubFinish7400831(arg1)
    print("OnSubFinish7400831")
    this:SafeDestroyQuestNpc(npcs.Npc21030Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21139Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21140Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21141Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21142Data.alias, 3)
end

function Quest74008:OnSubStart7400820(arg1)
    print("OnSubStart7400820")
    this:CreateQuestNpc(arg1, npcs.Npc21030Data.id, 0)
    this:RequestInteraction(npcs.Npc21030Data.alias)
end

function Quest74008:OnSubFinish7400820(arg1)
    print("OnSubFinish7400820")
    this:SafeDestroyQuestNpc(npcs.Npc21030Data.alias, 3)
end

function Quest74008:OnSubStart7400821(arg1)
    print("OnSubStart7400821")
end

function Quest74008:OnSubFinish7400821(arg1)
    print("OnSubFinish7400821")
end

function Quest74008:OnSubStart7400822(arg1)
    print("OnSubStart7400822")
end

function Quest74008:OnSubFinish7400822(arg1)
    print("OnSubFinish7400822")
end

function Quest74008:OnSubStart7400823(arg1)
    print("OnSubStart7400823")
    this:PlayCutsceneIndex(74008, function(arg1)
        actorUtils.FinishQuestID(false, 7400823)
    end, nil, nil, false)
end

function Quest74008:OnSubFinish7400823(arg1)
    print("OnSubFinish7400823")
end

function Quest74008:OnSubStart7400829(arg1)
    print("OnSubStart7400829")
    this:ShowBlackScreenWithDialogText(0.5, 3, 0.5, function(arg1)
        this:CallDelayByQuest("", 2.5, function(arg1)
            actorUtils.FinishQuestID(false, 7400829)
        end)
    end, nil, nil, 740089922, false, true)
end

function Quest74008:OnSubFinish7400829(arg1)
    print("OnSubFinish7400829")
    this:TransmitPlayerById(arg1, 1)
end

function Quest74008:OnSubStart7400824(arg1)
    print("OnSubStart7400824")
    actorMgr:CreateActorWithPos("Q7400824Trigger", "Actor/Gadget/Q7400824Trigger", 70900002, 0, {x = 3822.522, y = 404.194, z = 4165.941}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74008:OnSubFinish7400824(arg1)
    print("OnSubFinish7400824")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_05)
end

return Quest74008
