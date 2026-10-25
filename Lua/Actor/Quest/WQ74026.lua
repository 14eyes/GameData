require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74026 = class("Quest74026", QuestActorProxy)
Quest74026.defaultAlias = "Quest74026"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74026:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74026:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7402601"] = self.OnSubStart7402601,
        ["7402602"] = self.OnSubStart7402602,
        ["7402603"] = self.OnSubStart7402603,
        ["7402641"] = self.OnSubStart7402641,
        ["7402604"] = self.OnSubStart7402604,
        ["7402605"] = self.OnSubStart7402605,
        ["7402606"] = self.OnSubStart7402606,
        ["7402607"] = self.OnSubStart7402607,
        ["7402608"] = self.OnSubStart7402608,
        ["7402609"] = self.OnSubStart7402609,
        ["7402610"] = self.OnSubStart7402610,
        ["7402611"] = self.OnSubStart7402611,
        ["7402636"] = self.OnSubStart7402636,
        ["7402612"] = self.OnSubStart7402612,
        ["7402632"] = self.OnSubStart7402632,
        ["7402637"] = self.OnSubStart7402637,
        ["7402633"] = self.OnSubStart7402633,
        ["7402635"] = self.OnSubStart7402635,
        ["7402629"] = self.OnSubStart7402629,
        ["7402638"] = self.OnSubStart7402638,
        ["7402613"] = self.OnSubStart7402613,
        ["7402631"] = self.OnSubStart7402631,
        ["7402639"] = self.OnSubStart7402639,
        ["7402628"] = self.OnSubStart7402628,
        ["7402614"] = self.OnSubStart7402614,
        ["7402630"] = self.OnSubStart7402630,
        ["7402640"] = self.OnSubStart7402640,
        ["7402615"] = self.OnSubStart7402615,
        ["7402616"] = self.OnSubStart7402616,
        ["7402617"] = self.OnSubStart7402617,
        ["7402618"] = self.OnSubStart7402618,
        ["7402619"] = self.OnSubStart7402619,
        ["7402624"] = self.OnSubStart7402624,
        ["7402625"] = self.OnSubStart7402625,
        ["7402626"] = self.OnSubStart7402626,
        ["7402627"] = self.OnSubStart7402627,
        ["7402642"] = self.OnSubStart7402642,
        ["7402620"] = self.OnSubStart7402620,
        ["7402621"] = self.OnSubStart7402621,
        ["7402622"] = self.OnSubStart7402622,
        ["7402643"] = self.OnSubStart7402643,
        ["7402623"] = self.OnSubStart7402623
    }
end

function Quest74026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7402601"] = self.OnSubFinish7402601,
        ["7402602"] = self.OnSubFinish7402602,
        ["7402603"] = self.OnSubFinish7402603,
        ["7402641"] = self.OnSubFinish7402641,
        ["7402604"] = self.OnSubFinish7402604,
        ["7402605"] = self.OnSubFinish7402605,
        ["7402606"] = self.OnSubFinish7402606,
        ["7402607"] = self.OnSubFinish7402607,
        ["7402608"] = self.OnSubFinish7402608,
        ["7402609"] = self.OnSubFinish7402609,
        ["7402610"] = self.OnSubFinish7402610,
        ["7402611"] = self.OnSubFinish7402611,
        ["7402636"] = self.OnSubFinish7402636,
        ["7402612"] = self.OnSubFinish7402612,
        ["7402632"] = self.OnSubFinish7402632,
        ["7402637"] = self.OnSubFinish7402637,
        ["7402633"] = self.OnSubFinish7402633,
        ["7402635"] = self.OnSubFinish7402635,
        ["7402629"] = self.OnSubFinish7402629,
        ["7402638"] = self.OnSubFinish7402638,
        ["7402613"] = self.OnSubFinish7402613,
        ["7402631"] = self.OnSubFinish7402631,
        ["7402639"] = self.OnSubFinish7402639,
        ["7402628"] = self.OnSubFinish7402628,
        ["7402614"] = self.OnSubFinish7402614,
        ["7402630"] = self.OnSubFinish7402630,
        ["7402640"] = self.OnSubFinish7402640,
        ["7402615"] = self.OnSubFinish7402615,
        ["7402616"] = self.OnSubFinish7402616,
        ["7402617"] = self.OnSubFinish7402617,
        ["7402618"] = self.OnSubFinish7402618,
        ["7402619"] = self.OnSubFinish7402619,
        ["7402624"] = self.OnSubFinish7402624,
        ["7402625"] = self.OnSubFinish7402625,
        ["7402626"] = self.OnSubFinish7402626,
        ["7402627"] = self.OnSubFinish7402627,
        ["7402642"] = self.OnSubFinish7402642,
        ["7402620"] = self.OnSubFinish7402620,
        ["7402621"] = self.OnSubFinish7402621,
        ["7402622"] = self.OnSubFinish7402622,
        ["7402643"] = self.OnSubFinish7402643,
        ["7402623"] = self.OnSubFinish7402623
    }
