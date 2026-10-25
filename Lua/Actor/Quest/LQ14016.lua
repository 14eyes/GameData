require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14016 = class("Quest14016", QuestActorProxy)
Quest14016.defaultAlias = "Quest14016"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest14016:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest14016:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1401601"] = self.OnSubStart1401601,
        ["1401602"] = self.OnSubStart1401602,
        ["1401603"] = self.OnSubStart1401603,
        ["1401604"] = self.OnSubStart1401604,
        ["1401605"] = self.OnSubStart1401605,
        ["1401609"] = self.OnSubStart1401609,
        ["1401606"] = self.OnSubStart1401606,
        ["1401607"] = self.OnSubStart1401607,
        ["1401608"] = self.OnSubStart1401608
    }
end

function Quest14016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1401601"] = self.OnSubFinish1401601,
        ["1401602"] = self.OnSubFinish1401602,
        ["1401603"] = self.OnSubFinish1401603,
        ["1401604"] = self.OnSubFinish1401604,
        ["1401605"] = self.OnSubFinish1401605,
        ["1401609"] = self.OnSubFinish1401609,
        ["1401606"] = self.OnSubFinish1401606,
        ["1401607"] = self.OnSubFinish1401607,
        ["1401608"] = self.OnSubFinish1401608
    }
end

function Quest14016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1401602"] = self.OnSubFailed1401602}
end

function Quest14016:Start()
    print("Start")
end

function Quest14016:OnDestroy()
    print("OnDestroy")
end

function Quest14016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14016:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14016:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest14016:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14016:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest14016:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
    end)
end

function Quest14016:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest14016:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest14016:RepeatCheckSit()
    print("RepeatCheckSit")
    this:CallOnAvatarSit(this.CheckSitPos)
end

function Quest14016:CheckSitPos()
    print("CheckSitPos")
    local tbl = {x = 3490.1, y = 283.7, z = 4556.8}
    local avatarPos = actorUtils.GetAvatarPos()
    if math.abs(tbl.x - avatarPos.x) < 20 then
        if math.abs(tbl.z - avatarPos.z) < 15 then
            if math.abs(tbl.y - avatarPos.y) < 20 then
                actorUtils.FinishQuestID(false, 1401609)
            end
        end
    else
        if this:GetSubQuestState(1401609) == 2 then
            this:CallOnAvatarStand(this.RepeatCheckSit)
        end
    end
end

function Quest14016:OnSubStart1401601(arg1)
    print("OnSubStart1401601")
    this:NpcCreateWithNpcTrigger(npcs.Npc13772Data.id, 1401601, 0, 5)
    this:GetQuestNpcActor(npcs.Npc13772Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc5043Data.alias, 1, true)
    if this:GetQuestVar(1401601, 0) == 0 then
        this:CallDelayByQuest("1401601celayNarrator", 1, function(arg1)
            this:NarratorOnlyTaskByData(datas.Narrator_1401601, function(arg1)
                this:SetQuestVarByMainId(0, 1)
            end)
        end)
    end

    this:LightNotifyTo(npcs.Npc5079Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5084Data.alias, 0, true)
end

function Quest14016:OnSubFinish1401601(arg1)
    print("OnSubFinish1401601")
    this:SafeDestroyQuestNpc(npcs.Npc13772Data.alias, 3)
    this:ClearNarratorTask()
end

function Quest14016:OnSubStart1401602(arg1)
    print("OnSubStart1401602")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13710Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5079Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5084Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5043Data.alias, 1, true)
    this:ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
    this:DeployStoryByQuest(121401600)
    actorMgr:CreateActorWithPos("Q1401602_FailTrigger", "Actor/Gadget/Q1401602_FailTrigger", 70900002, 0, {x = 3544.042, y = 428.202, z = 4616.937}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest14016:OnSubFinish1401602(arg1)
    print("OnSubFinish1401602")
    this:LightNotifyTo(npcs.Npc5084Data.alias, 0, true)
    this:CancelStoryByQuest(121401600)
    this:ActorDestroy("Q1401602_FailTrigger")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13710Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13711Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13712Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13320Data.alias, 3)
end

function Quest14016:OnSubFailed1401602(arg1)
    print("OnSubFailed1401602")
    this:ActorDestroy("Q1401602_FailTrigger")
    this:CancelStoryByQuest(121401600)
    this:SafeDestroyQuestNpc(npcs.Npc13772Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13709Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13710Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13711Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13712Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13320Data.alias, 3)
end

function Quest14016:OnSubStart1401603(arg1)
    print("OnSubStart1401603")
    this:DailyNpcSafeHideSelf(npcs.Npc5079Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5033Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5043Data.alias, 1, true)
end

function Quest14016:OnSubFinish1401603(arg1)
    print("OnSubFinish1401603")
    this:LightNotifyTo(npcs.Npc5033Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5043Data.alias, 0, true)
end

function Quest14016:OnSubStart1401604(arg1)
    print("OnSubStart1401604")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc1075Data.id, 1401604, 0, 20, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5079Data.alias, 1, true)
end

function Quest14016:OnSubFinish1401604(arg1)
    print("OnSubFinish1401604")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13709Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13710Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13711Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13712Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5079Data.alias, 0, true)
end

function Quest14016:OnSubStart1401605(arg1)
    print("OnSubStart1401605")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc1075Data.id, 1401605, 0, 8, 1)
end

function Quest14016:OnSubFinish1401605(arg1)
    print("OnSubFinish1401605")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
end

function Quest14016:OnSubStart1401609(arg1)
    print("OnSubStart1401609")
    this:RepeatCheckSit()
end

function Quest14016:OnSubFinish1401609(arg1)
    print("OnSubFinish1401609")
end

function Quest14016:OnSubStart1401606(arg1)
    print("OnSubStart1401606")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1075Data.id, 1401606, 0, 30, 1)
end

function Quest14016:OnSubFinish1401606(arg1)
    print("OnSubFinish1401606")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
end

function Quest14016:OnSubStart1401607(arg1)
    print("OnSubStart1401607")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc1075Data.id, 1401607, 0, 10, 1)
end

function Quest14016:OnSubFinish1401607(arg1)
    print("OnSubFinish1401607")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_1401607)
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
end

function Quest14016:OnSubStart1401608(arg1)
    print("OnSubStart1401608")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc13709Data.id, 1401608, 0, 20, 1)
end

function Quest14016:OnSubFinish1401608(arg1)
    print("OnSubFinish1401608")
    this:SafeDestroyQuestNpc(npcs.Npc13709Data.alias, 3)
end

return Quest14016
