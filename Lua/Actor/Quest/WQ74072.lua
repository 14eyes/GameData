require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74072 = class("Quest74072", QuestActorProxy)
Quest74072.defaultAlias = "Quest74072"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74072:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74072:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7407201"] = self.OnSubStart7407201,
        ["7407202"] = self.OnSubStart7407202,
        ["7407203"] = self.OnSubStart7407203,
        ["7407204"] = self.OnSubStart7407204,
        ["7407205"] = self.OnSubStart7407205,
        ["7407235"] = self.OnSubStart7407235,
        ["7407236"] = self.OnSubStart7407236,
        ["7407237"] = self.OnSubStart7407237,
        ["7407241"] = self.OnSubStart7407241,
        ["7407206"] = self.OnSubStart7407206,
        ["7407224"] = self.OnSubStart7407224,
        ["7407225"] = self.OnSubStart7407225,
        ["7407226"] = self.OnSubStart7407226,
        ["7407239"] = self.OnSubStart7407239,
        ["7407227"] = self.OnSubStart7407227,
        ["7407228"] = self.OnSubStart7407228,
        ["7407229"] = self.OnSubStart7407229,
        ["7407230"] = self.OnSubStart7407230,
        ["7407231"] = self.OnSubStart7407231,
        ["7407238"] = self.OnSubStart7407238,
        ["7407207"] = self.OnSubStart7407207,
        ["7407232"] = self.OnSubStart7407232,
        ["7407208"] = self.OnSubStart7407208,
        ["7407209"] = self.OnSubStart7407209,
        ["7407212"] = self.OnSubStart7407212,
        ["7407213"] = self.OnSubStart7407213,
        ["7407214"] = self.OnSubStart7407214,
        ["7407215"] = self.OnSubStart7407215,
        ["7407233"] = self.OnSubStart7407233,
        ["7407216"] = self.OnSubStart7407216,
        ["7407217"] = self.OnSubStart7407217,
        ["7407218"] = self.OnSubStart7407218,
        ["7407219"] = self.OnSubStart7407219,
        ["7407220"] = self.OnSubStart7407220,
        ["7407221"] = self.OnSubStart7407221,
        ["7407222"] = self.OnSubStart7407222,
        ["7407223"] = self.OnSubStart7407223,
        ["7407210"] = self.OnSubStart7407210,
        ["7407211"] = self.OnSubStart7407211,
        ["7407234"] = self.OnSubStart7407234,
        ["7407240"] = self.OnSubStart7407240
    }
end

function Quest74072:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7407201"] = self.OnSubFinish7407201,
        ["7407202"] = self.OnSubFinish7407202,
        ["7407203"] = self.OnSubFinish7407203,
        ["7407204"] = self.OnSubFinish7407204,
        ["7407205"] = self.OnSubFinish7407205,
        ["7407235"] = self.OnSubFinish7407235,
        ["7407236"] = self.OnSubFinish7407236,
        ["7407237"] = self.OnSubFinish7407237,
        ["7407241"] = self.OnSubFinish7407241,
        ["7407206"] = self.OnSubFinish7407206,
        ["7407224"] = self.OnSubFinish7407224,
        ["7407225"] = self.OnSubFinish7407225,
        ["7407226"] = self.OnSubFinish7407226,
        ["7407239"] = self.OnSubFinish7407239,
        ["7407227"] = self.OnSubFinish7407227,
        ["7407228"] = self.OnSubFinish7407228,
        ["7407229"] = self.OnSubFinish7407229,
        ["7407230"] = self.OnSubFinish7407230,
        ["7407231"] = self.OnSubFinish7407231,
        ["7407238"] = self.OnSubFinish7407238,
        ["7407207"] = self.OnSubFinish7407207,
        ["7407232"] = self.OnSubFinish7407232,
        ["7407208"] = self.OnSubFinish7407208,
        ["7407209"] = self.OnSubFinish7407209,
        ["7407212"] = self.OnSubFinish7407212,
        ["7407213"] = self.OnSubFinish7407213,
        ["7407214"] = self.OnSubFinish7407214,
        ["7407215"] = self.OnSubFinish7407215,
        ["7407233"] = self.OnSubFinish7407233,
        ["7407216"] = self.OnSubFinish7407216,
        ["7407217"] = self.OnSubFinish7407217,
        ["7407218"] = self.OnSubFinish7407218,
        ["7407219"] = self.OnSubFinish7407219,
        ["7407220"] = self.OnSubFinish7407220,
        ["7407221"] = self.OnSubFinish7407221,
        ["7407222"] = self.OnSubFinish7407222,
        ["7407223"] = self.OnSubFinish7407223,
        ["7407210"] = self.OnSubFinish7407210,
        ["7407211"] = self.OnSubFinish7407211,
        ["7407234"] = self.OnSubFinish7407234,
        ["7407240"] = self.OnSubFinish7407240
    }
