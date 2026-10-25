require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12012 = class("Quest12012", QuestActorProxy)
Quest12012.defaultAlias = "Quest12012"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12012:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1201201"] = self.OnSubStart1201201,
        ["1201208"] = self.OnSubStart1201208,
        ["1201209"] = self.OnSubStart1201209,
        ["1201202"] = self.OnSubStart1201202,
        ["1201204"] = self.OnSubStart1201204,
        ["1201205"] = self.OnSubStart1201205,
        ["1201206"] = self.OnSubStart1201206,
        ["1201207"] = self.OnSubStart1201207
    }
end

function Quest12012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1201201"] = self.OnSubFinish1201201,
        ["1201208"] = self.OnSubFinish1201208,
        ["1201209"] = self.OnSubFinish1201209,
        ["1201202"] = self.OnSubFinish1201202,
        ["1201204"] = self.OnSubFinish1201204,
        ["1201205"] = self.OnSubFinish1201205,
        ["1201206"] = self.OnSubFinish1201206,
        ["1201207"] = self.OnSubFinish1201207
    }
end

function Quest12012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1201201"] = self.OnSubFailed1201201,
        ["1201208"] = self.OnSubFailed1201208,
        ["1201209"] = self.OnSubFailed1201209,
        ["1201202"] = self.OnSubFailed1201202,
        ["1201204"] = self.OnSubFailed1201204,
        ["1201205"] = self.OnSubFailed1201205,
        ["1201206"] = self.OnSubFailed1201206,
        ["1201207"] = self.OnSubFailed1201207
    }
end

function Quest12012:Start()
    print("Start")
end

function Quest12012:OnDestroy()
    print("OnDestroy")
end

function Quest12012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12012:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1201201 then
        print("In_1201201")
        self:ClearNarratorTask()
        self:StopNarrator()
        actorUtils.StopAllTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL)
    elseif arg1 == 2 then
    end
end

function Quest12012:Narrator_1201203()
    print("Narrator_1201203")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1201103)
end

function Quest12012:Narrator_1201201()
    print("Narrator_1201201")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1201201)
end

function Quest12012:Narrator_1201202()
    print("Narrator_1201202")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1201102)
end

function Quest12012:Narrator_1201204()
    print("Narrator_1201204")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1201204)
end

function Quest12012:Narrator_1201205()
    print("Narrator_1201205")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1201205)
end

function Quest12012:OnSubStart1201201(arg1)
    print("OnSubStart1201201")
    self:CreateQuestNpc(arg1, npcs.Npc12030Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3094Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc3035Data.id, 4)
    self:NotifyTo(npcs.Npc3036Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3037Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3066Data.alias, 1, true)
end

function Quest12012:OnSubFinish1201201(arg1)
    print("OnSubFinish1201201")
    self:SafeDestroyQuestNpc(npcs.Npc3035Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3036Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3037Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3066Data.alias, 0, true)
end

function Quest12012:OnSubFailed1201201(arg1)
    print("OnSubFailed1201201")
end

function Quest12012:OnSubStart1201202(arg1)
    print("OnSubStart1201202")
    self:TryPauseCurAutoNarrator()
end

function Quest12012:OnSubFinish1201202(arg1)
    print("OnSubFinish1201202")
    local subQuestState = self:GetSubQuestState(1201209)
    if subQuestState == 3 then
        print("QuestVar1 = ", subQuestState)
        self:ActionSafeCall(self.Narrator_1201202)
    else
        print("QuestVar1 = ", subQuestState)
        self:ActionSafeCall(self.Narrator_1201203)
    end
end

function Quest12012:OnSubFailed1201202(arg1)
    print("OnSubFailed1201202")
end

function Quest12012:OnSubStart1201204(arg1)
    print("OnSubStart1201204")
    self:CreateQuestNpc(arg1, npcs.Npc12053Data.id, 2)
    self:NotifyTo(npcs.Npc3170Data.alias, 1, true)
end

function Quest12012:OnSubFinish1201204(arg1)
    print("OnSubFinish1201204")
    self:ActionSafeCall(self.Narrator_1201204)
end

function Quest12012:OnSubFailed1201204(arg1)
    print("OnSubFailed1201204")
end

function Quest12012:OnSubStart1201205(arg1)
    print("OnSubStart1201205")
    self:NotifyTo(npcs.Npc3170Data.alias, 1, true)
end

function Quest12012:OnSubFinish1201205(arg1)
    print("OnSubFinish1201205")
    self:SafeDestroyQuestNpc(npcs.Npc12053Data.alias, 3)
    self:ActionSafeCall(self.Narrator_1201205)
    self:LightNotifyTo(npcs.Npc3170Data.alias, 0, true)
end

function Quest12012:OnSubFailed1201205(arg1)
    print("OnSubFailed1201205")
end

function Quest12012:OnSubStart1201206(arg1)
    print("OnSubStart1201206")
    self:CreateQuestNpc(arg1, npcs.Npc3035Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12027Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12028Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc12029Data.id, 6)
    actorMgr:CreateActorWithPos(datas.Q12012Trigger_Miss.alias, datas.Q12012Trigger_Miss.script, datas.Q12012Trigger_Miss.id, 0, datas.Q12012Trigger_Miss.point.pos, datas.Q12012Trigger_Miss.point.rot, true, false, 3)
    self:NotifyTo(npcs.Npc3036Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3037Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3066Data.alias, 1, true)
end

function Quest12012:OnSubFinish1201206(arg1)
    print("OnSubFinish1201206")
    self:SafeDestroyQuestNpc(npcs.Npc12030Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3094Data.alias, 3)
end

function Quest12012:OnSubFailed1201206(arg1)
    print("OnSubFailed1201206")
end

function Quest12012:OnSubStart1201207(arg1)
    print("OnSubStart1201207")
end

function Quest12012:OnSubFinish1201207(arg1)
    print("OnSubFinish1201207")
end

function Quest12012:OnSubFailed1201207(arg1)
    print("OnSubFailed1201207")
end

function Quest12012:OnSubStart1201208(arg1)
    print("OnSubStart1201208")
    self:NotifyTo(npcs.Npc3036Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3037Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3066Data.alias, 1, true)
end

function Quest12012:OnSubFinish1201208(arg1)
    print("OnSubFinish1201208")
    self:ActionSafeCall(self.Narrator_1201201)
end

function Quest12012:OnSubFailed1201208(arg1)
    print("OnSubFailed1201208")
end

function Quest12012:OnSubStart1201209(arg1)
    print("OnSubStart1201209")
    self:NotifyTo(npcs.Npc3036Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3037Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3066Data.alias, 1, true)
end

function Quest12012:OnSubFinish1201209(arg1)
    print("OnSubFinish1201209")
end

function Quest12012:OnSubFailed1201209(arg1)
    print("OnSubFailed1201209")
end

return Quest12012
