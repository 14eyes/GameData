require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6002 = class("Quest6002", QuestActorProxy)
Quest6002.defaultAlias = "Quest6002"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6002:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6002:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["600201"] = self.OnSubStart600201,
        ["600202"] = self.OnSubStart600202,
        ["600216"] = self.OnSubStart600216,
        ["600240"] = self.OnSubStart600240,
        ["600203"] = self.OnSubStart600203,
        ["600204"] = self.OnSubStart600204,
        ["600205"] = self.OnSubStart600205,
        ["600241"] = self.OnSubStart600241,
        ["600206"] = self.OnSubStart600206,
        ["600208"] = self.OnSubStart600208,
        ["600207"] = self.OnSubStart600207,
        ["600244"] = self.OnSubStart600244,
        ["600210"] = self.OnSubStart600210,
        ["600229"] = self.OnSubStart600229,
        ["600230"] = self.OnSubStart600230,
        ["600242"] = self.OnSubStart600242,
        ["600231"] = self.OnSubStart600231,
        ["600219"] = self.OnSubStart600219,
        ["600243"] = self.OnSubStart600243,
        ["600211"] = self.OnSubStart600211,
        ["600245"] = self.OnSubStart600245,
        ["600209"] = self.OnSubStart600209,
        ["600212"] = self.OnSubStart600212,
        ["600237"] = self.OnSubStart600237,
        ["600213"] = self.OnSubStart600213,
        ["600236"] = self.OnSubStart600236,
        ["600246"] = self.OnSubStart600246,
        ["600214"] = self.OnSubStart600214,
        ["600239"] = self.OnSubStart600239,
        ["600247"] = self.OnSubStart600247,
        ["600215"] = self.OnSubStart600215,
        ["600248"] = self.OnSubStart600248,
        ["600217"] = self.OnSubStart600217,
        ["600218"] = self.OnSubStart600218,
        ["600249"] = self.OnSubStart600249,
        ["600220"] = self.OnSubStart600220,
        ["600221"] = self.OnSubStart600221,
        ["600232"] = self.OnSubStart600232,
        ["600233"] = self.OnSubStart600233,
        ["600222"] = self.OnSubStart600222,
        ["600227"] = self.OnSubStart600227,
        ["600223"] = self.OnSubStart600223,
        ["600224"] = self.OnSubStart600224,
        ["600235"] = self.OnSubStart600235,
        ["600225"] = self.OnSubStart600225,
        ["600226"] = self.OnSubStart600226,
        ["600238"] = self.OnSubStart600238,
        ["600228"] = self.OnSubStart600228,
        ["600234"] = self.OnSubStart600234
    }
end

function Quest6002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["600201"] = self.OnSubFinish600201,
        ["600202"] = self.OnSubFinish600202,
        ["600216"] = self.OnSubFinish600216,
        ["600240"] = self.OnSubFinish600240,
        ["600203"] = self.OnSubFinish600203,
        ["600204"] = self.OnSubFinish600204,
        ["600205"] = self.OnSubFinish600205,
        ["600241"] = self.OnSubFinish600241,
        ["600206"] = self.OnSubFinish600206,
        ["600208"] = self.OnSubFinish600208,
        ["600207"] = self.OnSubFinish600207,
        ["600244"] = self.OnSubFinish600244,
        ["600210"] = self.OnSubFinish600210,
        ["600229"] = self.OnSubFinish600229,
        ["600230"] = self.OnSubFinish600230,
        ["600242"] = self.OnSubFinish600242,
        ["600231"] = self.OnSubFinish600231,
        ["600219"] = self.OnSubFinish600219,
        ["600243"] = self.OnSubFinish600243,
        ["600211"] = self.OnSubFinish600211,
        ["600245"] = self.OnSubFinish600245,
        ["600209"] = self.OnSubFinish600209,
        ["600212"] = self.OnSubFinish600212,
        ["600237"] = self.OnSubFinish600237,
        ["600213"] = self.OnSubFinish600213,
        ["600236"] = self.OnSubFinish600236,
        ["600246"] = self.OnSubFinish600246,
        ["600214"] = self.OnSubFinish600214,
        ["600239"] = self.OnSubFinish600239,
        ["600247"] = self.OnSubFinish600247,
        ["600215"] = self.OnSubFinish600215,
        ["600248"] = self.OnSubFinish600248,
        ["600217"] = self.OnSubFinish600217,
        ["600218"] = self.OnSubFinish600218,
        ["600249"] = self.OnSubFinish600249,
        ["600220"] = self.OnSubFinish600220,
        ["600221"] = self.OnSubFinish600221,
        ["600232"] = self.OnSubFinish600232,
        ["600233"] = self.OnSubFinish600233,
        ["600222"] = self.OnSubFinish600222,
        ["600227"] = self.OnSubFinish600227,
        ["600223"] = self.OnSubFinish600223,
        ["600224"] = self.OnSubFinish600224,
        ["600235"] = self.OnSubFinish600235,
        ["600225"] = self.OnSubFinish600225,
        ["600226"] = self.OnSubFinish600226,
        ["600238"] = self.OnSubFinish600238,
        ["600228"] = self.OnSubFinish600228,
        ["600234"] = self.OnSubFinish600234
    }
