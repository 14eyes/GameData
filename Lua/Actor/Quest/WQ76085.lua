require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76085 = class("Quest76085", QuestActorProxy)
Quest76085.defaultAlias = "Quest76085"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76085:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76085:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7608501"] = self.OnSubStart7608501,
        ["7608502"] = self.OnSubStart7608502,
        ["7608504"] = self.OnSubStart7608504,
        ["7608505"] = self.OnSubStart7608505,
        ["7608506"] = self.OnSubStart7608506,
        ["7608507"] = self.OnSubStart7608507,
        ["7608503"] = self.OnSubStart7608503
    }
end

function Quest76085:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7608501"] = self.OnSubFinish7608501,
        ["7608502"] = self.OnSubFinish7608502,
        ["7608504"] = self.OnSubFinish7608504,
        ["7608505"] = self.OnSubFinish7608505,
        ["7608506"] = self.OnSubFinish7608506,
        ["7608507"] = self.OnSubFinish7608507,
        ["7608503"] = self.OnSubFinish7608503
    }
end

function Quest76085:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76085:Start()
    print("Start")
end

function Quest76085:OnDestroy()
    print("OnDestroy")
end

function Quest76085:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76085:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76085:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15832.alias, 3)
    this:ActorDestroy("Q76085DeleteGuer")
    this:DestroyNpcTrigger("Q7608501N1318Trigger")
    this:DestroyNpcTrigger("Q7608503N1318Trigger")
end

function Quest76085:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q76085DeleteGuer")
end

function Quest76085:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76085:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76085:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76085:OnSubStart7608501(arg1)
    print("OnSubStart7608501")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 40, 7608501)
end

function Quest76085:OnSubFinish7608501(arg1)
    print("OnSubFinish7608501")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:SetNavigationByMainId(76085, true)
end

function Quest76085:OnSubStart7608502(arg1)
    print("OnSubStart7608502")
    this:CreateQuestNpc(arg1, npcs.Npc15832.id, 0, false, 0)
end

function Quest76085:OnSubFinish7608502(arg1)
    print("OnSubFinish7608502")
    this:SafeDestroyQuestNpc(npcs.Npc15832.alias, 3)
end

function Quest76085:OnSubStart7608504(arg1)
    print("OnSubStart7608504")
end

function Quest76085:OnSubFinish7608504(arg1)
    print("OnSubFinish7608504")
end

function Quest76085:OnSubStart7608505(arg1)
    print("OnSubStart7608505")
end

function Quest76085:OnSubFinish7608505(arg1)
    print("OnSubFinish7608505")
end

function Quest76085:OnSubStart7608506(arg1)
    print("OnSubStart7608506")
end

function Quest76085:OnSubFinish7608506(arg1)
    print("OnSubFinish7608506")
end

function Quest76085:OnSubStart7608507(arg1)
    print("OnSubStart7608507")
end

function Quest76085:OnSubFinish7608507(arg1)
    print("OnSubFinish7608507")
end

function Quest76085:OnSubStart7608503(arg1)
    print("OnSubStart7608503")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7608503, 0, 20, 1, npcs.Npc1318.id)
end

function Quest76085:OnSubFinish7608503(arg1)
    print("OnSubFinish7608503")
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1318.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    this:GetQuestNpcActor(npcs.Npc1318.alias, 76085):DoFreeStyle(8010, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q76085DeleteGuer", "Actor/Gadget/Q76085DeleteGuer", 70900002, 0, points._Q76085DeleteGuerPoint_.pos, points._Q76085DeleteGuerPoint_.rot, true, false, 3)
    this:DeployRangeStoryByQuest(117605200, 3, {x = 2142.415, y = 108.533, z = 11195.16}, 30, 80)
end

return Quest76085
