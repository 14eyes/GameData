require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40202 = class("Quest40202", QuestActorProxy)
Quest40202.defaultAlias = "Quest40202"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40202:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40202:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4020201"] = self.OnSubStart4020201,
        ["4020202"] = self.OnSubStart4020202,
        ["4020210"] = self.OnSubStart4020210,
        ["4020212"] = self.OnSubStart4020212,
        ["4020203"] = self.OnSubStart4020203,
        ["4020217"] = self.OnSubStart4020217,
        ["4020218"] = self.OnSubStart4020218,
        ["4020216"] = self.OnSubStart4020216,
        ["4020211"] = self.OnSubStart4020211,
        ["4020215"] = self.OnSubStart4020215,
        ["4020204"] = self.OnSubStart4020204,
        ["4020214"] = self.OnSubStart4020214,
        ["4020205"] = self.OnSubStart4020205,
        ["4020213"] = self.OnSubStart4020213,
        ["4020208"] = self.OnSubStart4020208,
        ["4020209"] = self.OnSubStart4020209,
        ["4020206"] = self.OnSubStart4020206,
        ["4020207"] = self.OnSubStart4020207
    }
end

function Quest40202:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4020201"] = self.OnSubFinish4020201,
        ["4020202"] = self.OnSubFinish4020202,
        ["4020210"] = self.OnSubFinish4020210,
        ["4020212"] = self.OnSubFinish4020212,
        ["4020203"] = self.OnSubFinish4020203,
        ["4020217"] = self.OnSubFinish4020217,
        ["4020218"] = self.OnSubFinish4020218,
        ["4020216"] = self.OnSubFinish4020216,
        ["4020211"] = self.OnSubFinish4020211,
        ["4020215"] = self.OnSubFinish4020215,
        ["4020204"] = self.OnSubFinish4020204,
        ["4020214"] = self.OnSubFinish4020214,
        ["4020205"] = self.OnSubFinish4020205,
        ["4020213"] = self.OnSubFinish4020213,
        ["4020208"] = self.OnSubFinish4020208,
        ["4020209"] = self.OnSubFinish4020209,
        ["4020206"] = self.OnSubFinish4020206,
        ["4020207"] = self.OnSubFinish4020207
    }
end

function Quest40202:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40202:Start()
    print("Start")
end

function Quest40202:OnDestroy()
    print("OnDestroy")
end

function Quest40202:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40202:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40202:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc15401.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2613.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30823.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15404.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15405.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2613.alias, 1203)
    this:SafeDestroyQuestNpc(npcs.Npc15421.alias, 1203)
    this:RemoveLocalGadget(70900201, "1")
    this:ActorDestroy("Q4020204Trigger")
    this:DestroyNpcTrigger("Q4020207N2613Trigger")
    this:DestroyNpcTrigger("Q4020210N2613Trigger")
    this:DestroyNpcTrigger("Q4020215N2613Trigger")
end

function Quest40202:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4020204Trigger")
end

function Quest40202:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40202:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest40202:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40202:OnSubStart4020201(arg1)
    print("OnSubStart4020201")
end

function Quest40202:OnSubFinish4020201(arg1)
    print("OnSubFinish4020201")
    this:QuestNarratorTask(datas.NarratorWithId4020201, nil)
end

function Quest40202:OnSubStart4020202(arg1)
    print("OnSubStart4020202")
    this:CreateQuestNpc(arg1, npcs.Npc15401.id, 0, false, 0)
    this:BanCrowdNpc(3401, 5, datas.BANcrowd4020202, true, true)
end

function Quest40202:OnSubFinish4020202(arg1)
    print("OnSubFinish4020202")
    this:SafeDestroyQuestNpc(npcs.Npc15401.alias, 3)
    this:TransmitPlayerByQuestId(4020202, 1, nil, nil, nil)
    this:BanCrowdNpc(3401, 5, datas.BANcrowd4020202, false, true)
end

function Quest40202:OnSubStart4020210(arg1)
    print("OnSubStart4020210")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc2613.id, 0, 4020210, 10, true)
end

function Quest40202:OnSubFinish4020210(arg1)
    print("OnSubFinish4020210")
    this:SafeDestroyQuestNpc(npcs.Npc2613.alias, 1203)
    this:TransmitPlayerByQuestId(4020210, 1, nil, nil, nil)
end

function Quest40202:OnSubStart4020212(arg1)
    print("OnSubStart4020212")
    this:CreateQuestNpc(arg1, npcs.Npc15421.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15404.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15405.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15477.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15478.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15479.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15500.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15504_1.id, 0, false, 0)
    this:CancelStoryByQuest(134020201)
    this:GetQuestNpcActor(npcs.Npc15502_1.alias, 40202):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc15405.alias, 40202):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc15477.alias, 40202):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc15479.alias, 40202):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc15478.alias, 40202):SitOnChair(0, false)
end

function Quest40202:OnSubFinish4020212(arg1)
    print("OnSubFinish4020212")
    this:SafeDestroyQuestNpc(npcs.Npc15421.alias, 1203)
    this:TransmitPlayerByQuestId(4020212, 1, nil, nil, nil)
end

function Quest40202:OnSubStart4020203(arg1)
    print("OnSubStart4020203")
    this:CreateQuestNpc(arg1, npcs.Npc30823.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15502_1.alias, 40202):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc15405.alias, 40202):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc15477.alias, 40202):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc15479.alias, 40202):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc15478.alias, 40202):SitOnChair(0, false)
    this:DeployStoryByQuest(134020201)
end