end

function Quest6002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["600203"] = self.OnSubFailed600203,
        ["600204"] = self.OnSubFailed600204,
        ["600205"] = self.OnSubFailed600205,
        ["600206"] = self.OnSubFailed600206,
        ["600210"] = self.OnSubFailed600210,
        ["600229"] = self.OnSubFailed600229,
        ["600231"] = self.OnSubFailed600231,
        ["600211"] = self.OnSubFailed600211,
        ["600209"] = self.OnSubFailed600209,
        ["600212"] = self.OnSubFailed600212,
        ["600237"] = self.OnSubFailed600237,
        ["600213"] = self.OnSubFailed600213,
        ["600236"] = self.OnSubFailed600236,
        ["600214"] = self.OnSubFailed600214,
        ["600239"] = self.OnSubFailed600239,
        ["600217"] = self.OnSubFailed600217,
        ["600218"] = self.OnSubFailed600218,
        ["600220"] = self.OnSubFailed600220,
        ["600226"] = self.OnSubFailed600226
    }
end

function Quest6002:Start()
    print("Start")
end

function Quest6002:OnDestroy()
    print("OnDestroy")
end

function Quest6002:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6002:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6002:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6002:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q600203Trigger")
    this:ActorDestroy("Q600215Trigger")
    this:ActorDestroy("Q600226Trigger")
    this:ActorDestroy("Q600205Trigger")
    this:ActorDestroy("Q600205Trigger_1")
    this:ActorDestroy("Q600201Trigger")
    this:ActorDestroy("Q600211Trigger")
    this:ActorDestroy("Q600237Trigger")
    this:ActorDestroy("Q600209Trigger")
    this:ActorDestroy("Q600214Trigger")
    this:ActorDestroy("Q600212Trigger")
    this:ActorDestroy("Q600214Trigger_1")
end

function Quest6002:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        this:SetQuestVarByMainId(0, 1)
    elseif arg1 == 1 then
        this:ActionSafeCall(function(arg1)
            this:PlayerEnterDungeonWithData(1620, 1255, 600216, 1, datas.TransmitData_600216, nil, nil)
        end)
    elseif arg1 == 2 then
        this:SetQuestVarByMainId(1, 1)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 600227)
    elseif arg1 == 4 then
        actorUtils.FinishQuestID(false, 600235)
    elseif arg1 == 5 then
        actorUtils.FinishQuestID(false, 600238)
    elseif arg1 == 6 then
        actorUtils.FinishQuestID(false, 600219)
    elseif arg1 == 7 then
        this:RemoveLocalGadget(73078073, "1")
    end
end

function Quest6002:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6002:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest6002:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6002:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6002:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest6002:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest6002:OnSubStart600201(arg1)
    print("OnSubStart600201")
    if this:GetQuestVar(600201, 2) == 0 then
        actorMgr:CreateActorWithPos("Q600201Trigger", "Actor/Gadget/Q600201Trigger", 70900002, 0, points._Q600201TriggerPoint_.pos, points._Q600201TriggerPoint_.rot, true, false, 3)
    end
end

function Quest6002:OnSubFinish600201(arg1)
    print("OnSubFinish600201")
    this:ActorDestroy("Q600201Trigger")
    this:QuestNarratorTask(datas.NarratorWithId_600211, nil)
