require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40130 = class("Quest40130", QuestActorProxy)
Quest40130.defaultAlias = "Quest40130"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40130:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40130:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4013001"] = self.OnSubStart4013001,
        ["4013012"] = self.OnSubStart4013012,
        ["4013008"] = self.OnSubStart4013008,
        ["4013002"] = self.OnSubStart4013002,
        ["4013004"] = self.OnSubStart4013004,
        ["4013011"] = self.OnSubStart4013011,
        ["4013009"] = self.OnSubStart4013009,
        ["4013005"] = self.OnSubStart4013005,
        ["4013014"] = self.OnSubStart4013014,
        ["4013006"] = self.OnSubStart4013006,
        ["4013013"] = self.OnSubStart4013013
    }
end

function Quest40130:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4013001"] = self.OnSubFinish4013001,
        ["4013012"] = self.OnSubFinish4013012,
        ["4013008"] = self.OnSubFinish4013008,
        ["4013002"] = self.OnSubFinish4013002,
        ["4013004"] = self.OnSubFinish4013004,
        ["4013011"] = self.OnSubFinish4013011,
        ["4013009"] = self.OnSubFinish4013009,
        ["4013005"] = self.OnSubFinish4013005,
        ["4013014"] = self.OnSubFinish4013014,
        ["4013006"] = self.OnSubFinish4013006,
        ["4013013"] = self.OnSubFinish4013013
    }
end

function Quest40130:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40130:Start()
    print("Start")
end

function Quest40130:OnDestroy()
    print("OnDestroy")
end

function Quest40130:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40130:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40130:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 47802)
    this:SafeDestroyQuestNpc(npcs.Npc13559Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13558Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13642Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5073Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13673Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13673Data.alias, 47802)
    actorMgr:DestroyEntityActor("Q4013002TriggerRequest", 3, false)
    actorMgr:DestroyEntityActor("Q4013006N13558Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4013013N1074", 3, false)
    this:UnCallDelayByQuest("1")
    this:CancelStoryByQuest(134013001)
    this:ActorDestroy("Q4013005TriggerTransmit")
end

function Quest40130:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest40130:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest40130:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40130:OnSubStart4013001(arg1)
    print("OnSubStart4013001")
    this:CreateQuestNpc(arg1, npcs.Npc13673Data.id, 1)
end

function Quest40130:OnSubFinish4013001(arg1)
    print("OnSubFinish4013001")
end

function Quest40130:OnSubStart4013012(arg1)
    print("OnSubStart4013012")
    actorUtils.FinishQuestID(false, 4013012)
end

function Quest40130:OnSubFinish4013012(arg1)
    print("OnSubFinish4013012")
    this:NarratorOnlyTaskByData(datas.NarratorWithId4013001, nil, 40130)
end

function Quest40130:OnSubStart4013008(arg1)
    print("OnSubStart4013008")
    this:CreateQuestNpc(arg1, npcs.Npc13673Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc1074Data.id, 0)
    this:DeployStoryByQuest(134013001)
end

function Quest40130:OnSubFinish4013008(arg1)
    print("OnSubFinish4013008")
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13673Data.alias, 3)
    this:CancelStoryByQuest(134013001)
end

function Quest40130:OnSubStart4013002(arg1)
    print("OnSubStart4013002")
    this:CreateQuestNpc(arg1, npcs.Npc13642Data.id, 0)
    actorMgr:CreateActorWithPos("Q4013002TriggerRequest", "Actor/Gadget/Q4013002TriggerRequest", 70900002, 0, {x = 3717.795, y = 518.733, z = 3004.056}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest40130:OnSubFinish4013002(arg1)
    print("OnSubFinish4013002")
    this:SafeDestroyQuestNpc(npcs.Npc13642Data.alias, 3)
end

function Quest40130:OnSubStart4013004(arg1)
    print("OnSubStart4013004")
end

function Quest40130:OnSubFinish4013004(arg1)
    print("OnSubFinish4013004")
end

function Quest40130:OnSubStart4013011(arg1)
    print("OnSubStart4013011")
end

function Quest40130:OnSubFinish4013011(arg1)
    print("OnSubFinish4013011")
end

function Quest40130:OnSubStart4013009(arg1)
    print("OnSubStart4013009")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1074Data.id, 4013009, 0, 40, 1, true)
end

function Quest40130:OnSubFinish4013009(arg1)
    print("OnSubFinish4013009")
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 47802)
end

function Quest40130:OnSubStart4013005(arg1)
    print("OnSubStart4013005")
end

function Quest40130:OnSubFinish4013005(arg1)
    print("OnSubFinish4013005")
    this:CallDelayByQuest("1", 2, function(arg1)
        actorMgr:CreateActorWithPos("Q4013005TriggerTransmit", "Actor/Gadget/Q4013005TriggerTransmit", 70900002, 0, {x = 170.191, y = 17.31, z = 339.863}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 47802)
    end)
end

function Quest40130:OnSubStart4013014(arg1)
    print("OnSubStart4013014")
end

function Quest40130:OnSubFinish4013014(arg1)
    print("OnSubFinish4013014")
end

function Quest40130:OnSubStart4013006(arg1)
    print("OnSubStart4013006")
    this:CreateQuestNpc(arg1, npcs.Npc13559Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc13558Data.id, 4013006, 3, 6)
end

function Quest40130:OnSubFinish4013006(arg1)
    print("OnSubFinish4013006")
    this:SafeDestroyQuestNpc(npcs.Npc13559Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13558Data.alias, 3)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 1.5, nil, nil)
end

function Quest40130:OnSubStart4013013(arg1)
    print("OnSubStart4013013")
    this:CreateQuestNpcWithTriggerBlackEx("Q4013013N1074", 4013013, 1074, 1, 5, 0.3, 1, 0.5, 1)
end

function Quest40130:OnSubFinish4013013(arg1)
    print("OnSubFinish4013013")
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 3)
end

return Quest40130
