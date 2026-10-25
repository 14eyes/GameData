require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76050 = class("Quest76050", QuestActorProxy)
Quest76050.defaultAlias = "Quest76050"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76050:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76050:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7605001"] = self.OnSubStart7605001, ["7605003"] = self.OnSubStart7605003}
end

function Quest76050:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7605001"] = self.OnSubFinish7605001, ["7605003"] = self.OnSubFinish7605003}
end

function Quest76050:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76050:Start()
    print("Start")
end

function Quest76050:OnDestroy()
    print("OnDestroy")
end

function Quest76050:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76050:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76050:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15703.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15704.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15761.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15764.alias, 3)
    this:DestroyNpcTrigger("Q7605001N1318Trigger")
    this:DestroyNpcTrigger("Q7605003N1318Trigger")
end

function Quest76050:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q76050TriggerDeleteGuer")
end

function Quest76050:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7605003 then
        this:SetQuestVarByMainId(0, 1)
    end
end

function Quest76050:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76050:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76050:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76050:OnSubStart7605001(arg1)
    print("OnSubStart7605001")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 40, 7605001)
    this:CreateQuestNpc(arg1, npcs.Npc15703.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15704.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15761.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15764.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1318.alias, 76050):DoFreeStyle(4100, true, nil, true, true, false, false)
end

function Quest76050:OnSubFinish7605001(arg1)
    print("OnSubFinish7605001")
    this:SafeDestroyQuestNpc(npcs.Npc15704.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15761.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15764.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15703.alias, 3)
    this:SetNavigationByMainId(76050, true)
end

function Quest76050:OnSubStart7605003(arg1)
    print("OnSubStart7605003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7605003, 0, 20, 1, npcs.Npc1318.id)
end

function Quest76050:OnSubFinish7605003(arg1)
    print("OnSubFinish7605003")
    this:SafeDestroyQuestNpc(npcs.Npc15703.alias, 3)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1318.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    actorMgr:CreateActorWithPos("Q76050TriggerDeleteGuer", "Actor/Gadget/Q76050TriggerDeleteGuer", 70900002, 0, points._Q76050TriggerDeleteGuerPoint_.pos, points._Q76050TriggerDeleteGuerPoint_.rot, true, false, 3)
end

return Quest76050