end

function Quest74072:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74072:Start()
    print("Start")
end

function Quest74072:OnDestroy()
    print("OnDestroy")
end

function Quest74072:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74072:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74072:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74072:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74072:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74072:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74072:OnSubStart7407201(arg1)
    print("OnSubStart7407201")
    if this:GetSubQuestState(7413504) == 3 then
        this:SetQuestVar(7407201, 0, 12)
        actorUtils.FinishQuestID(false, 7407201)
    else
        this:SetQuestVar(7407201, 0, 24)
        actorUtils.FinishQuestID(false, 7407201)
    end
end

function Quest74072:OnSubFinish7407201(arg1)
    print("OnSubFinish7407201")
end

function Quest74072:OnSubStart7407202(arg1)
    print("OnSubStart7407202")
    actorUtils.FinishQuestID(false, 7407202)
end

function Quest74072:OnSubFinish7407202(arg1)
    print("OnSubFinish7407202")
    this:NarratorOnlyTaskByData(datas.NarratorWithIdQSbf42)
end

function Quest74072:OnSubStart7407203(arg1)
    print("OnSubStart7407203")
    if this:GetQuestVar(7407203, 1) == 0 then
        this:NarratorOnlyTaskByData(datas.NarratorWithIdQSaf42)
        this:SetQuestVar(7407203, 1, 100)
    end
end

function Quest74072:OnSubFinish7407203(arg1)
    print("OnSubFinish7407203")
end

function Quest74072:OnSubStart7407204(arg1)
    print("OnSubStart7407204")
    this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5303Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21048Data.id, 0)
    actorMgr:CreateActorWithPos("Q74072Trigger_7407204FINISH", "Actor/Gadget/Q74072Trigger_7407204FINISH", 70900002, 0, points.TPos_Q74072Trigger_7407204FINISH.pos, points.TPos_Q74072Trigger_7407204FINISH.rot, true, false, 1080)
end

function Quest74072:OnSubFinish7407204(arg1)
    print("OnSubFinish7407204")
end

function Quest74072:OnSubStart7407205(arg1)
    print("OnSubStart7407205")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21048Data.id, 7407205, 0, 10, 1)
end

function Quest74072:OnSubFinish7407205(arg1)
    print("OnSubFinish7407205")
end

function Quest74072:OnSubStart7407235(arg1)
    print("OnSubStart7407235")
    this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5303Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5303Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21048Data.id, 0)
end

function Quest74072:OnSubFinish7407235(arg1)
    print("OnSubFinish7407235")
end

