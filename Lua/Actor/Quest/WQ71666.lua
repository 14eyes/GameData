require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71666 = class("Quest71666", QuestActorProxy)
Quest71666.defaultAlias = "Quest71666"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest71666:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest71666:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7166601"] = self.OnSubStart7166601,
        ["7166602"] = self.OnSubStart7166602,
        ["7166603"] = self.OnSubStart7166603,
        ["7166604"] = self.OnSubStart7166604,
        ["7166606"] = self.OnSubStart7166606,
        ["7166605"] = self.OnSubStart7166605
    }
end

function Quest71666:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7166601"] = self.OnSubFinish7166601,
        ["7166602"] = self.OnSubFinish7166602,
        ["7166603"] = self.OnSubFinish7166603,
        ["7166604"] = self.OnSubFinish7166604,
        ["7166606"] = self.OnSubFinish7166606,
        ["7166605"] = self.OnSubFinish7166605
    }
end

function Quest71666:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7166601"] = self.OnSubFailed7166601,
        ["7166602"] = self.OnSubFailed7166602,
        ["7166603"] = self.OnSubFailed7166603,
        ["7166604"] = self.OnSubFailed7166604,
        ["7166606"] = self.OnSubFailed7166606,
        ["7166605"] = self.OnSubFailed7166605
    }
end

function Quest71666:Start()
    print("Start")
end

function Quest71666:OnDestroy()
    print("OnDestroy")
end

function Quest71666:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71666:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71666:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1049.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1030.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1044.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1043.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30468.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Xiangling.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13875.alias, 3)
    this:LightNotifyTo(npcs.Npc2045.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2055.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2082.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2046.alias, 0, true)
    this:DestroyNpcTrigger("Q7166601N1049Trigger")
    this:DestroyNpcTrigger("Q7166602N1012Trigger")
    this:DestroyNpcTrigger("Q7166603N1049Trigger")
    this:DestroyNpcTrigger("Q7166604N1044Trigger")
    this:DestroyNpcTrigger("Q7166605N1049Trigger")
    this:DestroyNpcTrigger("Q7166606N13875Trigger")
end

function Quest71666:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest71666:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest71666:OnSubStart7166601(arg1)
    print("OnSubStart7166601")
    this:NpcCreateWithNpcTrigger(npcs.Npc1049.id, 7166601, 0, 20)
    this:CreateQuestNpc(arg1, npcs.Npc1030.id, 0)
    this:NotifyTo(npcs.Npc2045.alias, 1, true)
    this:NotifyTo(npcs.Npc2055.alias, 1, true)
    this:NotifyTo(npcs.Npc2082.alias, 1, true)
    this:NotifyTo(npcs.Npc2046.alias, 1, true)
    if this:GetQuestVar(7166601, 0) == 0 then
        this:NarratorOnlyTaskByData(datas.NarratorWithId_7166601, nil, nil)
        this:SetQuestVarByMainId(0, 1)
    end
end

function Quest71666:OnSubFinish7166601(arg1)
    print("OnSubFinish7166601")
    this:StopNarrator()
    this:ClearNarratorTask()
    this:LightNotifyTo(npcs.Npc2055.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2082.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2046.alias, 0, true)
end

function Quest71666:OnSubFailed7166601(arg1)
    print("OnSubFailed7166601")
end

function Quest71666:OnSubStart7166602(arg1)
    print("OnSubStart7166602")
    this:CreateQuestNpc(arg1, npcs.Npc1049.id, 0)
    this:GetQuestNpcActor(npcs.Npc1049.alias, 71666):DoFreeStyle(1190, true, nil, true, true, true, true)
    this:CreateQuestNpc(arg1, npcs.Npc1030.id, 0)
    this:GetQuestNpcActor(npcs.Npc1030.alias, 71666):DoFreeStyle(1220, true, nil, true, true, true, true)
    this:CreateQuestNpc(arg1, npcs.Npc1044.id, 0)
    this:GetQuestNpcActor(npcs.Npc1044.alias, 71666):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1043.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30468.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2045.alias, 1, true)
    this:NpcCreateWithNpcTrigger(npcs.Xiangling.id, 7166602, 0, 25)
    this:GetQuestNpcActor(npcs.Npc1049.alias, 71666):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1030.alias, 71666):DisableInteeHeadCtrl(true)
