require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40192 = class("Quest40192", QuestActorProxy)
Quest40192.defaultAlias = "Quest40192"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40192:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40192:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4019209"] = self.OnSubStart4019209,
        ["4019201"] = self.OnSubStart4019201,
        ["4019215"] = self.OnSubStart4019215,
        ["4019202"] = self.OnSubStart4019202,
        ["4019203"] = self.OnSubStart4019203,
        ["4019204"] = self.OnSubStart4019204,
        ["4019210"] = self.OnSubStart4019210,
        ["4019214"] = self.OnSubStart4019214,
        ["4019205"] = self.OnSubStart4019205,
        ["4019216"] = self.OnSubStart4019216,
        ["4019207"] = self.OnSubStart4019207,
        ["4019208"] = self.OnSubStart4019208,
        ["4019206"] = self.OnSubStart4019206,
        ["4019211"] = self.OnSubStart4019211,
        ["4019212"] = self.OnSubStart4019212,
        ["4019213"] = self.OnSubStart4019213,
        ["4019217"] = self.OnSubStart4019217
    }
end

function Quest40192:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4019209"] = self.OnSubFinish4019209,
        ["4019201"] = self.OnSubFinish4019201,
        ["4019215"] = self.OnSubFinish4019215,
        ["4019202"] = self.OnSubFinish4019202,
        ["4019203"] = self.OnSubFinish4019203,
        ["4019204"] = self.OnSubFinish4019204,
        ["4019210"] = self.OnSubFinish4019210,
        ["4019214"] = self.OnSubFinish4019214,
        ["4019205"] = self.OnSubFinish4019205,
        ["4019216"] = self.OnSubFinish4019216,
        ["4019207"] = self.OnSubFinish4019207,
        ["4019208"] = self.OnSubFinish4019208,
        ["4019206"] = self.OnSubFinish4019206,
        ["4019211"] = self.OnSubFinish4019211,
        ["4019212"] = self.OnSubFinish4019212,
        ["4019213"] = self.OnSubFinish4019213,
        ["4019217"] = self.OnSubFinish4019217
    }
end

function Quest40192:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4019204"] = self.OnSubFailed4019204}
end

function Quest40192:Start()
    print("Start")
end

function Quest40192:OnDestroy()
    print("OnDestroy")
end

function Quest40192:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40192:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40192:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1040.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1013.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15132_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1035.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1044.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1033.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1049.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15134_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15133_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12276.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12277.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12278.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1037.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1039.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12061.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12098.alias, 3)
    this:ActorDestroy("Q4019205Trigger")
    this:ActorDestroy("Q4019216Trigger")
    this:ActorDestroy("Q4019208Trigger")
    this:ActorDestroy("Q4019206Trigger")
    this:DestroyNpcTrigger("Q4019201N1034Trigger")
    this:DestroyNpcTrigger("Q4019208N1034Trigger")
    this:BanCrowdNpc(3220, 23, datas.Renqun_wutaiqian, false)
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1038.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1047.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1057.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15078.alias, 3)
end

function Quest40192:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40192:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40192:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40192:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40192:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest40192:OnSubStart4019209(arg1)
    print("OnSubStart4019209")
end

function Quest40192:OnSubFinish4019209(arg1)
    print("OnSubFinish4019209")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4019201, nil)
    end)
end

function Quest40192:OnSubStart4019201(arg1)
    print("OnSubStart4019201")
    this:NpcCreateWithNpcTrigger(npcs.Npc1034.id, 0, 15, 4019201)
    this:CreateQuestNpc(arg1, npcs.Npc1038.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1047.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1047.alias, 40192):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1057.id, 0, false, 0)
end

function Quest40192:OnSubFinish4019201(arg1)
    print("OnSubFinish4019201")
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1038.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1047.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1057.alias, 3)
end

function Quest40192:OnSubStart4019215(arg1)
    print("OnSubStart4019215")
    this:CreateQuestNpc(arg1, npcs.Npc1013.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1033.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1033.alias, 40192):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1035.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1035.alias, 40192):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1037.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1039.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1040.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1044.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1049.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1049.alias, 40192):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc12061.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12098.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12276.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12277.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12278.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc12278.alias, 40192):DoFreeStyle(1282, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15078.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15132_1.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15134_1.id, arg1)
    this:CreateQuestNpc(arg1, npcs.Npc15133_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15133_1.alias, 40192):DoFreeStyle(1, true, nil, true, true, false, true)
    local subQuestState = self:GetSubQuestState(4019204)
    if subQuestState == 3 then
        this:CreateQuestNpc(arg1, npcs.Npc1097.id, 0, false, 0)
    elseif subQuestState == 4 then
        this:CreateQuestNpc(arg1, npcs.Npc1097.id, 0, false, 0)
    end

    this:GetQuestNpcActor(npcs.Npc1040.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1035.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1033.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1037.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1013.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1039.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1044.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1049.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1097.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12061.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12098.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12276.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12277.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12278.alias, 40192):DisableInteeHeadCtrl(true)
end

function Quest40192:OnSubFinish4019215(arg1)
    print("OnSubFinish4019215")
end

function Quest40192:OnSubStart4019202(arg1)
    print("OnSubStart4019202")
end

function Quest40192:OnSubFinish4019202(arg1)
    print("OnSubFinish4019202")
end

function Quest40192:OnSubStart4019203(arg1)
    print("OnSubStart4019203")
end

function Quest40192:OnSubFinish4019203(arg1)
    print("OnSubFinish4019203")
