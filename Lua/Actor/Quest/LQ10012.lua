require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10012 = class("Quest10012", QuestActorProxy)
Quest10012.defaultAlias = "Quest10012"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest10012:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest10012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1001201"] = self.OnSubStart1001201,
        ["1001202"] = self.OnSubStart1001202,
        ["1001203"] = self.OnSubStart1001203,
        ["1001204"] = self.OnSubStart1001204,
        ["1001205"] = self.OnSubStart1001205
    }
end

function Quest10012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1001201"] = self.OnSubFinish1001201,
        ["1001202"] = self.OnSubFinish1001202,
        ["1001203"] = self.OnSubFinish1001203,
        ["1001204"] = self.OnSubFinish1001204,
        ["1001205"] = self.OnSubFinish1001205
    }
end

function Quest10012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest10012:Start()
    print("Start")
end

function Quest10012:OnDestroy()
    print("OnDestroy")
end

function Quest10012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest10012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest10012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest10012:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:BanCrowdNpc(3009, 2, datas.InstanceIDList, false, true)
end

function Quest10012:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest10012:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest10012:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest10012:OnSubStart1001201(arg1)
    print("OnSubStart1001201")
    actorUtils.FinishQuestWithParam({false}, {1001201})
end

function Quest10012:OnSubFinish1001201(arg1)
    print("OnSubFinish1001201")
    this:QuestNarratorTask(datas.NarratorWithId_1001201, nil)
    this:SetNavigationByMainId(10012, true)
end

function Quest10012:OnSubStart1001202(arg1)
    print("OnSubStart1001202")
    this:NpcCreateWithNpcTrigger(npcs.Npc16498.id, 0, 10, 1001202)
    this:GetQuestNpcActor(npcs.Npc16498.alias, 10012):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16498.alias, 10012):DisableInteeHeadCtrl(true)
end

function Quest10012:OnSubFinish1001202(arg1)
    print("OnSubFinish1001202")
end

function Quest10012:OnSubStart1001203(arg1)
    print("OnSubStart1001203")
    this:CreateQuestNpc(arg1, npcs.Npc16498.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16498.alias, 10012):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16498.alias, 10012):DisableInteeHeadCtrl(true)
    this:DeployRangeStoryByQuest(121001200, 3, {x = 3154.452, y = 270.613, z = -10.548}, 110, 120)
    this:NpcCreateWithNpcTrigger(npcs.Diluc.id, 0, 10, 1001203)
    this:GetQuestNpcActor(npcs.Diluc.alias, 10012):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Diluc.alias, 10012):DisableInteeHeadCtrl(true)
end

function Quest10012:OnSubFinish1001203(arg1)
    print("OnSubFinish1001203")
    this:NpcDestroyImmediately(3, npcs.Npc16498.alias)
    this:NpcDestroyImmediately(3, npcs.Diluc.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_1001203, nil, nil, nil)
    this:CancelRangeStoryByQuest(121001200)
end

function Quest10012:OnSubStart1001204(arg1)
    print("OnSubStart1001204")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1326.id, 0, 1001204, 50, true)
    this:BanCrowdNpc(3009, 2, datas.InstanceIDList, true, true)
end

function Quest10012:OnSubFinish1001204(arg1)
    print("OnSubFinish1001204")
    this:NpcDestroyImmediately(3, npcs.Npc1326.alias)
    this:BanCrowdNpc(3009, 2, datas.InstanceIDList, false, true)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_1001204, nil, nil, nil)
end

function Quest10012:OnSubStart1001205(arg1)
    print("OnSubStart1001205")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1310.id, 0, 1001205, 15, true)
end

function Quest10012:OnSubFinish1001205(arg1)
    print("OnSubFinish1001205")
    this:NpcDestroyImmediately(3, npcs.Npc1310.alias)
end

return Quest10012
