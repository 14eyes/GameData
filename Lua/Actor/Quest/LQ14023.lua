require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14023 = class("Quest14023", QuestActorProxy)
Quest14023.defaultAlias = "Quest14023"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest14023:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest14023:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1402301"] = self.OnSubStart1402301,
        ["1402308"] = self.OnSubStart1402308,
        ["1402302"] = self.OnSubStart1402302,
        ["1402303"] = self.OnSubStart1402303,
        ["1402304"] = self.OnSubStart1402304,
        ["1402309"] = self.OnSubStart1402309,
        ["1402305"] = self.OnSubStart1402305,
        ["1402306"] = self.OnSubStart1402306,
        ["1402307"] = self.OnSubStart1402307
    }
end

function Quest14023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1402301"] = self.OnSubFinish1402301,
        ["1402308"] = self.OnSubFinish1402308,
        ["1402302"] = self.OnSubFinish1402302,
        ["1402303"] = self.OnSubFinish1402303,
        ["1402304"] = self.OnSubFinish1402304,
        ["1402309"] = self.OnSubFinish1402309,
        ["1402305"] = self.OnSubFinish1402305,
        ["1402306"] = self.OnSubFinish1402306,
        ["1402307"] = self.OnSubFinish1402307
    }
end

function Quest14023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14023:Start()
    print("Start")
end

function Quest14023:OnDestroy()
    print("OnDestroy")
end

function Quest14023:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14023:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14023:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14023:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14023:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest14023:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest14023:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest14023:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:CancelStoryByQuest(121402305)
    end
end

function Quest14023:OnSubStart1402301(arg1)
    print("OnSubStart1402301")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1071Data.id, 1402301, 0, 20, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
    if this:GetQuestVar(1402301, 1) == 0 then
        this:QuestNarratorTask(datas.Narrator_1402301, function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest14023:OnSubFinish1402301(arg1)
    print("OnSubFinish1402301")
    this:ClearNarratorTask()
    actorUtils.FinishQuestID(false, 402803)
end

function Quest14023:OnSubStart1402308(arg1)
    print("OnSubStart1402308")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1071Data.id, 1402308, 0, 10, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
end

function Quest14023:OnSubFinish1402308(arg1)
    print("OnSubFinish1402308")
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
end

function Quest14023:OnSubStart1402302(arg1)
    print("OnSubStart1402302")
    this:NpcCreateWithNpcTrigger(npcs.Npc13962Data.id, 1402302, 0, 10)
    this:CreateQuestNpc(arg1, npcs.Npc14019Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13966Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc14107Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14108Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13962Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14019Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14107Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest14023:OnSubFinish1402302(arg1)
    print("OnSubFinish1402302")
    this:GetQuestNpcActor(npcs.Npc13962Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14019Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13962Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14019Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13966Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14107Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14108Data.alias):DisableInteeHeadCtrl(true)
end

function Quest14023:OnSubStart1402303(arg1)
    print("OnSubStart1402303")
    this:NpcCreateWithNpcTrigger(npcs.Npc13963Data.id, 1402303, 0, 10)
    this:CreateQuestNpc(arg1, npcs.Npc13965Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc14137Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14138Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc14137Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest14023:OnSubFinish1402303(arg1)
    print("OnSubFinish1402303")
    this:SafeDestroyQuestNpc(npcs.Npc13962Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14019Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13966Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14107Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14108Data.alias, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13963Data.alias)
    questNpcActor:DoFreeStyle(1120, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13965Data.alias):DisableInteeHeadCtrl(true)
end

function Quest14023:OnSubStart1402304(arg1)
    print("OnSubStart1402304")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1071Data.id, 1402304, 0, 10, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
end

function Quest14023:OnSubFinish1402304(arg1)
    print("OnSubFinish1402304")
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13963Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13965Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14137Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14138Data.alias, 3)
end

function Quest14023:OnSubStart1402309(arg1)
    print("OnSubStart1402309")
    this:NpcCreateWithNpcTrigger(npcs.Npc13883Data.id, 1402309, 0, 10)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
end

function Quest14023:OnSubFinish1402309(arg1)
    print("OnSubFinish1402309")
end

function Quest14023:OnSubStart1402305(arg1)
    print("OnSubStart1402305")
    this:NpcCreateWithNpcTrigger(npcs.Npc1071Data.id, 1402305, 0, 10)
    this:CreateQuestNpc(arg1, npcs.Npc13883Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc1074Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
    this:DeployStoryByQuest(121402305)
end

function Quest14023:OnSubFinish1402305(arg1)
    print("OnSubFinish1402305")
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 3)
    this:CancelStoryByQuest(121402305)
end

function Quest14023:OnSubStart1402306(arg1)
    print("OnSubStart1402306")
    this:NpcCreateWithNpcTrigger(npcs.Npc13883Data.id, 1402306, 0, 5)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
    this:DeployStoryByQuest(121402306)
end

function Quest14023:OnSubFinish1402306(arg1)
    print("OnSubFinish1402306")
    this:SafeDestroyQuestNpc(npcs.Npc13883Data.alias, 3)
    this:CancelStoryByQuest(121402306)
    this:LightNotifyTo(npcs.Npc5058Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5059Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5060Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5237Data.alias, 0, true)
end

function Quest14023:OnSubStart1402307(arg1)
    print("OnSubStart1402307")
end

function Quest14023:OnSubFinish1402307(arg1)
    print("OnSubFinish1402307")
end

return Quest14023