end

function Quest6002:OnSubStart600202(arg1)
    print("OnSubStart600202")
    this:CreateQuestNpc(arg1, npcs.Npc1315.id, 0, false, 0)
end

function Quest6002:OnSubFinish600202(arg1)
    print("OnSubFinish600202")
end

function Quest6002:OnSubStart600216(arg1)
    print("OnSubStart600216")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1317.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1317.alias, 6002):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1315.id, arg1)
end

function Quest6002:OnSubFinish600216(arg1)
    print("OnSubFinish600216")
    this:NpcDestroyImmediately(3, npcs.Npc1317.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1315.alias)
end

function Quest6002:OnSubStart600240(arg1)
    print("OnSubStart600240")
end

function Quest6002:OnSubFinish600240(arg1)
    print("OnSubFinish600240")
end

function Quest6002:OnSubStart600203(arg1)
    print("OnSubStart600203")
    this:NpcCreateWithNoBlack(npcs.Npc1317.id, 0, 8, 600203, true, 600203)
    actorMgr:CreateActorWithPos("Q600203Trigger", "Actor/Gadget/Q600203Trigger", 70900002, 0, points._Q600203TriggerPoint_.pos, points._Q600203TriggerPoint_.rot, true, false, 20276)
end

function Quest6002:OnSubFinish600203(arg1)
    print("OnSubFinish600203")
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 20276)
    this:ActorDestroy("Q600203Trigger")
end

function Quest6002:OnSubFailed600203(arg1)
    print("OnSubFailed600203")
    this:ActorDestroy("Q600203Trigger")
    this:ActorDestroy("Q600203N1317Trigger")
end

function Quest6002:OnSubStart600204(arg1)
    print("OnSubStart600204")
    this:NpcCreateWithNoBlack(npcs.Npc1317.id, 0, 8, 600204, true, 600204)
end

function Quest6002:OnSubFinish600204(arg1)
    print("OnSubFinish600204")
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 20276)
end

function Quest6002:OnSubFailed600204(arg1)
    print("OnSubFailed600204")
    this:ActorDestroy("Q600204N1317Trigger")
end

function Quest6002:OnSubStart600205(arg1)
    print("OnSubStart600205")
    this:NpcCreateWithNoBlack(npcs.Npc1317.id, 0, 8, 600205, true, 600205)
    actorMgr:CreateActorWithPos("Q600205Trigger", "Actor/Gadget/Q600205Trigger", 70900002, 0, points._Q600205TriggerPoint_.pos, points._Q600205TriggerPoint_.rot, true, false, 20276)
    actorMgr:CreateActorWithPos("Q600205Trigger_1", "Actor/Gadget/Q600205Trigger_1", 70900002, 0, points._Q600205Trigger_1Point_.pos, points._Q600205Trigger_1Point_.rot, true, false, 20276)
    local questVar = this:GetQuestVar(600205, 0)
    if questVar == 0 then
        this:CreateLocalGadget(73078065, "1", points.Q600205_Gadget73078065_1_Point.pos, points.Q600205_Gadget73078065_1_Point.rot, 20276, nil, nil, false, 0, true)
    elseif questVar == 1 then
        this:CreateLocalGadget(73078064, "1", points.Q600205_Gadget73078064_1_Point.pos, points.Q600205_Gadget73078064_1_Point.rot, 20276, nil, nil, false, 0, true)
        this:CreateLocalGadget(73078066, "1", points.Q600205_Gadget73078066_1_Point.pos, points.Q600205_Gadget73078066_1_Point.rot, 20276, nil, nil, false, 0, true)
        this:CreateLocalGadget(73078067, "1", points.Q600205_Gadget73078067_1_Point.pos, points.Q600205_Gadget73078067_1_Point.rot, 20276, nil, nil, false, 0, true)
    end
end

function Quest6002:OnSubFinish600205(arg1)
    print("OnSubFinish600205")
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 20276)
    this:RemoveLocalGadget(73078064, "1")
    this:RemoveLocalGadget(73078065, "1")
    this:RemoveLocalGadget(73078066, "1")
    this:RemoveLocalGadget(73078067, "1")
    this:ActorDestroy("Q600205Trigger_1")
    this:ActorDestroy("Q600205Trigger")
