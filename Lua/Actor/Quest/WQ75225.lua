require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75225 = class("Quest75225", QuestActorProxy)
Quest75225.defaultAlias = "Quest75225"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75225:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75225:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7522501"] = self.OnSubStart7522501,
        ["7522502"] = self.OnSubStart7522502,
        ["7522503"] = self.OnSubStart7522503
    }
end

function Quest75225:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7522501"] = self.OnSubFinish7522501,
        ["7522502"] = self.OnSubFinish7522502,
        ["7522503"] = self.OnSubFinish7522503
    }
end

function Quest75225:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7522502"] = self.OnSubFailed7522502}
end

function Quest75225:Start()
    print("Start")
end

function Quest75225:OnDestroy()
    print("OnDestroy")
end

function Quest75225:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75225:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75225:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75225:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7522503Trigger")
end

function Quest75225:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75225:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75225:OnSubStart7522501(arg1)
    print("OnSubStart7522501")
    this:CreateQuestNpc(arg1, npcs.Npc6332.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6332.alias, 75225):DoFreeStyle(4465, true, nil, true, true, false, false)
end

function Quest75225:OnSubFinish7522501(arg1)
    print("OnSubFinish7522501")
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_challengeStart, nil, nil, nil)
end

function Quest75225:OnSubStart7522502(arg1)
    print("OnSubStart7522502")
    this:CreateQuestNpc(arg1, npcs.Npc6332.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6332.alias, 75225):DoFreeStyle(1270, true, nil, true, true, false, false)
end

function Quest75225:OnSubFinish7522502(arg1)
    print("OnSubFinish7522502")
    this:TransmitPlayerByData(arg1, 3, datas.TransmitData_challengeSucce, nil, nil, nil)
end

function Quest75225:OnSubFailed7522502(arg1)
    print("OnSubFailed7522502")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_chanllengeFail, nil, nil, nil)
end

function Quest75225:OnSubStart7522503(arg1)
    print("OnSubStart7522503")
    this:GetQuestNpcActor(npcs.Npc6332.alias, 75225):DoFreeStyle(1270, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7522503Trigger", "Actor/Gadget/Q7522503Trigger", 70900002, 0, points._Q7522503TriggerPoint_.pos, points._Q7522503TriggerPoint_.rot, true, false, 3)
end

function Quest75225:OnSubFinish7522503(arg1)
    print("OnSubFinish7522503")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6332.alias)
end

return Quest75225
