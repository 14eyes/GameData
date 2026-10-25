require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74800 = class("Quest74800", QuestActorProxy)
Quest74800.defaultAlias = "Quest74800"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74800:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74800:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7480001"] = self.OnSubStart7480001,
        ["7480007"] = self.OnSubStart7480007,
        ["7480006"] = self.OnSubStart7480006,
        ["7480003"] = self.OnSubStart7480003,
        ["7480005"] = self.OnSubStart7480005,
        ["7480002"] = self.OnSubStart7480002,
        ["7480004"] = self.OnSubStart7480004,
        ["7480008"] = self.OnSubStart7480008
    }
end

function Quest74800:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7480001"] = self.OnSubFinish7480001,
        ["7480007"] = self.OnSubFinish7480007,
        ["7480006"] = self.OnSubFinish7480006,
        ["7480003"] = self.OnSubFinish7480003,
        ["7480005"] = self.OnSubFinish7480005,
        ["7480002"] = self.OnSubFinish7480002,
        ["7480004"] = self.OnSubFinish7480004,
        ["7480008"] = self.OnSubFinish7480008
    }
end

function Quest74800:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74800:Start()
    print("Start")
end

function Quest74800:OnDestroy()
    print("OnDestroy")
end

function Quest74800:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74800:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74800:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74800:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest74800:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest74800:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7480008)
    end
end

function Quest74800:OnSubStart7480001(arg1)
    print("OnSubStart7480001")
end

function Quest74800:OnSubFinish7480001(arg1)
    print("OnSubFinish7480001")
end

function Quest74800:OnSubStart7480007(arg1)
    print("OnSubStart7480007")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5268Data.id, 7480007, 0, 5, 2)
end

function Quest74800:OnSubFinish7480007(arg1)
    print("OnSubFinish7480007")
    this:SafeDestroyQuestNpc(npcs.Npc5268Data.alias, 3)
end

function Quest74800:OnSubStart7480006(arg1)
    print("OnSubStart7480006")
    local groupEntityCreateTask = curtainUtils.CreateGroupEntityCreateTask({{groupId = 133402164, configId = 164001}})
    this:ShowBlackScreenWithDialogText(1, 3, 0, nil, function(arg1)
        this:ShowBlackScreenWithDialogText(0, 2, 0, function(arg1)
            this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5268Data.id, 7480006, 1, 40, 0)
        end, nil, nil, 0, false, true)
    end, groupEntityCreateTask, 0, false, false)
end

function Quest74800:OnSubFinish7480006(arg1)
    print("OnSubFinish7480006")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 3, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 74800)
    end, nil)

    this:SafeDestroyQuestNpc(npcs.Npc5268Data.alias, 3)
end

function Quest74800:OnSubStart7480003(arg1)
    print("OnSubStart7480003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5268Data.id, 7480003, 0, 10, 2)
end

function Quest74800:OnSubFinish7480003(arg1)
    print("OnSubFinish7480003")
    this:SafeDestroyQuestNpc(npcs.Npc5268Data.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId_01, nil, 74800)
    end)
end

function Quest74800:OnSubStart7480005(arg1)
    print("OnSubStart7480005")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5268Data.id, 7480005, 0, 5, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc5055Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5076Data.alias, 1, true)
end

function Quest74800:OnSubFinish7480005(arg1)
    print("OnSubFinish7480005")
    this:SafeDestroyQuestNpc(npcs.Npc5268Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5055Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5076Data.alias, 0, true)
end

function Quest74800:OnSubStart7480002(arg1)
    print("OnSubStart7480002")
end

function Quest74800:OnSubFinish7480002(arg1)
    print("OnSubFinish7480002")
end

function Quest74800:OnSubStart7480004(arg1)
    print("OnSubStart7480004")
end

function Quest74800:OnSubFinish7480004(arg1)
    print("OnSubFinish7480004")
end

function Quest74800:OnSubStart7480008(arg1)
    print("OnSubStart7480008")
end

function Quest74800:OnSubFinish7480008(arg1)
    print("OnSubFinish7480008")
end

return Quest74800