end

function Quest6002:OnSubFailed600205(arg1)
    print("OnSubFailed600205")
    this:RemoveLocalGadget(73078064, "1")
    this:RemoveLocalGadget(73078065, "1")
    this:RemoveLocalGadget(73078066, "1")
    this:RemoveLocalGadget(73078067, "1")
    this:ActorDestroy("Q600205N1317Trigger")
    this:ActorDestroy("Q600205Trigger_1")
    this:ActorDestroy("Q600205Trigger")
end

function Quest6002:OnSubStart600241(arg1)
    print("OnSubStart600241")
end

function Quest6002:OnSubFinish600241(arg1)
    print("OnSubFinish600241")
end

function Quest6002:OnSubStart600206(arg1)
    print("OnSubStart600206")
    this:CreateQuestNpc(arg1, npcs.Npc15684.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15685.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15381.id, 0, false, 0)
    this:CreateLocalGadget(73078068, "1", points.Q600206_Gadget73078068_1_Point.pos, points.Q600206_Gadget73078068_1_Point.rot, 20276, nil, nil, false, 0, true)
    this:CreateLocalGadget(73078069, "1", points.Q600206_Gadget73078069_1_Point.pos, points.Q600206_Gadget73078069_1_Point.rot, 3, nil, nil, false, 0, true)
end

function Quest6002:OnSubFinish600206(arg1)
    print("OnSubFinish600206")
    this:SafeDestroyQuestNpc(npcs.Npc15684.alias, 20276)
    this:SafeDestroyQuestNpc(npcs.Npc15685.alias, 20276)
    this:RemoveLocalGadget(73078068, "1")
    this:RemoveLocalGadget(73078069, "1")
    if this:GetQuestVar(600206, 1) == 1 then
        this:SafeDestroyQuestNpc(npcs.Npc15381.alias, 20276)
    end
end

function Quest6002:OnSubFailed600206(arg1)
    print("OnSubFailed600206")
    this:RemoveLocalGadget(73078068, "1")
    this:RemoveLocalGadget(73078069, "1")
    this:ActorDestroy("Q600206N1317Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc15684.alias, 20276)
    this:SafeDestroyQuestNpc(npcs.Npc15685.alias, 20276)
end

function Quest6002:OnSubStart600208(arg1)
    print("OnSubStart600208")
    actorUtils.FinishQuestID(false, 600208)
end

function Quest6002:OnSubFinish600208(arg1)
    print("OnSubFinish600208")
end

function Quest6002:OnSubStart600207(arg1)
    print("OnSubStart600207")
end

function Quest6002:OnSubFinish600207(arg1)
    print("OnSubFinish600207")
end

function Quest6002:OnSubStart600244(arg1)
    print("OnSubStart600244")
end

function Quest6002:OnSubFinish600244(arg1)
    print("OnSubFinish600244")
end

function Quest6002:OnSubStart600210(arg1)
    print("OnSubStart600210")
    this:CreateQuestNpc(arg1, npcs.Npc15381.id, 0, false, 0)
end

function Quest6002:OnSubFinish600210(arg1)
    print("OnSubFinish600210")
    this:SafeDestroyQuestNpc(npcs.Npc15381.alias, 20276)
end

function Quest6002:OnSubFailed600210(arg1)
    print("OnSubFailed600210")
    this:ActorDestroy("Q600210N1317Trigger")
end

function Quest6002:OnSubStart600229(arg1)
    print("OnSubStart600229")
    this:CreateLocalGadget(73078070, "1", points.Q600229_Gadget73078070_1_Point.pos, points.Q600229_Gadget73078070_1_Point.rot, 20276, nil, nil, false, 0, true)
end

function Quest6002:OnSubFinish600229(arg1)
    print("OnSubFinish600229")
    this:RemoveLocalGadget(73078070, "1")
    this:QuestNarratorTask(datas.NarratorWithId_600209, nil)
end

function Quest6002:OnSubFailed600229(arg1)
    print("OnSubFailed600229")
    this:RemoveLocalGadget(73078070, "1")
end

function Quest6002:OnSubStart600230(arg1)
    print("OnSubStart600230")
end

function Quest6002:OnSubFinish600230(arg1)
    print("OnSubFinish600230")
end

function Quest6002:OnSubStart600242(arg1)
    print("OnSubStart600242")
end

function Quest6002:OnSubFinish600242(arg1)
    print("OnSubFinish600242")
end

function Quest6002:OnSubStart600231(arg1)
    print("OnSubStart600231")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600231, 0, 5, 1, npcs.Npc1317.id)
