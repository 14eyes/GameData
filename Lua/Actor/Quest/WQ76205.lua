require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76205 = class("Quest76205", QuestActorProxy)
Quest76205.defaultAlias = "Quest76205"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76205:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76205:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7620508"] = self.OnSubStart7620508,
        ["7620504"] = self.OnSubStart7620504,
        ["7620501"] = self.OnSubStart7620501,
        ["7620505"] = self.OnSubStart7620505,
        ["7620509"] = self.OnSubStart7620509,
        ["7620510"] = self.OnSubStart7620510,
        ["7620502"] = self.OnSubStart7620502,
        ["7620506"] = self.OnSubStart7620506,
        ["7620507"] = self.OnSubStart7620507,
        ["7620503"] = self.OnSubStart7620503
    }
end

function Quest76205:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7620508"] = self.OnSubFinish7620508,
        ["7620504"] = self.OnSubFinish7620504,
        ["7620501"] = self.OnSubFinish7620501,
        ["7620505"] = self.OnSubFinish7620505,
        ["7620509"] = self.OnSubFinish7620509,
        ["7620510"] = self.OnSubFinish7620510,
        ["7620502"] = self.OnSubFinish7620502,
        ["7620506"] = self.OnSubFinish7620506,
        ["7620507"] = self.OnSubFinish7620507,
        ["7620503"] = self.OnSubFinish7620503
    }
end

function Quest76205:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7620505"] = self.OnSubFailed7620505,
        ["7620509"] = self.OnSubFailed7620509,
        ["7620510"] = self.OnSubFailed7620510,
        ["7620502"] = self.OnSubFailed7620502,
        ["7620506"] = self.OnSubFailed7620506,
        ["7620507"] = self.OnSubFailed7620507
    }
end

function Quest76205:Start()
    print("Start")
end

function Quest76205:OnDestroy()
    print("OnDestroy")
end

function Quest76205:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76205:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76205:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76205:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7620501Trigger", 76205)
    this:ActorDestroy("Q7620501Talknoblack", 76205)
    this:ActorDestroy("Q7620502Trigger", nil)
    this:ActorDestroy("Q7620504Trigger", nil)
    this:ActorDestroy("Q7620508Trigger", 76205)
end

function Quest76205:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest76205:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76205:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest76205:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76205:OnSubStart7620508(arg1)
    print("OnSubStart7620508")
    actorMgr:CreateActorWithPos("Q7620508Trigger", "Actor/Gadget/Q7620508Trigger", 70900002, 0, points._Q7620508TriggerPoint_.pos, points._Q7620508TriggerPoint_.rot, true, false, 3, nil, 0, 76205)
end

function Quest76205:OnSubFinish7620508(arg1)
    print("OnSubFinish7620508")
    this:ActorDestroy("Q7620508Trigger", 76205)
end

function Quest76205:OnSubStart7620504(arg1)
    print("OnSubStart7620504")
    actorMgr:CreateActorWithPos("Q7620504Trigger", "Actor/Gadget/Q7620504Trigger", 70900002, 0, points._Q7620504TriggerPoint_.pos, points._Q7620504TriggerPoint_.rot, true, false, 1156, nil, 0, 0)
end

function Quest76205:OnSubFinish7620504(arg1)
    print("OnSubFinish7620504")
end

function Quest76205:OnSubStart7620501(arg1)
    print("OnSubStart7620501")
    this:CreateQuestNpc(arg1, npcs.Npc1322_1.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7620501Trigger", "Actor/Gadget/Q7620501Trigger", 70900002, 0, points._Q7620501TriggerPoint_.pos, points._Q7620501TriggerPoint_.rot, true, false, 1156, nil, 0, 76205)
end

function Quest76205:OnSubFinish7620501(arg1)
    print("OnSubFinish7620501")
    this:NpcDestroyImmediately(1156, npcs.Npc1322_1.alias)
    this:SetNavigationByMainId(76205, true)
end

function Quest76205:OnSubStart7620505(arg1)
    print("OnSubStart7620505")
    this:NpcCreateWithNoBlack(npcs.Npc16600.id, 0, 1, 7620505, true, 7620505)
end

function Quest76205:OnSubFinish7620505(arg1)
    print("OnSubFinish7620505")
    this:NpcDestroyImmediately(1156, npcs.Npc16600.alias)
end

function Quest76205:OnSubFailed7620505(arg1)
    print("OnSubFailed7620505")
    this:RecycleAllRes()
end

function Quest76205:OnSubStart7620509(arg1)
    print("OnSubStart7620509")
end

function Quest76205:OnSubFinish7620509(arg1)
    print("OnSubFinish7620509")
end

function Quest76205:OnSubFailed7620509(arg1)
    print("OnSubFailed7620509")
    this:RecycleAllRes()
end

function Quest76205:OnSubStart7620510(arg1)
    print("OnSubStart7620510")
end

function Quest76205:OnSubFinish7620510(arg1)
    print("OnSubFinish7620510")
end

function Quest76205:OnSubFailed7620510(arg1)
    print("OnSubFailed7620510")
    this:RecycleAllRes()
end

function Quest76205:OnSubStart7620502(arg1)
    print("OnSubStart7620502")
    this:NpcCreateWithNoBlack(npcs.Npc16600.id, 0, 2, 7620502, true, 7620502)
end

function Quest76205:OnSubFinish7620502(arg1)
    print("OnSubFinish7620502")
    this:NpcDestroyImmediately(1156, npcs.Npc16600.alias)
end

function Quest76205:OnSubFailed7620502(arg1)
    print("OnSubFailed7620502")
    this:RecycleAllRes()
end

function Quest76205:OnSubStart7620506(arg1)
    print("OnSubStart7620506")
end

function Quest76205:OnSubFinish7620506(arg1)
    print("OnSubFinish7620506")
end

function Quest76205:OnSubFailed7620506(arg1)
    print("OnSubFailed7620506")
    this:RecycleAllRes()
end

function Quest76205:OnSubStart7620507(arg1)
    print("OnSubStart7620507")
end

function Quest76205:OnSubFinish7620507(arg1)
    print("OnSubFinish7620507")
end

function Quest76205:OnSubFailed7620507(arg1)
    print("OnSubFailed7620507")
    this:RecycleAllRes()
end

function Quest76205:OnSubStart7620503(arg1)
    print("OnSubStart7620503")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7620503, 0, 15, 1, npcs.Npc1322_1.id)
end

function Quest76205:OnSubFinish7620503(arg1)
    print("OnSubFinish7620503")
    this:NpcDestroyImmediately(1156, npcs.Npc1322_1.alias)
end

return Quest76205