function Quest74072:OnSubStart7407236(arg1)
    print("OnSubStart7407236")
    this:GetQuestNpcActor(npcs.Npc5303Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
end

function Quest74072:OnSubFinish7407236(arg1)
    print("OnSubFinish7407236")
end

function Quest74072:OnSubStart7407237(arg1)
    print("OnSubStart7407237")
    this:GetQuestNpcActor(npcs.Npc5303Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
end

function Quest74072:OnSubFinish7407237(arg1)
    print("OnSubFinish7407237")
end

function Quest74072:OnSubStart7407241(arg1)
    print("OnSubStart7407241")
    this:GetQuestNpcActor(npcs.Npc5303Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
end

function Quest74072:OnSubFinish7407241(arg1)
    print("OnSubFinish7407241")
end

function Quest74072:OnSubStart7407206(arg1)
    print("OnSubStart7407206")
    this:GetQuestNpcActor(npcs.Npc5303Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21048Data.id, 7407206, 0, 40, 1)
end

function Quest74072:OnSubFinish7407206(arg1)
    print("OnSubFinish7407206")
    this:NpcDestroyWithBlackscreen(1080, npcs.Npc20995Data.alias)
    this:NpcDestroyWithBlackscreen(1080, npcs.Npc5303Data.alias)
    this:NpcDestroyWithBlackscreen(1080, npcs.Npc21048Data.alias)
end

function Quest74072:OnSubStart7407224(arg1)
    print("OnSubStart7407224")
    actorMgr:CreateActorWithPos("Q74072Trigger_7407224FINISH", "Actor/Gadget/Q74072Trigger_7407224FINISH", 70900002, 0, points.TPos_Q74072Trigger_7407224FINISH.pos, points.TPos_Q74072Trigger_7407224FINISH.rot, true, false, 3)
end

function Quest74072:OnSubFinish7407224(arg1)
    print("OnSubFinish7407224")
end

function Quest74072:OnSubStart7407225(arg1)
    print("OnSubStart7407225")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7407225, 0, 10, 1)
end

function Quest74072:OnSubFinish7407225(arg1)
    print("OnSubFinish7407225")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20995Data.alias)
end

function Quest74072:OnSubStart7407226(arg1)
    print("OnSubStart7407226")
    this:CreateQuestNpc(arg1, npcs.Npc20997Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20998Data.id, 0)
    actorMgr:CreateActorWithPos("Q74072Trigger_7407226FINISH", "Actor/Gadget/Q74072Trigger_7407226FINISH", 70900002, 0, {x = 3793.942, y = 271.341, z = 4983.903}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74072:OnSubFinish7407226(arg1)
    print("OnSubFinish7407226")
end

function Quest74072:OnSubStart7407239(arg1)
    print("OnSubStart7407239")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7407239, 0, 15, 1)
end

function Quest74072:OnSubFinish7407239(arg1)
    print("OnSubFinish7407239")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20995Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20997Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20998Data.alias)
end

function Quest74072:OnSubStart7407227(arg1)
    print("OnSubStart7407227")
end

function Quest74072:OnSubFinish7407227(arg1)
    print("OnSubFinish7407227")
end

function Quest74072:OnSubStart7407228(arg1)
    print("OnSubStart7407228")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7407228, 0, 15, 1)
end

function Quest74072:OnSubFinish7407228(arg1)
    print("OnSubFinish7407228")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20995Data.alias)
end

function Quest74072:OnSubStart7407229(arg1)
    print("OnSubStart7407229")
    actorMgr:CreateActorWithPos("Q74072Trigger_7407229FINISH", "Actor/Gadget/Q74072Trigger_7407229FINISH", 70900002, 0, {x = 3802.645, y = 319.736, z = 4983.857}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74072:OnSubFinish7407229(arg1)
    print("OnSubFinish7407229")
end

function Quest74072:OnSubStart7407230(arg1)
    print("OnSubStart7407230")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7407230, 0, 10, 1)
end

function Quest74072:OnSubFinish7407230(arg1)
    print("OnSubFinish7407230")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId_Backtoclub, 5, nil, nil)
end

function Quest74072:OnSubStart7407231(arg1)
    print("OnSubStart7407231")
    this:NpcCreateWithNpcTrigger(npcs.Npc20995Data.id, 7407231, 0, 10)
    this:CreateQuestNpc(arg1, npcs.Npc5303Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21048Data.id, 0)
end

function Quest74072:OnSubFinish7407231(arg1)
    print("OnSubFinish7407231")
