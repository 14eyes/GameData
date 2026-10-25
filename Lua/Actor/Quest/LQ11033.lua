require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11033 = class("Quest11033", QuestActorProxy)
Quest11033.defaultAlias = "Quest11033"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest11033:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest11033:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1103301"] = self.OnSubStart1103301,
        ["1103302"] = self.OnSubStart1103302,
        ["1103303"] = self.OnSubStart1103303,
        ["1103304"] = self.OnSubStart1103304,
        ["1103305"] = self.OnSubStart1103305,
        ["1103306"] = self.OnSubStart1103306
    }
end

function Quest11033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1103301"] = self.OnSubFinish1103301,
        ["1103302"] = self.OnSubFinish1103302,
        ["1103303"] = self.OnSubFinish1103303,
        ["1103304"] = self.OnSubFinish1103304,
        ["1103305"] = self.OnSubFinish1103305,
        ["1103306"] = self.OnSubFinish1103306
    }
end

function Quest11033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1103301"] = self.OnSubFailed1103301,
        ["1103302"] = self.OnSubFailed1103302,
        ["1103303"] = self.OnSubFailed1103303,
        ["1103304"] = self.OnSubFailed1103304,
        ["1103305"] = self.OnSubFailed1103305,
        ["1103306"] = self.OnSubFailed1103306
    }
end

function Quest11033:Start()
    print("Start")
end

function Quest11033:OnDestroy()
    print("OnDestroy")
end

function Quest11033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11033:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11033:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest11033:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest11033:OnSubStart1103304(arg1)
    print("OnSubStart1103304")
    self:QuestNarratorTask(datas.Narrator1103301)
    actorUtils.FinishQuestID(false, 1103304)
end

function Quest11033:OnSubFinish1103304(arg1)
    print("OnSubFinish1103304")
end

function Quest11033:OnSubStart1103301(arg1)
    print("OnSubStart1103301")
    this:NpcCreateWithNpcTrigger(npcs.Npc1083.id, 1103301, 0, 48)
    self:GetQuestNpcActor(npcs.Npc1083.alias, 11033):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest11033:OnSubFinish1103301(arg1)
    print("OnSubFinish1103301")
    self:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1083.alias, 3)
    this:ActionSafeCall(function(arg1)
        arg1:QuestNarratorTask(datas.Narrator1103302)
        actorUtils.ShowContext("ChapterBeginDialog", 2045)
    end)
end

function Quest11033:OnSubFailed1103301(arg1)
    print("OnSubFailed1103301")
end

function Quest11033:OnSubStart1103302(arg1)
    print("OnSubStart1103302")
    this:NpcCreateWithNpcTrigger(npcs.Npc1015.id, 1103302, 0, 36)
    this:CreateQuestNpc(arg1, npcs.Npc13915.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2029.id, 0)
    self:GetQuestNpcActor(npcs.Npc1015.alias, 11033):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest11033:OnSubFinish1103302(arg1)
    print("OnSubFinish1103302")
    self:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1015.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13915.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2029.alias, 3)
    this:ActionSafeCall(function(arg1)
        arg1:QuestNarratorTask(datas.Narrator1103303)
    end)
end

function Quest11033:OnSubFailed1103302(arg1)
    print("OnSubFailed1103302")
end

function Quest11033:OnSubStart1103303(arg1)
    print("OnSubStart1103303")
    this:NpcCreateWithNpcTrigger(npcs.Npc1045.id, 1103303, 0, 13)
    this:CreateQuestNpc(arg1, npcs.Npc13909.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13908.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2045.id, 0)
    this:GetQuestNpcActor(npcs.Npc1045.alias, 11033):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13908.alias, 11033):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13909.alias, 11033):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest11033:OnSubFinish1103303(arg1)
    print("OnSubFinish1103303")
    self:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1045.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13909.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13908.alias, 3)
end

function Quest11033:OnSubFailed1103303(arg1)
    print("OnSubFailed1103303")
end

function Quest11033:OnSubFailed1103304(arg1)
    print("OnSubFailed1103304")
end

function Quest11033:OnSubStart1103305(arg1)
    print("OnSubStart1103305")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1083.id, 1103305, 0, 5, 1)
end

function Quest11033:OnSubFinish1103305(arg1)
    print("OnSubFinish1103305")
    this:ShowBlackScreen(0.5, 3, 0.5, function(arg1)
        this:CallDelayByQuest("", 2.5, function(arg1)
            this:DestroyQuestNpcActor(npcs.Npc1045.alias, 3)
            this:RequestInteraction(npcs.Npc1083.alias, "", true)
        end)
    end)
end

function Quest11033:OnSubFailed1103305(arg1)
    print("OnSubFailed1103305")
end

function Quest11033:OnSubStart1103306(arg1)
    print("OnSubStart1103306")
    this:GetQuestNpcActor(npcs.Npc1083.alias, 11033):SitOnChair(0, true)
end

function Quest11033:OnSubFinish1103306(arg1)
    print("OnSubFinish1103306")
    self:DestroyQuestNpcActor(npcs.Npc2045.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1083.alias, 3)
end

function Quest11033:OnSubFailed1103306(arg1)
    print("OnSubFailed1103306")
end

return Quest11033
