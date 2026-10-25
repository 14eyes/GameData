require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12011 = class("Quest12011", QuestActorProxy)
Quest12011.defaultAlias = "Quest12011"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12011:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1201101"] = self.OnSubStart1201101,
        ["1201104"] = self.OnSubStart1201104,
        ["1201102"] = self.OnSubStart1201102,
        ["1201103"] = self.OnSubStart1201103,
        ["1201107"] = self.OnSubStart1201107,
        ["1201105"] = self.OnSubStart1201105,
        ["1201106"] = self.OnSubStart1201106
    }
end

function Quest12011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1201101"] = self.OnSubFinish1201101,
        ["1201104"] = self.OnSubFinish1201104,
        ["1201102"] = self.OnSubFinish1201102,
        ["1201103"] = self.OnSubFinish1201103,
        ["1201107"] = self.OnSubFinish1201107,
        ["1201105"] = self.OnSubFinish1201105,
        ["1201106"] = self.OnSubFinish1201106
    }
end

function Quest12011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1201101"] = self.OnSubFailed1201101,
        ["1201104"] = self.OnSubFailed1201104,
        ["1201102"] = self.OnSubFailed1201102,
        ["1201103"] = self.OnSubFailed1201103,
        ["1201107"] = self.OnSubFailed1201107,
        ["1201105"] = self.OnSubFailed1201105,
        ["1201106"] = self.OnSubFailed1201106
    }
end

function Quest12011:Start()
    print("Start")
end

function Quest12011:OnDestroy()
    print("OnDestroy")
end

function Quest12011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12011:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12011:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1201101 then
        print("In_1201101")
        self:ClearNarratorTask()
        self:StopNarrator()
        actorUtils.StopAllTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL)
    elseif arg1 == 1201107 then
        print("In_1201107")
        self:ClearNarratorTask()
        self:StopNarrator()
        actorUtils.StopAllTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL)
    end
end

function Quest12011:Narrator_1201101()
    print("Narrator_1201101")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1201101)
end

function Quest12011:Narrator_1201104()
    print("Narrator_1201104")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1201104)
end

function Quest12011:Narrator_1201102()
    print("Narrator_1201102")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1201102)
end

function Quest12011:Narrator_1201103()
    print("Narrator_1201103")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1201103)
end

function Quest12011:OnSubStart1201101(arg1)
    print("OnSubStart1201101")
    self:CreateQuestNpc(arg1, npcs.Npc12024Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12086Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc3035Data.id, 8)
    self:NotifyTo(npcs.Npc3036Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3037Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3066Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q12011Trigger_Tagayichi", "Actor/Gadget/Q12011Trigger_Tagayichi", 70900002, 0, sceneData:GetDummyPoint(3, "Q12011_Tagayichi_Pos").pos, sceneData:GetDummyPoint(3, "Q12011_Tagayichi_Pos").rot, true, false, 3)
end

function Quest12011:OnSubFinish1201101(arg1)
    print("OnSubFinish1201101")
    self:SafeDestroyQuestNpc(npcs.Npc12024Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12086Data.alias, 3)
    self:ActionSafeCall(self.Narrator_1201101)
    self:LightNotifyTo(npcs.Npc3036Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3037Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3066Data.alias, 0, true)
end

function Quest12011:OnSubFailed1201101(arg1)
    print("OnSubFailed1201101")
end

function Quest12011:OnSubStart1201102(arg1)
    print("OnSubStart1201102")
end

function Quest12011:OnSubFinish1201102(arg1)
    print("OnSubFinish1201102")
    self:SafeDestroyQuestNpc(npcs.Npc12052Data.alias, 3)
end

function Quest12011:OnSubFailed1201102(arg1)
    print("OnSubFailed1201102")
end

function Quest12011:OnSubStart1201103(arg1)
    print("OnSubStart1201103")
    self:CreateQuestNpc(arg1, npcs.Npc3027Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3028Data.id, 3)
    actorMgr:CreateActorWithPos("Q12011Trigger_Tenmejugo1", "Actor/Gadget/Q12011Trigger_Tenmejugo1", 70900002, 0, {x = -3019.951, y = 220.3097, z = -4356.991}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest12011:OnSubFinish1201103(arg1)
    print("OnSubFinish1201103")
    self:SafeDestroyQuestNpc(npcs.Npc3027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3028Data.alias, 3)
end

function Quest12011:OnSubFailed1201103(arg1)
    print("OnSubFailed1201103")
end

function Quest12011:OnSubStart1201104(arg1)
    print("OnSubStart1201104")
    self:CreateQuestNpc(arg1, npcs.Npc12052Data.id, 2)
    actorMgr:CreateActorWithPos(datas.Q12011Trigger_Morihiko.alias, datas.Q12011Trigger_Morihiko.script, datas.Q12011Trigger_Morihiko.id, 0, datas.Q12011Trigger_Morihiko.point.pos, datas.Q12011Trigger_Morihiko.point.rot, true, false, 3)
end

function Quest12011:OnSubFinish1201104(arg1)
    print("OnSubFinish1201104")
end

function Quest12011:OnSubFailed1201104(arg1)
    print("OnSubFailed1201104")
end

function Quest12011:OnSubStart1201105(arg1)
    print("OnSubStart1201105")
    self:CreateQuestNpc(arg1, npcs.Npc12034Data.id, 3)
end

function Quest12011:OnSubFinish1201105(arg1)
    print("OnSubFinish1201105")
    self:SafeDestroyQuestNpc(npcs.Npc12034Data.alias, 3)
    self:ActionSafeCall(self.Narrator_1201103)
end

function Quest12011:OnSubFailed1201105(arg1)
    print("OnSubFailed1201105")
end

function Quest12011:OnSubStart1201106(arg1)
    print("OnSubStart1201106")
    self:CreateQuestNpc(arg1, npcs.Npc12086Data.id, 3)
    self:NotifyTo(npcs.Npc3043Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3036Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3037Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3066Data.alias, 1, true)
end

function Quest12011:OnSubFinish1201106(arg1)
    print("OnSubFinish1201106")
    self:SafeDestroyQuestNpc(npcs.Npc12086Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3035Data.alias, 3)
    self:ActionSafeCall(self.Narrator_1201104)
    self:LightNotifyTo(npcs.Npc3043Data.alias, 0, true)
end

function Quest12011:OnSubFailed1201106(arg1)
    print("OnSubFailed1201106")
end

function Quest12011:OnSubStart1201107(arg1)
    print("OnSubStart1201107")
    self:CreateQuestNpc(arg1, npcs.Npc12034Data.id, 3)
end

function Quest12011:OnSubFinish1201107(arg1)
    print("OnSubFinish1201107")
end

function Quest12011:OnSubFailed1201107(arg1)
    print("OnSubFailed1201107")
end

return Quest12011