end

function Quest6002:OnSubFinish600231(arg1)
    print("OnSubFinish600231")
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 20276)
end

function Quest6002:OnSubFailed600231(arg1)
    print("OnSubFailed600231")
    this:ActorDestroy("Q600231N1317Trigger")
end

function Quest6002:OnSubStart600219(arg1)
    print("OnSubStart600219")
end

function Quest6002:OnSubFinish600219(arg1)
    print("OnSubFinish600219")
end

function Quest6002:OnSubStart600243(arg1)
    print("OnSubStart600243")
end

function Quest6002:OnSubFinish600243(arg1)
    print("OnSubFinish600243")
end

function Quest6002:OnSubStart600211(arg1)
    print("OnSubStart600211")
    this:CreateLocalGadget(73078071, "1", points.Q600211_Gadget73078071_1_Point.pos, points.Q600211_Gadget73078071_1_Point.rot, 20276, nil, nil, false, 0, true)
    this:CreateLocalGadget(73078073, "1", points.Q600211_Gadget73078073_1_Point.pos, points.Q600211_Gadget73078073_1_Point.rot, 20276, nil, nil, false, 0, true)
    actorMgr:CreateActorWithPos("Q600211Trigger", "Actor/Gadget/Q600211Trigger", 70900002, 0, points._Q600211TriggerPoint_.pos, points._Q600211TriggerPoint_.rot, true, false, 20276)
end

function Quest6002:OnSubFinish600211(arg1)
    print("OnSubFinish600211")
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 20276)
    this:RemoveLocalGadget(73078071, "1")
    this:RemoveLocalGadget(73078073, "1")
    this:ActorDestroy("Q600211Trigger")
end

function Quest6002:OnSubFailed600211(arg1)
    print("OnSubFailed600211")
    this:RemoveLocalGadget(73078071, "1")
    this:RemoveLocalGadget(73078073, "1")
    this:ActorDestroy("Q600211Trigger")
end

function Quest6002:OnSubStart600245(arg1)
    print("OnSubStart600245")
end

function Quest6002:OnSubFinish600245(arg1)
    print("OnSubFinish600245")
end

function Quest6002:OnSubStart600209(arg1)
    print("OnSubStart600209")
    this:DeployStoryByQuest(110600203)
    actorMgr:CreateActorWithPos("Q600209Trigger", "Actor/Gadget/Q600209Trigger", 70900002, 0, points._Q600209TriggerPoint_.pos, points._Q600209TriggerPoint_.rot, true, false, 20276)
end

function Quest6002:OnSubFinish600209(arg1)
    print("OnSubFinish600209")
    this:CancelStoryByQuest(110600203)
end

function Quest6002:OnSubFailed600209(arg1)
    print("OnSubFailed600209")
    this:CancelStoryByQuest(110600203)
end

function Quest6002:OnSubStart600212(arg1)
    print("OnSubStart600212")
    actorMgr:CreateActorWithPos("Q600212Trigger", "Actor/Gadget/Q600212Trigger", 70900002, 0, points._Q600212TriggerPoint_.pos, points._Q600212TriggerPoint_.rot, true, false, 20276)
end

function Quest6002:OnSubFinish600212(arg1)
    print("OnSubFinish600212")
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 20276)
end

function Quest6002:OnSubFailed600212(arg1)
    print("OnSubFailed600212")
    this:ActorDestroy("Q600212N1315Trigger")
end

function Quest6002:OnSubStart600237(arg1)
    print("OnSubStart600237")
    actorMgr:CreateActorWithPos("Q600237Trigger", "Actor/Gadget/Q600237Trigger", 70900002, 0, points._Q600237TriggerPoint_.pos, points._Q600237TriggerPoint_.rot, true, false, 20276)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110600201)
    end)
end

function Quest6002:OnSubFinish600237(arg1)
    print("OnSubFinish600237")
    this:SafeDestroyQuestNpc(npcs.Npc15381.alias, 20276)
    this:ActorDestroy("Q600237Trigger")