end

function Quest74026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74026:Start()
    print("Start")
end

function Quest74026:OnDestroy()
    print("OnDestroy")
end

function Quest74026:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74026:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74026:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74026:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74026:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74026:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest74026:OnSubStart7402601(arg1)
    print("OnSubStart7402601")
    actorUtils.FinishQuestID(false, 7402601)
end

function Quest74026:OnSubFinish7402601(arg1)
    print("OnSubFinish7402601")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.out, 3, nil, nil)
end

function Quest74026:OnSubStart7402602(arg1)
    print("OnSubStart7402602")
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21034Data.alias)
    questNpcActor:DoFreeStyle(1060, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21048Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5248Data.id, 0)
    questNpcActor:DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc21048Data.alias):DisableInteeHeadCtrl(false)
end

function Quest74026:OnSubFinish7402602(arg1)
    print("OnSubFinish7402602")
    this:GetQuestNpcActor(npcs.Npc21034Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc21048Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc21034Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21048Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5248Data.alias, 3)
end

function Quest74026:OnSubStart7402603(arg1)
    print("OnSubStart7402603")
end

function Quest74026:OnSubFinish7402603(arg1)
    print("OnSubFinish7402603")
end

function Quest74026:OnSubStart7402641(arg1)
    print("OnSubStart7402641")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.FightRobot, function(arg1)
            actorUtils.FinishQuestID(false, 7402641)
        end, 74026)
    end)
end

function Quest74026:OnSubFinish7402641(arg1)
    print("OnSubFinish7402641")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.NullText, 1, nil, nil)
end

function Quest74026:OnSubStart7402604(arg1)
    print("OnSubStart7402604")
    this:CreateQuestNpcWithTrigger("Q7402604Trigger", 7402604, npcs.Npc21048Data.id, 1, 10)
end

function Quest74026:OnSubFinish7402604(arg1)
    print("OnSubFinish7402604")
end

function Quest74026:OnSubStart7402605(arg1)
    print("OnSubStart7402605")
end

function Quest74026:OnSubFinish7402605(arg1)
    print("OnSubFinish7402605")
end

function Quest74026:OnSubStart7402606(arg1)
    print("OnSubStart7402606")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21034Data.id, 0, npcs.Npc21034Data.alias)
    this:CreateQuestNpc(arg1, npcs.Npc5248Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21072Data.id, 0)
end

function Quest74026:OnSubFinish7402606(arg1)
    print("OnSubFinish7402606")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.BackIn, 3, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc21034Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5248Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21072Data.alias, 3)
end

function Quest74026:OnSubStart7402607(arg1)
    print("OnSubStart7402607")
    this:CreateQuestNpcWithTrigger("Q7402607Trigger", 7402607, npcs.Npc5202Data.id, 1, 6)
end

function Quest74026:OnSubFinish7402607(arg1)
    print("OnSubFinish7402607")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.FindKate, nil, 74026)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc5202Data.alias, 3)
end

function Quest74026:OnSubStart7402608(arg1)
    print("OnSubStart7402608")
    this:CreateQuestNpc(arg1, npcs.Npc5248Data.id, 0)
    actorMgr:CreateActorWithPos("Q7402608Trigger", "Actor/Gadget/Q7402608Trigger", 70900002, 0, points.TPos_Q7402608Trigger.pos, points.TPos_Q7402608Trigger.rot, true, false, 3)
end

function Quest74026:OnSubFinish7402608(arg1)
    print("OnSubFinish7402608")
end

function Quest74026:OnSubStart7402609(arg1)
    print("OnSubStart7402609")
    this:CreateQuestNpc(arg1, npcs.Npc21049Data.id, 0)
    actorMgr:CreateActorWithPos("Q7402609Trigger", "Actor/Gadget/Q7402609Trigger", 70900002, 0, points.TPos_Q7402609Trigger.pos, points.TPos_Q7402609Trigger.rot, true, false, 3)
end

function Quest74026:OnSubFinish7402609(arg1)
    print("OnSubFinish7402609")
    this:SafeDestroyQuestNpc(npcs.Npc21049Data.alias, 3)
end