function Quest40202:OnSubFinish4020203(arg1)
    print("OnSubFinish4020203")
    this:SafeDestroyQuestNpc(npcs.Npc15404.alias, 1203)
    this:SafeDestroyQuestNpc(npcs.Npc15405.alias, 1203)
    this:SafeDestroyQuestNpc(npcs.Npc30823.alias, 1203)
    this:SafeDestroyQuestNpc(npcs.Npc15504_1.alias, 1203)
    this:SafeDestroyQuestNpc(npcs.Npc15477.alias, 1203)
    this:SafeDestroyQuestNpc(npcs.Npc15478.alias, 1203)
    this:SafeDestroyQuestNpc(npcs.Npc15479.alias, 1203)
    this:SafeDestroyQuestNpc(npcs.Npc15500.alias, 1203)
    this:CancelStoryByQuest(134020201)
end

function Quest40202:OnSubStart4020217(arg1)
    print("OnSubStart4020217")
    this:CreateQuestNpc(arg1, npcs.Npc15502_1.id, 0, false, 0)
end

function Quest40202:OnSubFinish4020217(arg1)
    print("OnSubFinish4020217")
    this:SafeDestroyQuestNpc(npcs.Npc15502_1.alias, 1203)
end

function Quest40202:OnSubStart4020218(arg1)
    print("OnSubStart4020218")
    this:CreateQuestNpc(arg1, npcs.Npc15503_1.id, 0, false, 0)
end

function Quest40202:OnSubFinish4020218(arg1)
    print("OnSubFinish4020218")
    this:SafeDestroyQuestNpc(npcs.Npc15503_1.alias, 1203)
end

function Quest40202:OnSubStart4020216(arg1)
    print("OnSubStart4020216")
    actorMgr:CreateActorWithPos("Q4020216Trigger", "Actor/Gadget/Q4020216Trigger", 70900002, 0, points._Q4020216TriggerPoint_.pos, points._Q4020216TriggerPoint_.rot, true, false, 1203)
end

function Quest40202:OnSubFinish4020216(arg1)
    print("OnSubFinish4020216")
end

function Quest40202:OnSubStart4020211(arg1)
    print("OnSubStart4020211")
    this:CreateQuestNpc(arg1, npcs.Npc15401.id, 0, false, 0)
end

function Quest40202:OnSubFinish4020211(arg1)
    print("OnSubFinish4020211")
    this:SafeDestroyQuestNpc(npcs.Npc15401.alias, 3)
    this:TransmitPlayerByQuestId(4020211, 1, nil, nil, nil)
end

function Quest40202:OnSubStart4020215(arg1)
    print("OnSubStart4020215")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4020215, 0, 20, 1, npcs.Npc2613.id)
end

function Quest40202:OnSubFinish4020215(arg1)
    print("OnSubFinish4020215")
    this:SafeDestroyQuestNpc(npcs.Npc2613.alias, 1203)
    this:TransmitPlayerWithDialogTextByQuestId(4020215, 1, datas.DialogIdsData, 4, nil, nil, nil)
end

function Quest40202:OnSubStart4020204(arg1)
    print("OnSubStart4020204")
    this:CreateQuestNpc(arg1, npcs.Npc15404.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15405.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q4020204Trigger", "Actor/Gadget/Q4020204Trigger", 70900002, 0, points._Q4020204TriggerPoint_.pos, points._Q4020204TriggerPoint_.rot, true, false, 3)
end

function Quest40202:OnSubFinish4020204(arg1)
    print("OnSubFinish4020204")
    this:SafeDestroyQuestNpc(npcs.Npc15404.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15405.alias, 3)
end

function Quest40202:OnSubStart4020214(arg1)
    print("OnSubStart4020214")
end

function Quest40202:OnSubFinish4020214(arg1)
    print("OnSubFinish4020214")
end

function Quest40202:OnSubStart4020205(arg1)
    print("OnSubStart4020205")
    this:CreateQuestNpc(arg1, npcs.Npc2613.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30823.id, 0, false, 0)
end

function Quest40202:OnSubFinish4020205(arg1)
    print("OnSubFinish4020205")
end

function Quest40202:OnSubStart4020213(arg1)
    print("OnSubStart4020213")
end

function Quest40202:OnSubFinish4020213(arg1)
    print("OnSubFinish4020213")
    this:TransmitPlayerByQuestId(4020213, 1, nil, nil, nil)
end

function Quest40202:OnSubStart4020208(arg1)
    print("OnSubStart4020208")
end

function Quest40202:OnSubFinish4020208(arg1)
    print("OnSubFinish4020208")
end

function Quest40202:OnSubStart4020209(arg1)
    print("OnSubStart4020209")
    this:CreateQuestNpc(arg1, npcs.Npc2613.id, 0, false, 0)
end

function Quest40202:OnSubFinish4020209(arg1)
    print("OnSubFinish4020209")
    this:SafeDestroyQuestNpc(npcs.Npc2613.alias, 3)
    this:TransmitPlayerByQuestId(4020209, 1, nil, nil, nil)
end

function Quest40202:OnSubStart4020206(arg1)
    print("OnSubStart4020206")
end

function Quest40202:OnSubFinish4020206(arg1)
    print("OnSubFinish4020206")
end

function Quest40202:OnSubStart4020207(arg1)
    print("OnSubStart4020207")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc2613.id, 0, 4020207, 15, true)
end

function Quest40202:OnSubFinish4020207(arg1)
    print("OnSubFinish4020207")
    this:SafeDestroyQuestNpc(npcs.Npc2613.alias, 3)
end

return Quest40202