end

function Quest6002:OnSubFailed600237(arg1)
    print("OnSubFailed600237")
    this:ActorDestroy("Q600237Trigger")
    this:ActionSafeCall(function(arg1)
        this:CancelStoryByQuest(110600201)
    end)
end

function Quest6002:OnSubStart600213(arg1)
    print("OnSubStart600213")
end

function Quest6002:OnSubFinish600213(arg1)
    print("OnSubFinish600213")
end

function Quest6002:OnSubFailed600213(arg1)
    print("OnSubFailed600213")
    this:CancelStoryByQuest(110600201)
end

function Quest6002:OnSubStart600236(arg1)
    print("OnSubStart600236")
end

function Quest6002:OnSubFinish600236(arg1)
    print("OnSubFinish600236")
    this:CancelStoryByQuest(110600201)
end

function Quest6002:OnSubFailed600236(arg1)
    print("OnSubFailed600236")
    this:CancelStoryByQuest(110600201)
end

function Quest6002:OnSubStart600246(arg1)
    print("OnSubStart600246")
end

function Quest6002:OnSubFinish600246(arg1)
    print("OnSubFinish600246")
end

function Quest6002:OnSubStart600214(arg1)
    print("OnSubStart600214")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600214, 0, 50, 1, npcs.Npc1317.id)
    actorMgr:CreateActorWithPos("Q600214Trigger", "Actor/Gadget/Q600214Trigger", 70900002, 0, points._Q600214TriggerPoint_.pos, points._Q600214TriggerPoint_.rot, true, false, 20276)
end

function Quest6002:OnSubFinish600214(arg1)
    print("OnSubFinish600214")
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 20276)
    this:ActorDestroy("Q600214Trigger")
    actorMgr:CreateActorWithPos("Q600214Trigger_1", "Actor/Gadget/Q600214Trigger_1", 70900002, 0, points._Q600214Trigger_1Point_.pos, points._Q600214Trigger_1Point_.rot, true, false, 20276)
end

function Quest6002:OnSubFailed600214(arg1)
    print("OnSubFailed600214")
    this:ActorDestroy("Q600214N1317Trigger")
    this:ActorDestroy("Q600214Trigger")
end

function Quest6002:OnSubStart600239(arg1)
    print("OnSubStart600239")
    this:CreateLocalGadget(73078074, "1", points.Q600239_Gadget73078074_1_Point.pos, points.Q600239_Gadget73078074_1_Point.rot, 20276, nil, nil, false, 0, true)
    actorMgr:CreateActorWithPos("Q600215Trigger", "Actor/Gadget/Q600215Trigger", 70900002, 0, points._Q600215TriggerPoint_.pos, points._Q600215TriggerPoint_.rot, true, false, 20276)
end

function Quest6002:OnSubFinish600239(arg1)
    print("OnSubFinish600239")
    this:RemoveLocalGadget(73078074, "1")
    this:ActorDestroy("Q600214Trigger_1")
end

function Quest6002:OnSubFailed600239(arg1)
    print("OnSubFailed600239")
    this:ActorDestroy("Q600215Trigger")
    this:RemoveLocalGadget(73078074, "1")
    this:ActorDestroy("Q600214Trigger_1")
end

function Quest6002:OnSubStart600247(arg1)
    print("OnSubStart600247")
end

function Quest6002:OnSubFinish600247(arg1)
    print("OnSubFinish600247")
end

function Quest6002:OnSubStart600215(arg1)
    print("OnSubStart600215")
end

function Quest6002:OnSubFinish600215(arg1)
    print("OnSubFinish600215")
    this:QuestNarratorTask(datas.NarratorWithId_600203, nil)
end

function Quest6002:OnSubStart600248(arg1)
    print("OnSubStart600248")
end

function Quest6002:OnSubFinish600248(arg1)
    print("OnSubFinish600248")
end

function Quest6002:OnSubStart600217(arg1)
    print("OnSubStart600217")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600217, 0, 8, 1, npcs.Npc15381.id)
    this:CreateLocalGadget(73078075, "1", points.Q600217_Gadget73078075_1_Point.pos, points.Q600217_Gadget73078075_1_Point.rot, 20276, nil, nil, false, 0, true)