function Quest74026:OnSubStart7402610(arg1)
    print("OnSubStart7402610")
    this:CreateQuestNpc(arg1, npcs.Npc21172Data.id, 0)
end

function Quest74026:OnSubFinish7402610(arg1)
    print("OnSubFinish7402610")
    this:SafeDestroyQuestNpc(npcs.Npc5248Data.alias, 3)
end

function Quest74026:OnSubStart7402611(arg1)
    print("OnSubStart7402611")
    this:CreateQuestNpc(arg1, npcs.Npc21052Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc21107Data.id, 7402611, 0, 3)
    this:CreateQuestNpc(arg1, npcs.Npc21172Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5218Data.alias, 1, true)
    self:ExitCombatSneakMode()
end

function Quest74026:OnSubFinish7402611(arg1)
    print("OnSubFinish7402611")
    this:PlayerEnterDungeonPointWithDialogs(945, 2193, 7402611, 1, datas.NullText, 3, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc21052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21107Data.alias, 3)
end

function Quest74026:OnSubStart7402636(arg1)
    print("OnSubStart7402636")
    actorMgr:CreateActorWithPos("Q7402636Trigger", "Actor/Gadget/Q7402636Trigger", 70900002, 0, points.TPos_Q7402636Trigger.pos, points.TPos_Q7402636Trigger.rot, true, false, 20188)
end

function Quest74026:OnSubFinish7402636(arg1)
    print("OnSubFinish7402636")
end

function Quest74026:OnSubStart7402612(arg1)
    print("OnSubStart7402612")
    actorMgr:CreateActorWithPos("Q7402612Trigger", "Actor/Gadget/Q7402612Trigger", 70900002, 0, points.TPos_Q7402612Trigger.pos, points.TPos_Q7402612Trigger.rot, true, false, 20188)
    actorMgr:CreateActorWithPos("Q7402612CS", "Actor/Gadget/Q7402612CS", 70900002, 0, {x = 4386.937, y = 157.557, z = 4641.12}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20188)
    self:EnterCombatSneakMode(25)
end

function Quest74026:OnSubFinish7402612(arg1)
    print("OnSubFinish7402612")
end

function Quest74026:OnSubStart7402632(arg1)
    print("OnSubStart7402632")
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21052Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc21107Data.id, 7402632, 0, 3)
    this:CreateQuestNpc(arg1, npcs.Npc21172Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5218Data.alias, 1, true)
    self:ExitCombatSneakMode()
end

function Quest74026:OnSubFinish7402632(arg1)
    print("OnSubFinish7402632")
    this:PlayerEnterDungeonPointWithDialogs(945, 2193, 7402632, 1, datas.revive1, 5, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc21052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21107Data.alias, 3)
end

function Quest74026:OnSubStart7402637(arg1)
    print("OnSubStart7402637")
    actorMgr:CreateActorWithPos("Q7402637Trigger", "Actor/Gadget/Q7402637Trigger", 70900002, 0, points.TPos_Q7402637Trigger.pos, points.TPos_Q7402637Trigger.rot, true, false, 20188)
end

function Quest74026:OnSubFinish7402637(arg1)
    print("OnSubFinish7402637")
end

function Quest74026:OnSubStart7402633(arg1)
    print("OnSubStart7402633")
    self:EnterCombatSneakMode(25)
end

function Quest74026:OnSubFinish7402633(arg1)
    print("OnSubFinish7402633")
end

function Quest74026:OnSubStart7402635(arg1)
    print("OnSubStart7402635")
    actorMgr:CreateActorWithPos("Q7402635Trigger", "Actor/Gadget/Q7402635Trigger", 70900002, 0, points.TPos_Q7402635Trigger.pos, points.TPos_Q7402635Trigger.rot, true, false, 20188)
end

function Quest74026:OnSubFinish7402635(arg1)
    print("OnSubFinish7402635")
end

function Quest74026:OnSubStart7402629(arg1)
    print("OnSubStart7402629")
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21052Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc21107Data.id, 7402629, 0, 3)
    this:CreateQuestNpc(arg1, npcs.Npc21172Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5218Data.alias, 1, true)
    self:ExitCombatSneakMode()
end

function Quest74026:OnSubFinish7402629(arg1)
    print("OnSubFinish7402629")
    this:PlayerEnterDungeonPointWithDialogs(945, 2193, 7402629, 1, datas.revive2, 5, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc21052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21107Data.alias, 3)
end