end

function Quest74072:OnSubStart7407238(arg1)
    print("OnSubStart7407238")
    this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5303Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21048Data.id, 0)
end

function Quest74072:OnSubFinish7407238(arg1)
    print("OnSubFinish7407238")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 1080)
    this:SafeDestroyQuestNpc(npcs.Npc5303Data.alias, 1080)
    this:SafeDestroyQuestNpc(npcs.Npc21048Data.alias, 1080)
end

function Quest74072:OnSubStart7407207(arg1)
    print("OnSubStart7407207")
    actorMgr:CreateActorWithPos("Q74072Trigger_7407207FINISH", "Actor/Gadget/Q74072Trigger_7407207FINISH", 70900002, 0, points.TPos_Q74072Trigger_7407207FINISH.pos, points.TPos_Q74072Trigger_7407207FINISH.rot, true, false, 3)
end

function Quest74072:OnSubFinish7407207(arg1)
    print("OnSubFinish7407207")
end

function Quest74072:OnSubStart7407232(arg1)
    print("OnSubStart7407232")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7407232, 0, 30, 1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5303Data.id, 7407232, 0, 30, 1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21048Data.id, 7407232, 0, 30, 1)
end

function Quest74072:OnSubFinish7407232(arg1)
    print("OnSubFinish7407232")
    this:SetNavigationByMainId(74073, true)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20995Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5303Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21048Data.alias)
end

function Quest74072:OnSubStart7407208(arg1)
    print("OnSubStart7407208")
end

function Quest74072:OnSubFinish7407208(arg1)
    print("OnSubFinish7407208")
    this:SetNavigationByMainId(74076, true)
end

function Quest74072:OnSubStart7407209(arg1)
    print("OnSubStart7407209")
end

function Quest74072:OnSubFinish7407209(arg1)
    print("OnSubFinish7407209")
    globalActor:ChangeDay24Time(17.5, false)
end

function Quest74072:OnSubStart7407212(arg1)
    print("OnSubStart7407212")
end

function Quest74072:OnSubFinish7407212(arg1)
    print("OnSubFinish7407212")
end

function Quest74072:OnSubStart7407213(arg1)
    print("OnSubStart7407213")
    this:CallDelayByQuest("", 5, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithIdD2, function(arg1)
            this:CallDelayByQuest("", 10, function(arg1)
                this:NarratorOnlyTaskByData(datas.NarratorWithIdD3)
            end)
        end)
    end)
end

function Quest74072:OnSubFinish7407213(arg1)
    print("OnSubFinish7407213")
    this:TransmitPlayerWithDialogTextById(arg1, 4, datas.TextmapId_Backtoclub, 1, nil, nil)
end

function Quest74072:OnSubStart7407214(arg1)
    print("OnSubStart7407214")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.PaimonData.id, 7407214, 0, 5, 1)
end

function Quest74072:OnSubFinish7407214(arg1)
    print("OnSubFinish7407214")
    this:NpcDestroyWithBlackscreen(3, npcs.PaimonData.alias)
end

function Quest74072:OnSubStart7407215(arg1)
    print("OnSubStart7407215")
    actorMgr:CreateActorWithPos("Q74072Trigger_7407215FINISH", "Actor/Gadget/Q74072Trigger_7407215FINISH", 70900002, 0, points.TPos_Q74072Trigger_7407215FINISH.pos, points.TPos_Q74072Trigger_7407215FINISH.rot, true, false, 1080)
end

function Quest74072:OnSubFinish7407215(arg1)
    print("OnSubFinish7407215")
end

function Quest74072:OnSubStart7407233(arg1)
    print("OnSubStart7407233")
    actorMgr:CreateActorWithPos("Q74072Trigger_7407233FINISH", "Actor/Gadget/Q74072Trigger_7407233FINISH", 70900002, 0, points.TPos_Q74072Trigger_7407233FINISH.pos, points.TPos_Q74072Trigger_7407233FINISH.rot, true, false, 1080)