end

function Quest6002:OnSubFinish600217(arg1)
    print("OnSubFinish600217")
    this:SafeDestroyQuestNpc(npcs.Npc15381.alias, 20276)
    this:RemoveLocalGadget(73078075, "1")
end

function Quest6002:OnSubFailed600217(arg1)
    print("OnSubFailed600217")
    this:RemoveLocalGadget(73078075, "1")
    this:ActorDestroy("Q600217N15381Trigger")
end

function Quest6002:OnSubStart600218(arg1)
    print("OnSubStart600218")
    this:CreateLocalGadget(73078076, "1", points.Q600218_Gadget73078076_1_Point.pos, points.Q600218_Gadget73078076_1_Point.rot, 20276, nil, nil, false, 0, true)
    this:CreateLocalGadget(73078077, "1", points.Q600218_Gadget73078077_1_Point.pos, points.Q600218_Gadget73078077_1_Point.rot, 20276, nil, nil, false, 0, true)
    this:CreateLocalGadget(73078078, "1", points.Q600218_Gadget73078078_1_Point.pos, points.Q600218_Gadget73078078_1_Point.rot, 20276, nil, nil, false, 0, true)
end

function Quest6002:OnSubFinish600218(arg1)
    print("OnSubFinish600218")
    this:RemoveLocalGadget(73078076, "1")
    this:RemoveLocalGadget(73078077, "1")
    this:RemoveLocalGadget(73078078, "1")
    this:QuestNarratorTask(datas.NarratorWithId_600204, nil)
end

function Quest6002:OnSubFailed600218(arg1)
    print("OnSubFailed600218")
    this:RemoveLocalGadget(73078076, "1")
    this:RemoveLocalGadget(73078077, "1")
    this:RemoveLocalGadget(73078078, "1")
end

function Quest6002:OnSubStart600249(arg1)
    print("OnSubStart600249")
end

function Quest6002:OnSubFinish600249(arg1)
    print("OnSubFinish600249")
end

function Quest6002:OnSubStart600220(arg1)
    print("OnSubStart600220")
    this:CreateQuestNpc(arg1, npcs.Npc15381.id, 0, false, 0)
    this:CreateLocalGadget(73078079, "1", points.Q600220_Gadget73078079_1_Point.pos, points.Q600220_Gadget73078079_1_Point.rot, 20276, nil, nil, false, 0, true)
    this:CreateLocalGadget(73073019, "1", points.Q600220_Gadget73073019_1_Point.pos, points.Q600220_Gadget73073019_1_Point.rot, 20276, nil, nil, false, 0, true)
end

function Quest6002:OnSubFinish600220(arg1)
    print("OnSubFinish600220")
    this:NpcDestroyImmediately(20276, npcs.Npc15381.alias)
    this:RemoveLocalGadget(73078079, "1")
    this:RemoveLocalGadget(73073019, "1")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_600220, nil, nil, nil)
end

function Quest6002:OnSubFailed600220(arg1)
    print("OnSubFailed600220")
    this:RemoveLocalGadget(73078079, "1")
end

function Quest6002:OnSubStart600221(arg1)
    print("OnSubStart600221")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600221, 0, 20, 1, npcs.Npc1317.id)
end

function Quest6002:OnSubFinish600221(arg1)
    print("OnSubFinish600221")
    this:NpcDestroyImmediately(3, npcs.Npc1317.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_600221, nil, nil, nil)
end

function Quest6002:OnSubStart600232(arg1)
    print("OnSubStart600232")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600232, 0, 10, 1, npcs.Npc15378.id)
end

function Quest6002:OnSubFinish600232(arg1)
    print("OnSubFinish600232")
    this:NpcDestroyImmediately(3, npcs.Npc15378.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_600232, nil, nil, nil)
end

function Quest6002:OnSubStart600233(arg1)
    print("OnSubStart600233")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600233, 0, 20, 1, npcs.Npc1317.id)
end

function Quest6002:OnSubFinish600233(arg1)
    print("OnSubFinish600233")
    this:NpcDestroyImmediately(3, npcs.Npc1317.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_600232, nil, nil, nil)
end

function Quest6002:OnSubStart600222(arg1)
    print("OnSubStart600222")
    this:NpcCreateWithNpcTrigger(npcs.Npc1319_1.id, 0, 10, 600222)