end

function Quest71666:OnSubFinish7166602(arg1)
    print("OnSubFinish7166602")
    this:SafeDestroyQuestNpc(npcs.Npc1044.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1043.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30468.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Xiangling.alias, 3)
    this:GetQuestNpcActor(npcs.Npc1049.alias, 71666):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1030.alias, 71666):DisableInteeHeadCtrl(false)
end

function Quest71666:OnSubFailed7166602(arg1)
    print("OnSubFailed7166602")
end

function Quest71666:OnSubStart7166603(arg1)
    print("OnSubStart7166603")
    this:NpcCreateWithNpcTrigger(npcs.Npc1049.id, 7166603, 0, 15)
    this:GetQuestNpcActor(npcs.Npc1049.alias, 71666):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1030.id, 0)
    this:GetQuestNpcActor(npcs.Npc1030.alias, 71666):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc2045.alias, 1, true)
end

function Quest71666:OnSubFinish7166603(arg1)
    print("OnSubFinish7166603")
    this:SafeDestroyQuestNpc(npcs.Npc1049.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1030.alias, 3)
end

function Quest71666:OnSubFailed7166603(arg1)
    print("OnSubFailed7166603")
end

function Quest71666:OnSubStart7166604(arg1)
    print("OnSubStart7166604")
    this:NpcCreateWithNpcTrigger(npcs.Npc1044.id, 7166604, 0, 20)
    this:CreateQuestNpc(arg1, npcs.Npc1043.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30468.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2045.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Xiangling.id, 0)
    this:GetQuestNpcActor(npcs.Xiangling.alias, 71666):DoFreeStyle(1190, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Xiangling.alias, 71666):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1043.alias, 71666):DisableInteeHeadCtrl(true)
end

function Quest71666:OnSubFinish7166604(arg1)
    print("OnSubFinish7166604")
    this:SafeDestroyQuestNpc(npcs.Npc1043.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Xiangling.alias, 3)
    this:GetQuestNpcActor(npcs.Xiangling.alias, 71666):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1043.alias, 71666):DisableInteeHeadCtrl(false)
    this:LightNotifyTo(npcs.Npc2045.alias, 0, true)
end

function Quest71666:OnSubFailed7166604(arg1)
    print("OnSubFailed7166604")
end

function Quest71666:OnSubStart7166606(arg1)
    print("OnSubStart7166606")
    this:CreateQuestNpc(arg1, npcs.Npc1049.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1044.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30468.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc13875.id, 7166606, 0, 20)
end

function Quest71666:OnSubFinish7166606(arg1)
    print("OnSubFinish7166606")
    this:SafeDestroyQuestNpc(npcs.Npc13875.alias, 3)
end

function Quest71666:OnSubFailed7166606(arg1)
    print("OnSubFailed7166606")
end

function Quest71666:OnSubStart7166605(arg1)
    print("OnSubStart7166605")
    this:NpcCreateWithNpcTrigger(npcs.Npc1049.id, 7166605, 0, 20)
    this:CreateQuestNpc(arg1, npcs.Npc1044.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30468.id, 0)
end

function Quest71666:OnSubFinish7166605(arg1)
    print("OnSubFinish7166605")
    this:SafeDestroyQuestNpc(npcs.Npc1049.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1044.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30468.alias, 3)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ShowTutorialDialog(978, nil)
    end)
end

function Quest71666:OnSubFailed7166605(arg1)
    print("OnSubFailed7166605")
end

return Quest71666