end

function Quest74072:OnSubFinish7407233(arg1)
    print("OnSubFinish7407233")
end

function Quest74072:OnSubStart7407216(arg1)
    print("OnSubStart7407216")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20984Data.id, 7407216, 0, 25, 1)
end

function Quest74072:OnSubFinish7407216(arg1)
    print("OnSubFinish7407216")
    globalActor:PlayerEnterDungeon(2, 1192, false, nil, 0)
    this:NpcDestroyWithBlackscreen(1080, npcs.Npc20984Data.alias)
end

function Quest74072:OnSubStart7407217(arg1)
    print("OnSubStart7407217")
end

function Quest74072:OnSubFinish7407217(arg1)
    print("OnSubFinish7407217")
end

function Quest74072:OnSubStart7407218(arg1)
    print("OnSubStart7407218")
end

function Quest74072:OnSubFinish7407218(arg1)
    print("OnSubFinish7407218")
    this:TransmitPlayerWithDialogTextById(arg1, 3, datas.TextmapId_Backtoclub, 1, nil, nil)
end

function Quest74072:OnSubStart7407219(arg1)
    print("OnSubStart7407219")
    this:NpcCreateWithNpcTrigger(npcs.Npc21031Data.id, 7407219, 0, 25)
end

function Quest74072:OnSubFinish7407219(arg1)
    print("OnSubFinish7407219")
    this:NpcDestroyWithBlackscreen(1080, npcs.Npc21031Data.alias)
end

function Quest74072:OnSubStart7407220(arg1)
    print("OnSubStart7407220")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7407220, function(arg1)
            actorUtils.FinishQuestID(false, 7407220)
        end, nil, nil, false)
    end)
end

function Quest74072:OnSubFinish7407220(arg1)
    print("OnSubFinish7407220")
end

function Quest74072:OnSubStart7407221(arg1)
    print("OnSubStart7407221")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7407221, 0, 25, 1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5303Data.id, 7407221, 0, 25, 1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21048Data.id, 7407221, 0, 25, 1)
end

function Quest74072:OnSubFinish7407221(arg1)
    print("OnSubFinish7407221")
    this:NpcDestroyWithBlackscreen(1080, npcs.Npc20995Data.alias)
    this:NpcDestroyWithBlackscreen(1080, npcs.Npc5303Data.alias)
    this:NpcDestroyWithBlackscreen(1080, npcs.Npc21048Data.alias)
end

function Quest74072:OnSubStart7407222(arg1)
    print("OnSubStart7407222")
    actorMgr:CreateActorWithPos("Q74072Trigger_7407222FINISH", "Actor/Gadget/Q74072Trigger_7407222FINISH", 70900002, 0, {x = 2627.19, y = 639.846, z = 3656.038}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74072:OnSubFinish7407222(arg1)
    print("OnSubFinish7407222")
end

function Quest74072:OnSubStart7407223(arg1)
    print("OnSubStart7407223")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7407223, 0, 25, 1)
end

function Quest74072:OnSubFinish7407223(arg1)
    print("OnSubFinish7407223")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20995Data.alias)
end

function Quest74072:OnSubStart7407210(arg1)
    print("OnSubStart7407210")
end

function Quest74072:OnSubFinish7407210(arg1)
    print("OnSubFinish7407210")
end

function Quest74072:OnSubStart7407211(arg1)
    print("OnSubStart7407211")
end

function Quest74072:OnSubFinish7407211(arg1)
    print("OnSubFinish7407211")
end

function Quest74072:OnSubStart7407234(arg1)
    print("OnSubStart7407234")
end

function Quest74072:OnSubFinish7407234(arg1)
    print("OnSubFinish7407234")
end

function Quest74072:OnSubStart7407240(arg1)
    print("OnSubStart7407240")
end

function Quest74072:OnSubFinish7407240(arg1)
    print("OnSubFinish7407240")
end

return Quest74072
