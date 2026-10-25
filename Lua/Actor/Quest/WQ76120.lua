require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76120 = class("Quest76120", QuestActorProxy)
Quest76120.defaultAlias = "Quest76120"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76120:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76120:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7612001"] = self.OnSubStart7612001,
        ["7612003"] = self.OnSubStart7612003,
        ["7612002"] = self.OnSubStart7612002
    }
end

function Quest76120:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7612001"] = self.OnSubFinish7612001,
        ["7612003"] = self.OnSubFinish7612003,
        ["7612002"] = self.OnSubFinish7612002
    }
end

function Quest76120:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76120:Start()
    print("Start")
end

function Quest76120:OnDestroy()
    print("OnDestroy")
end

function Quest76120:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76120:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76120:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15702_1.alias, 3)
    this:ActorDestroy("Q76120guer")
    this:DestroyNpcTrigger("Q7612001N1318Trigger")
    this:DestroyNpcTrigger("Q7612002N1318Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1318_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15702.alias, 3)
end

function Quest76120:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q76120guer")
end

function Quest76120:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76120:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76120:OnSubStart7612001(arg1)
    print("OnSubStart7612001")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 15, 7612001)
    this:CreateQuestNpc(arg1, npcs.Npc15702_1.id, 0, false, 0)
end

function Quest76120:OnSubFinish7612001(arg1)
    print("OnSubFinish7612001")
    this:SetNavigationByMainId(76120, true)
end

function Quest76120:OnSubStart7612003(arg1)
    print("OnSubStart7612003")
    this:CreateQuestNpc(arg1, npcs.Npc15702_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1318.id, 0, false, 0)
end

function Quest76120:OnSubFinish7612003(arg1)
    print("OnSubFinish7612003")
end

function Quest76120:OnSubStart7612002(arg1)
    print("OnSubStart7612002")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 10, 7612002)
    this:CreateQuestNpc(arg1, npcs.Npc15702_1.id, 0, false, 0)
end

function Quest76120:OnSubFinish7612002(arg1)
    print("OnSubFinish7612002")
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1318_1.id, 3, false, 0.5, datas.QuestOrphanNpcPlaceList)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc15702.id, 4, false, 0.5, datas.QuestOrphanNpcPlaceList)
    this:GetQuestNpcActor(npcs.Npc1318_1.alias, 76120):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q76120guer", "Actor/Gadget/Q76120guer", 70900002, 0, points._Q76120guerPoint_.pos, points._Q76120guerPoint_.rot, true, false, 3)
end

return Quest76120
