require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76202 = class("Quest76202", QuestActorProxy)
Quest76202.defaultAlias = "Quest76202"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76202:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76202:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7620201"] = self.OnSubStart7620201,
        ["7620202"] = self.OnSubStart7620202,
        ["7620203"] = self.OnSubStart7620203,
        ["7620211"] = self.OnSubStart7620211,
        ["7620204"] = self.OnSubStart7620204,
        ["7620205"] = self.OnSubStart7620205,
        ["7620206"] = self.OnSubStart7620206,
        ["7620207"] = self.OnSubStart7620207,
        ["7620208"] = self.OnSubStart7620208,
        ["7620210"] = self.OnSubStart7620210,
        ["7620209"] = self.OnSubStart7620209
    }
end

function Quest76202:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7620201"] = self.OnSubFinish7620201,
        ["7620202"] = self.OnSubFinish7620202,
        ["7620203"] = self.OnSubFinish7620203,
        ["7620211"] = self.OnSubFinish7620211,
        ["7620204"] = self.OnSubFinish7620204,
        ["7620205"] = self.OnSubFinish7620205,
        ["7620206"] = self.OnSubFinish7620206,
        ["7620207"] = self.OnSubFinish7620207,
        ["7620208"] = self.OnSubFinish7620208,
        ["7620210"] = self.OnSubFinish7620210,
        ["7620209"] = self.OnSubFinish7620209
    }
end

function Quest76202:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7620204"] = self.OnSubFailed7620204,
        ["7620205"] = self.OnSubFailed7620205,
        ["7620206"] = self.OnSubFailed7620206,
        ["7620207"] = self.OnSubFailed7620207,
        ["7620208"] = self.OnSubFailed7620208,
        ["7620210"] = self.OnSubFailed7620210
    }
end

function Quest76202:Start()
    print("Start")
end

function Quest76202:OnDestroy()
    print("OnDestroy")
end

function Quest76202:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76202:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76202:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76202:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7620201Trigger", nil)
    this:ActorDestroy("Q7620206Trigger", 76202)
    this:ActorDestroy("Q7620205Trigger", nil)
    this:ActorDestroy("Q7620210Trigger", 76202)
    this:ActorDestroy("Q7620210Trigger", 76202)
end

function Quest76202:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest76202:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest76202:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76202:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76202:ToLeaveDungeon()
    local questVar = this:GetQuestVar(7620210, 1)
    if questVar == 1 then
        if sceneData.currSceneID == 20349 then
            actorMgr:CreateActorWithPos("Q7620210Trigger", "Actor/Gadget/Q7620210Trigger", 70900002, 0, points._Q7620210TriggerPoint_.pos, points._Q7620210TriggerPoint_.rot, true, false, 20349, nil, 0, 76202)
        end
    elseif questVar == 0 then
        this:CallDelay(3, function(arg1)
            this:ToLeaveDungeon()
        end)
    end
end

function Quest76202:OnSubStart7620201(arg1)
    print("OnSubStart7620201")
    actorMgr:CreateActorWithPos("Q7620201Trigger", "Actor/Gadget/Q7620201Trigger", 70900002, 0, points._Q7620201TriggerPoint_.pos, points._Q7620201TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    if this:GetQuestVar(7620201, 2) == 0 then
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.ShowReminder(1004530015)
            this:SetQuestVarByMainId(2, 1)
        end, true)
    end
end

function Quest76202:OnSubFinish7620201(arg1)
    print("OnSubFinish7620201")
    this:ActorDestroy("Q7620201Trigger", 76202)
end

function Quest76202:OnSubStart7620202(arg1)
    print("OnSubStart7620202")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1322_1.id, 0, 7620202, 30, true)
    this:DeployStoryByQuest(147620200)
end

function Quest76202:OnSubFinish7620202(arg1)
    print("OnSubFinish7620202")
    this:CancelStoryByQuest(147620200)
end

function Quest76202:OnSubStart7620203(arg1)
    print("OnSubStart7620203")
    this:CreateQuestNpc(arg1, npcs.Npc1322_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1322_1.alias, 76202):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc16577.id, 0, false, 0)
end