function Quest74026:OnSubStart7402638(arg1)
    print("OnSubStart7402638")
    actorMgr:CreateActorWithPos("Q7402638Trigger", "Actor/Gadget/Q7402638Trigger", 70900002, 0, points.TPos_Q7402638Trigger.pos, points.TPos_Q7402638Trigger.rot, true, false, 20188)
end

function Quest74026:OnSubFinish7402638(arg1)
    print("OnSubFinish7402638")
end

function Quest74026:OnSubStart7402613(arg1)
    print("OnSubStart7402613")
    actorMgr:CreateActorWithPos("Q7402613Trigger", "Actor/Gadget/Q7402613Trigger", 70900002, 0, points.TPos_Q7402613Trigger.pos, points.TPos_Q7402613Trigger.rot, true, false, 20188)
    self:EnterCombatSneakMode(25)
end

function Quest74026:OnSubFinish7402613(arg1)
    print("OnSubFinish7402613")
end

function Quest74026:OnSubStart7402631(arg1)
    print("OnSubStart7402631")
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21052Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc21107Data.id, 7402631, 0, 3)
    this:CreateQuestNpc(arg1, npcs.Npc21172Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5218Data.alias, 1, true)
    self:ExitCombatSneakMode()
end

function Quest74026:OnSubFinish7402631(arg1)
    print("OnSubFinish7402631")
    this:PlayerEnterDungeonPointWithDialogs(945, 2193, 7402631, 1, datas.revive2, 5, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc21052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21107Data.alias, 3)
end

function Quest74026:OnSubStart7402639(arg1)
    print("OnSubStart7402639")
    actorMgr:CreateActorWithPos("Q7402639Trigger", "Actor/Gadget/Q7402639Trigger", 70900002, 0, points.TPos_Q7402639Trigger.pos, points.TPos_Q7402639Trigger.rot, true, false, 20188)
end

function Quest74026:OnSubFinish7402639(arg1)
    print("OnSubFinish7402639")
end

function Quest74026:OnSubStart7402628(arg1)
    print("OnSubStart7402628")
    self:EnterCombatSneakMode(25)
end

function Quest74026:OnSubFinish7402628(arg1)
    print("OnSubFinish7402628")
end

function Quest74026:OnSubStart7402614(arg1)
    print("OnSubStart7402614")
    actorMgr:CreateActorWithPos("Q7402614Trigger", "Actor/Gadget/Q7402614Trigger", 70900002, 0, points.TPos_Q7402614Trigger.pos, points.TPos_Q7402614Trigger.rot, true, false, 20188)
end

function Quest74026:OnSubFinish7402614(arg1)
    print("OnSubFinish7402614")
end

function Quest74026:OnSubStart7402630(arg1)
    print("OnSubStart7402630")
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21052Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc21107Data.id, 7402630, 0, 3)
    this:CreateQuestNpc(arg1, npcs.Npc21172Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5218Data.alias, 1, true)
    self:ExitCombatSneakMode()
end

function Quest74026:OnSubFinish7402630(arg1)
    print("OnSubFinish7402630")
    this:PlayerEnterDungeonPointWithDialogs(945, 2193, 7402630, 1, datas.revive3, 5, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc21052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21107Data.alias, 3)
end

function Quest74026:OnSubStart7402640(arg1)
    print("OnSubStart7402640")
    actorMgr:CreateActorWithPos("Q7402640Trigger", "Actor/Gadget/Q7402640Trigger", 70900002, 0, points.TPos_Q7402640Trigger.pos, points.TPos_Q7402640Trigger.rot, true, false, 20188)
end

function Quest74026:OnSubFinish7402640(arg1)
    print("OnSubFinish7402640")
end

function Quest74026:OnSubStart7402615(arg1)
    print("OnSubStart7402615")
    actorMgr:CreateActorWithPos("Q7402615Trigger", "Actor/Gadget/Q7402615Trigger", 70900002, 0, points.TPos_Q7402615Trigger.pos, points.TPos_Q7402615Trigger.rot, true, false, 20188)
    self:EnterCombatSneakMode(25)
end

function Quest74026:OnSubFinish7402615(arg1)
    print("OnSubFinish7402615")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.NullText, 1, nil, nil)
end