end

function Quest6002:OnSubFinish600222(arg1)
    print("OnSubFinish600222")
    this:SafeDestroyQuestNpc(npcs.Npc1319_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15649.alias, 3)
end

function Quest6002:OnSubStart600227(arg1)
    print("OnSubStart600227")
end

function Quest6002:OnSubFinish600227(arg1)
    print("OnSubFinish600227")
end

function Quest6002:OnSubStart600223(arg1)
    print("OnSubStart600223")
end

function Quest6002:OnSubFinish600223(arg1)
    print("OnSubFinish600223")
end

function Quest6002:OnSubStart600224(arg1)
    print("OnSubStart600224")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600224, 0, 20, 1, npcs.Npc1315.id)
end

function Quest6002:OnSubFinish600224(arg1)
    print("OnSubFinish600224")
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
end

function Quest6002:OnSubStart600235(arg1)
    print("OnSubStart600235")
end

function Quest6002:OnSubFinish600235(arg1)
    print("OnSubFinish600235")
end

function Quest6002:OnSubStart600225(arg1)
    print("OnSubStart600225")
end

function Quest6002:OnSubFinish600225(arg1)
    print("OnSubFinish600225")
    this:QuestNarratorTask(datas.NarratorWithId_600205, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_600210, nil)
    end)
end

function Quest6002:OnSubStart600226(arg1)
    print("OnSubStart600226")
    this:NpcCreateWithNpcTrigger(npcs.Npc15381.id, 0, 5, 600226)
    this:CreateQuestNpc_MaleCond(arg1, npcs.Npc1026.id, npcs.Npc1025.id, 0, 0)
end

function Quest6002:OnSubFinish600226(arg1)
    print("OnSubFinish600226")
    this:SafeDestroyQuestNpc(npcs.Npc15381.alias, 3)
    this:SafeDestroyQuestNpc_MaleCond(npcs.Npc1026.alias, npcs.Npc1025.alias, 3)
end

function Quest6002:OnSubFailed600226(arg1)
    print("OnSubFailed600226")
    this:SafeDestroyQuestNpc_MaleCond(npcs.Npc1026.alias, npcs.Npc1025.alias, 3)
    this:ActorDestroy("Q600226N15381Trigger")
end

function Quest6002:OnSubStart600238(arg1)
    print("OnSubStart600238")
end

function Quest6002:OnSubFinish600238(arg1)
    print("OnSubFinish600238")
end

function Quest6002:OnSubStart600228(arg1)
    print("OnSubStart600228")
    this:NpcCreateWithNpcTrigger(npcs.Npc1316.id, 0, 5, 600228)
    this:CreateLocalGadget(73078020, "1", points.Q600228_Gadget73078020_1_Point.pos, points.Q600228_Gadget73078020_1_Point.rot, 1205, nil, nil, false, 0, true)
    this:CreateLocalGadget(73078020, "2", points.Q600228_Gadget73078020_2_Point.pos, points.Q600228_Gadget73078020_2_Point.rot, 1205, nil, nil, false, 0, true)
    this:CreateLocalGadget(73078020, "3", points.Q600228_Gadget73078020_3_Point.pos, points.Q600228_Gadget73078020_3_Point.rot, 1205, nil, nil, false, 0, true)
    this:CreateLocalGadget(73078021, "1", points.Q600228_Gadget73078021_1_Point.pos, points.Q600228_Gadget73078021_1_Point.rot, 1205, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 6002):SitOnChair(8010, true)
end

function Quest6002:OnSubFinish600228(arg1)
    print("OnSubFinish600228")
    this:NpcDestroyImmediately(1205, npcs.Npc1316.alias)
    this:RemoveLocalGadget(73078020, "1")
    this:RemoveLocalGadget(73078020, "2")
    this:RemoveLocalGadget(73078020, "3")
    this:RemoveLocalGadget(73078021, "1")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_600228, nil, nil, nil)
end

function Quest6002:OnSubStart600234(arg1)
    print("OnSubStart600234")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600234, 0, 25, 1, npcs.Npc1315.id)
end

function Quest6002:OnSubFinish600234(arg1)
    print("OnSubFinish600234")
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
end

return Quest6002
