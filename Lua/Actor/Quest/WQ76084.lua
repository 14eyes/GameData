require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76084 = class("Quest76084", QuestActorProxy)
Quest76084.defaultAlias = "Quest76084"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76084:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76084:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7608401"] = self.OnSubStart7608401}
end

function Quest76084:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7608401"] = self.OnSubFinish7608401}
end

function Quest76084:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76084:Start()
    print("Start")
end

function Quest76084:OnDestroy()
    print("OnDestroy")
end

function Quest76084:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76084:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76084:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:ActorDestroy("Q76084DeleteGuer")
    this:DestroyNpcTrigger("Q7608401N1318Trigger")
end

function Quest76084:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q76084DeleteGuer")
end

function Quest76084:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76084:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76084:OnSubStart7608401(arg1)
    print("OnSubStart7608401")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 40, 7608401)
end

function Quest76084:OnSubFinish7608401(arg1)
    print("OnSubFinish7608401")
    this:CreateQuestOrphanNpc(arg1, 1318, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    this:GetQuestNpcActor(npcs.Npc1318.alias, 76084):DoFreeStyle(1130, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q76084DeleteGuer", "Actor/Gadget/Q76084DeleteGuer", 70900002, 0, points._Q76084DeleteGuerPoint_.pos, points._Q76084DeleteGuerPoint_.rot, true, false, 3)
end

return Quest76084
