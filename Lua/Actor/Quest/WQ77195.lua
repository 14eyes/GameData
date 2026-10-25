require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77195 = class("Quest77195", QuestActorProxy)
Quest77195.defaultAlias = "Quest77195"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest77195:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest77195:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7719501"] = self.OnSubStart7719501,
        ["7719502"] = self.OnSubStart7719502,
        ["7719507"] = self.OnSubStart7719507,
        ["7719503"] = self.OnSubStart7719503,
        ["7719508"] = self.OnSubStart7719508,
        ["7719510"] = self.OnSubStart7719510,
        ["7719509"] = self.OnSubStart7719509,
        ["7719504"] = self.OnSubStart7719504,
        ["7719505"] = self.OnSubStart7719505,
        ["7719506"] = self.OnSubStart7719506
    }
end

function Quest77195:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7719501"] = self.OnSubFinish7719501,
        ["7719502"] = self.OnSubFinish7719502,
        ["7719507"] = self.OnSubFinish7719507,
        ["7719503"] = self.OnSubFinish7719503,
        ["7719508"] = self.OnSubFinish7719508,
        ["7719510"] = self.OnSubFinish7719510,
        ["7719509"] = self.OnSubFinish7719509,
        ["7719504"] = self.OnSubFinish7719504,
        ["7719505"] = self.OnSubFinish7719505,
        ["7719506"] = self.OnSubFinish7719506
    }
end

function Quest77195:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7719508"] = self.OnSubFailed7719508,
        ["7719510"] = self.OnSubFailed7719510,
        ["7719509"] = self.OnSubFailed7719509,
        ["7719504"] = self.OnSubFailed7719504,
        ["7719505"] = self.OnSubFailed7719505
    }
end

function Quest77195:Start()
    print("Start")
end

function Quest77195:OnDestroy()
    print("OnDestroy")
end

function Quest77195:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77195:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77195:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77195:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest77195:CheckSubQuestState(arg1, arg2, arg3)
    local subQuestState = self:GetSubQuestState(arg1)
    local v
    if arg3 then
        v = subQuestState ~= arg2
    else
        v = subQuestState == arg2
    end

    return v
end

function Quest77195:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77195:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77195:OnSubStart7719501(arg1)
    print("OnSubStart7719501")
    actorUtils.FinishQuestWithParam({false}, {7719501})
end

function Quest77195:OnSubFinish7719501(arg1)
    print("OnSubFinish7719501")
    this:QuestNarratorTask(datas.NarratorWithId_97719502, nil)
end

function Quest77195:OnSubStart7719502(arg1)
    print("OnSubStart7719502")
end

function Quest77195:OnSubFinish7719502(arg1)
    print("OnSubFinish7719502")
end

function Quest77195:OnSubStart7719507(arg1)
    print("OnSubStart7719507")
end

function Quest77195:OnSubFinish7719507(arg1)
    print("OnSubFinish7719507")
end

function Quest77195:OnSubStart7719503(arg1)
    print("OnSubStart7719503")
end

function Quest77195:OnSubFinish7719503(arg1)
    print("OnSubFinish7719503")
end

function Quest77195:OnSubStart7719508(arg1)
    print("OnSubStart7719508")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7719508, 0, 20, 0, npcs.Npc22814.id)
end

function Quest77195:OnSubFinish7719508(arg1)
    print("OnSubFinish7719508")
    this:NpcDestroyImmediately(51336, npcs.Npc22814.alias)
end

function Quest77195:OnSubFailed7719508(arg1)
    print("OnSubFailed7719508")
    this:RecycleAllRes()
end

function Quest77195:OnSubStart7719510(arg1)
    print("OnSubStart7719510")
end

function Quest77195:OnSubFinish7719510(arg1)
    print("OnSubFinish7719510")
end

function Quest77195:OnSubFailed7719510(arg1)
    print("OnSubFailed7719510")
    this:RecycleAllRes()
end

function Quest77195:OnSubStart7719509(arg1)
    print("OnSubStart7719509")
end

function Quest77195:OnSubFinish7719509(arg1)
    print("OnSubFinish7719509")
end

function Quest77195:OnSubFailed7719509(arg1)
    print("OnSubFailed7719509")
    this:RecycleAllRes()
end

function Quest77195:OnSubStart7719504(arg1)
    print("OnSubStart7719504")
    this:CheckSubQuestState(7719510, 3, false)
end

function Quest77195:OnSubFinish7719504(arg1)
    print("OnSubFinish7719504")
end

function Quest77195:OnSubFailed7719504(arg1)
    print("OnSubFailed7719504")
    this:RecycleAllRes()
end

function Quest77195:OnSubStart7719505(arg1)
    print("OnSubStart7719505")
end

function Quest77195:OnSubFinish7719505(arg1)
    print("OnSubFinish7719505")
end

function Quest77195:OnSubFailed7719505(arg1)
    print("OnSubFailed7719505")
    this:RecycleAllRes()
end

function Quest77195:OnSubStart7719506(arg1)
    print("OnSubStart7719506")
end

function Quest77195:OnSubFinish7719506(arg1)
    print("OnSubFinish7719506")
    this:QuestNarratorTask(datas.NarratorWithId_97719505, nil)
end

return Quest77195
