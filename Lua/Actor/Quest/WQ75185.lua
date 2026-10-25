require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75185 = class("Quest75185", QuestActorProxy)
Quest75185.defaultAlias = "Quest75185"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75185:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75185:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7518501"] = self.OnSubStart7518501,
        ["7518503"] = self.OnSubStart7518503,
        ["7518502"] = self.OnSubStart7518502
    }
end

function Quest75185:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7518501"] = self.OnSubFinish7518501,
        ["7518503"] = self.OnSubFinish7518503,
        ["7518502"] = self.OnSubFinish7518502
    }
end

function Quest75185:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7518503"] = self.OnSubFailed7518503}
end

function Quest75185:Start()
    print("Start")
end

function Quest75185:OnDestroy()
    print("OnDestroy")
end

function Quest75185:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75185:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75185:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75185:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7518504EndTrigger")
end

function Quest75185:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75185:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75185:OnSubStart7518501(arg1)
    print("OnSubStart7518501")
    this:CreateQuestNpc(arg1, npcs.Npc6345.id, 0, false, 0)
end

function Quest75185:OnSubFinish7518501(arg1)
    print("OnSubFinish7518501")
end

function Quest75185:OnSubStart7518503(arg1)
    print("OnSubStart7518503")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_7518503, nil, nil, nil)
end

function Quest75185:OnSubFinish7518503(arg1)
    print("OnSubFinish7518503")
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_7518504, nil, nil, nil)
end

function Quest75185:OnSubFailed7518503(arg1)
    print("OnSubFailed7518503")
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_7518504, nil, nil, nil)
end

function Quest75185:OnSubStart7518502(arg1)
    print("OnSubStart7518502")
    actorMgr:CreateActorWithPos("Q7518504EndTrigger", "Actor/Gadget/Q7518504EndTrigger", 70900002, 0, points._Q7518504EndTriggerPoint_.pos, points._Q7518504EndTriggerPoint_.rot, true, false, 3)
end

function Quest75185:OnSubFinish7518502(arg1)
    print("OnSubFinish7518502")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6345.alias)
    this:LightNotifyTo(npcs.Npc6345.alias, 0, true)
end

return Quest75185