function Quest74026:OnSubStart7402616(arg1)
    print("OnSubStart7402616")
    this:DailyNpcSafeHideSelf(npcs.Npc5242Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7402616Trigger", "Actor/Gadget/Q7402616Trigger", 70900002, 0, points.TPos_Q7402616Trigger.pos, points.TPos_Q7402616Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7402616Trigger1", "Actor/Gadget/Q7402616Trigger1", 70900002, 0, {x = 4598.3, y = -47.9, z = 4701.6}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    self:ExitCombatSneakMode()
end

function Quest74026:OnSubFinish7402616(arg1)
    print("OnSubFinish7402616")
end

function Quest74026:OnSubStart7402617(arg1)
    print("OnSubStart7402617")
    this:DailyNpcSafeHideSelf(npcs.Npc5242Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7402617Trigger", "Actor/Gadget/Q7402617Trigger", 70900002, 0, points.TPos_Q7402617Trigger.pos, points.TPos_Q7402617Trigger.rot, true, false, 3)
end

function Quest74026:OnSubFinish7402617(arg1)
    print("OnSubFinish7402617")
end

function Quest74026:OnSubStart7402618(arg1)
    print("OnSubStart7402618")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21034Data.id, 0, npcs.Npc21034Data.alias)
    this:CreateQuestNpc(arg1, npcs.Npc21172Data.id, 0)
end

function Quest74026:OnSubFinish7402618(arg1)
    print("OnSubFinish7402618")
end

function Quest74026:OnSubStart7402619(arg1)
    print("OnSubStart7402619")
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21172Data.id, 0)
end

function Quest74026:OnSubFinish7402619(arg1)
    print("OnSubFinish7402619")
    this:SafeDestroyQuestNpc(npcs.Npc21034Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21172Data.alias, 3)
end

function Quest74026:OnSubStart7402624(arg1)
    print("OnSubStart7402624")
end

function Quest74026:OnSubFinish7402624(arg1)
    print("OnSubFinish7402624")
end

function Quest74026:OnSubStart7402625(arg1)
    print("OnSubStart7402625")
end

function Quest74026:OnSubFinish7402625(arg1)
    print("OnSubFinish7402625")
end

function Quest74026:OnSubStart7402626(arg1)
    print("OnSubStart7402626")
end

function Quest74026:OnSubFinish7402626(arg1)
    print("OnSubFinish7402626")
end

function Quest74026:OnSubStart7402627(arg1)
    print("OnSubStart7402627")
end

function Quest74026:OnSubFinish7402627(arg1)
    print("OnSubFinish7402627")
end

function Quest74026:OnSubStart7402642(arg1)
    print("OnSubStart7402642")
    actorMgr:CreateActorWithPos("Q7402642Trigger", "Actor/Gadget/Q7402642Trigger", 70900002, 0, points.TPos_Q7402642Trigger.pos, points.TPos_Q7402642Trigger.rot, true, false, 3)
end

function Quest74026:OnSubFinish7402642(arg1)
    print("OnSubFinish7402642")
end

function Quest74026:OnSubStart7402620(arg1)
    print("OnSubStart7402620")
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21072Data.id, 0)
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21172Data.id, 0, npcs.Npc21172Data.alias)
end

function Quest74026:OnSubFinish7402620(arg1)
    print("OnSubFinish7402620")
    this:SafeDestroyQuestNpc(npcs.Npc21034Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21072Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21172Data.alias, 3)
end

function Quest74026:OnSubStart7402621(arg1)
    print("OnSubStart7402621")
end

function Quest74026:OnSubFinish7402621(arg1)
    print("OnSubFinish7402621")
end

function Quest74026:OnSubStart7402622(arg1)
    print("OnSubStart7402622")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21034Data.id, 0, npcs.Npc21034Data.alias)
    this:CreateQuestNpc(arg1, npcs.Npc21072Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21172Data.id, 0)
end

function Quest74026:OnSubFinish7402622(arg1)
    print("OnSubFinish7402622")
    this:SafeDestroyQuestNpc(npcs.Npc21034Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21072Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21172Data.alias, 3)
end

function Quest74026:OnSubStart7402643(arg1)
    print("OnSubStart7402643")
    actorMgr:CreateActorWithPos("Q7402643Trigger", "Actor/Gadget/Q7402643Trigger", 70900002, 0, points.TPos_Q7402643Trigger.pos, points.TPos_Q7402643Trigger.rot, true, false, 3)
end

function Quest74026:OnSubFinish7402643(arg1)
    print("OnSubFinish7402643")
end

function Quest74026:OnSubStart7402623(arg1)
    print("OnSubStart7402623")
    actorMgr:CreateActorWithPos("Q7402623Trigger", "Actor/Gadget/Q7402623Trigger", 70900002, 0, points.TPos_Q7402623Trigger.pos, points.TPos_Q7402623Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7402650Trigger", "Actor/Gadget/Q7402650Trigger", 70900002, 0, {x = 4779.772, y = 28.063, z = 4696.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74026:OnSubFinish7402623(arg1)
    print("OnSubFinish7402623")
end

return Quest74026