end

function Quest40192:OnSubStart4019204(arg1)
    print("OnSubStart4019204")
end

function Quest40192:OnSubFinish4019204(arg1)
    print("OnSubFinish4019204")
end

function Quest40192:OnSubFailed4019204(arg1)
    print("OnSubFailed4019204")
    this:CreateQuestNpc(arg1, npcs.Npc1097.id, 0, false, 0)
end

function Quest40192:OnSubStart4019210(arg1)
    print("OnSubStart4019210")
end

function Quest40192:OnSubFinish4019210(arg1)
    print("OnSubFinish4019210")
end

function Quest40192:OnSubStart4019214(arg1)
    print("OnSubStart4019214")
end

function Quest40192:OnSubFinish4019214(arg1)
    print("OnSubFinish4019214")
end

function Quest40192:OnSubStart4019205(arg1)
    print("OnSubStart4019205")
    this:GetQuestNpcActor(npcs.Npc1035.alias, 40192):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1033.alias, 40192):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1049.alias, 40192):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc12278.alias, 40192):DoFreeStyle(1282, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15133_1.alias, 40192):DoFreeStyle(1, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q4019205Trigger", "Actor/Gadget/Q4019205Trigger", 70900002, 0, points._Q4019205TriggerPoint_.pos, points._Q4019205TriggerPoint_.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1040.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1035.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1033.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1037.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1013.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1039.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1044.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1049.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1097.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12061.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12098.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12276.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12277.alias, 40192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12278.alias, 40192):DisableInteeHeadCtrl(true)
end

function Quest40192:OnSubFinish4019205(arg1)
    print("OnSubFinish4019205")
    this:NpcDestroyImmediately(3, npcs.Npc15078.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1013.alias)
    this:NpcDestroyImmediately(3, npcs.Npc15132_1.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1040.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1035.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1044.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1033.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1049.alias)
    this:NpcDestroyImmediately(3, npcs.Npc15134_1.alias)
    this:NpcDestroyImmediately(3, npcs.Npc12276.alias)
    this:NpcDestroyImmediately(3, npcs.Npc12277.alias)
    this:NpcDestroyImmediately(3, npcs.Npc12278.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1037.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1039.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1097.alias)
    this:NpcDestroyImmediately(3, npcs.Npc12061.alias)
    this:NpcDestroyImmediately(3, npcs.Npc12098.alias)
    this:NpcDestroyImmediately(3, npcs.Npc15133_1.alias)
end

function Quest40192:OnSubStart4019216(arg1)
    print("OnSubStart4019216")
    actorMgr:CreateActorWithPos("Q4019216Trigger", "Actor/Gadget/Q4019216Trigger", 70900002, 0, points._Q4019216TriggerPoint_.pos, points._Q4019216TriggerPoint_.rot, true, false, 3)
end

function Quest40192:OnSubFinish4019216(arg1)
    print("OnSubFinish4019216")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ShowTutorialDialog(2062, nil)
    end)
end

function Quest40192:OnSubStart4019207(arg1)
    print("OnSubStart4019207")
end

function Quest40192:OnSubFinish4019207(arg1)
    print("OnSubFinish4019207")
    this:TransmitPlayerById(arg1, 3, nil, nil, nil)
end

function Quest40192:OnSubStart4019208(arg1)
    print("OnSubStart4019208")
    actorMgr:CreateActorWithPos("Q4019208Trigger", "Actor/Gadget/Q4019208Trigger", 70900002, 0, points._Q4019208TriggerPoint_.pos, points._Q4019208TriggerPoint_.rot, true, false, 3)
end

function Quest40192:OnSubFinish4019208(arg1)
    print("OnSubFinish4019208")
    this:NpcDestroyImmediately(3, npcs.Npc1034.alias)
    this:TransmitPlayerById(arg1, 3, nil, nil, nil)
end

function Quest40192:OnSubStart4019206(arg1)
    print("OnSubStart4019206")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1034.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1040.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1049.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1097.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc12098.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc15078.id, 0, false, 0)
        this:BanCrowdNpc(3220, 23, datas.Renqun_wutaiqian, true)
        actorMgr:CreateActorWithPos("Q4019206Trigger", "Actor/Gadget/Q4019206Trigger", 70900002, 0, points._Q4019206TriggerPoint_.pos, points._Q4019206TriggerPoint_.rot, true, false, 3)
    end)
end

function Quest40192:OnSubFinish4019206(arg1)
    print("OnSubFinish4019206")
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1036.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1040.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1049.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12098.alias, 3)
    this:BanCrowdNpc(3220, 23, datas.Renqun_wutaiqian, false)
end

function Quest40192:OnSubStart4019211(arg1)
    print("OnSubStart4019211")
end

function Quest40192:OnSubFinish4019211(arg1)
    print("OnSubFinish4019211")
end

function Quest40192:OnSubStart4019212(arg1)
    print("OnSubStart4019212")
end

function Quest40192:OnSubFinish4019212(arg1)
    print("OnSubFinish4019212")
end

function Quest40192:OnSubStart4019213(arg1)
    print("OnSubStart4019213")
end

function Quest40192:OnSubFinish4019213(arg1)
    print("OnSubFinish4019213")
end

function Quest40192:OnSubStart4019217(arg1)
    print("OnSubStart4019217")
    actorUtils.FinishQuestID(false, 4019217)
end

function Quest40192:OnSubFinish4019217(arg1)
    print("OnSubFinish4019217")
end

return Quest40192