function Quest76202:OnSubFinish7620203(arg1)
    print("OnSubFinish7620203")
    this:PlayerEnterDungeonPointWithDialogs(2, 1319, 7620203, 1, datas.DialogIdsData_7620203, 2, nil, nil)
    this:NpcDestroyImmediately(1156, npcs.Npc1322_1.alias)
    this:NpcDestroyImmediately(1156, npcs.Npc16577.alias)
end

function Quest76202:OnSubStart7620211(arg1)
    print("OnSubStart7620211")
end

function Quest76202:OnSubFinish7620211(arg1)
    print("OnSubFinish7620211")
end

function Quest76202:OnSubStart7620204(arg1)
    print("OnSubStart7620204")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7620204, 0, 20, 1, npcs.Npc1322_1.id)
end

function Quest76202:OnSubFinish7620204(arg1)
    print("OnSubFinish7620204")
    this:NpcDestroyImmediately(20349, npcs.Npc1322_1.alias)
end

function Quest76202:OnSubFailed7620204(arg1)
    print("OnSubFailed7620204")
    this:RecycleAllRes()
end

function Quest76202:OnSubStart7620205(arg1)
    print("OnSubStart7620205")
    actorMgr:CreateActorWithPos("Q7620205Trigger", "Actor/Gadget/Q7620205Trigger", 70900002, 0, points._Q7620205TriggerPoint_.pos, points._Q7620205TriggerPoint_.rot, true, false, 20349, nil, 0, 76202)
    this:DeployStoryByQuest(147620205)
end

function Quest76202:OnSubFinish7620205(arg1)
    print("OnSubFinish7620205")
end

function Quest76202:OnSubFailed7620205(arg1)
    print("OnSubFailed7620205")
    this:RecycleAllRes()
end

function Quest76202:OnSubStart7620206(arg1)
    print("OnSubStart7620206")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7620206, 0, 15, 1, npcs.Npc1322_1.id)
    actorMgr:CreateActorWithPos("Q7620206Trigger", "Actor/Gadget/Q7620206Trigger", 70900002, 0, points._Q7620206TriggerPoint_.pos, points._Q7620206TriggerPoint_.rot, true, false, 20349, nil, 0, 76202)
end

function Quest76202:OnSubFinish7620206(arg1)
    print("OnSubFinish7620206")
    this:NpcDestroyImmediately(20349, npcs.Npc1322_1.alias)
    this:ActorDestroy("Q7620406Trigger", 76202)
    this:DeployStoryByQuest(147620201)
end

function Quest76202:OnSubFailed7620206(arg1)
    print("OnSubFailed7620206")
    this:RecycleAllRes()
end

function Quest76202:OnSubStart7620207(arg1)
    print("OnSubStart7620207")
end

function Quest76202:OnSubFinish7620207(arg1)
    print("OnSubFinish7620207")
end

function Quest76202:OnSubFailed7620207(arg1)
    print("OnSubFailed7620207")
    this:RecycleAllRes()
end

function Quest76202:OnSubStart7620208(arg1)
    print("OnSubStart7620208")
end

function Quest76202:OnSubFinish7620208(arg1)
    print("OnSubFinish7620208")
end

function Quest76202:OnSubFailed7620208(arg1)
    print("OnSubFailed7620208")
    this:RecycleAllRes()
end

function Quest76202:OnSubStart7620210(arg1)
    print("OnSubStart7620210")
    this:QuestNarratorTask(datas.NarratorWithId7620203, function(arg1)
        this:SetQuestVarByMainId(1, 1)
    end)
end

function Quest76202:OnSubFinish7620210(arg1)
    print("OnSubFinish7620210")
    this:ToLeaveDungeon()
end

function Quest76202:OnSubFailed7620210(arg1)
    print("OnSubFailed7620210")
    this:RecycleAllRes()
end

function Quest76202:OnSubStart7620209(arg1)
    print("OnSubStart7620209")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1322_1.id, 0, 7620209, 15, true)
end

function Quest76202:OnSubFinish7620209(arg1)
    print("OnSubFinish7620209")
    this:NpcDestroyImmediately(1156, npcs.Npc1322_1.alias)
    this:DeployStoryByQuest(147620202)
    this:ClearNarratorTask()
end

return Quest76202
