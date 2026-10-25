require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70538 = class("Quest70538", QuestActorProxy)
Quest70538.defaultAlias = "Quest70538"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70538:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70538:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7053801"] = self.OnSubStart7053801,
        ["7053804"] = self.OnSubStart7053804,
        ["7053802"] = self.OnSubStart7053802,
        ["7053803"] = self.OnSubStart7053803
    }
end

function Quest70538:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7053801"] = self.OnSubFinish7053801,
        ["7053804"] = self.OnSubFinish7053804,
        ["7053802"] = self.OnSubFinish7053802,
        ["7053803"] = self.OnSubFinish7053803
    }
end

function Quest70538:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7053801"] = self.OnSubFailed7053801,
        ["7053804"] = self.OnSubFailed7053804,
        ["7053803"] = self.OnSubFailed7053803
    }
end

function Quest70538:Start()
    print("Start")
end

function Quest70538:OnDestroy()
    print("OnDestroy")
end

function Quest70538:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70538:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70538:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30414Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1459Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7053802Trigger", 3, false)
    this:DestroyNpcTrigger("Q7053803N1459Trigger")
end

function Quest70538:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest70538:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest70538:OnSubStart7053801(arg1)
    print("OnSubStart7053801")
    this:CreateQuestNpc(arg1, npcs.Npc30414Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc30414Data.alias):DisableInteeHeadCtrl(true)
end

function Quest70538:OnSubFinish7053801(arg1)
    print("OnSubFinish7053801")
    this:GetQuestNpcActor(npcs.Npc30414Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc30414Data.alias, 3)
end

function Quest70538:OnSubFailed7053801(arg1)
    print("OnSubFailed7053801")
    this:SafeDestroyQuestNpc(npcs.Npc30414Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1459Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7053802Trigger", 3, false)
    this:DestroyNpcTrigger("Q7053803N1459Trigger")
end

function Quest70538:OnSubStart7053804(arg1)
    print("OnSubStart7053804")
end

function Quest70538:OnSubFinish7053804(arg1)
    print("OnSubFinish7053804")
    this:SafeDestroyQuestNpc(npcs.Npc30414Data.alias, 3)
end

function Quest70538:OnSubFailed7053804(arg1)
    print("OnSubFailed7053804")
    this:SafeDestroyQuestNpc(npcs.Npc30414Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1459Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7053802Trigger", 3, false)
    this:DestroyNpcTrigger("Q7053803N1459Trigger")
end

function Quest70538:OnSubStart7053802(arg1)
    print("OnSubStart7053802")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 4, nil, nil)
    actorMgr:CreateActorWithPos("Q7053802Trigger", "Actor/Gadget/Q7053802Trigger", 70900002, 0, {x = 2262.402, y = 235.99, z = -783.228}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest70538:OnSubFinish7053802(arg1)
    print("OnSubFinish7053802")
end

function Quest70538:OnSubStart7053803(arg1)
    print("OnSubStart7053803")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1459Data.id, 7053803, 0, 10, 1, true)
end

function Quest70538:OnSubFinish7053803(arg1)
    print("OnSubFinish7053803")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1459Data.alias)
end

function Quest70538:OnSubFailed7053803(arg1)
    print("OnSubFailed7053803")
    this:SafeDestroyQuestNpc(npcs.Npc30414Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1459Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7053802Trigger", 3, false)
    this:DestroyNpcTrigger("Q7053803N1459Trigger")
end

return Quest70538
