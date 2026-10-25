require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70061 = class("Quest70061", QuestActorProxy)
Quest70061.defaultAlias = "Quest70061"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest70061:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70061:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7006111"] = self.OnSubStart7006111,
        ["7006101"] = self.OnSubStart7006101,
        ["7006109"] = self.OnSubStart7006109,
        ["7006112"] = self.OnSubStart7006112,
        ["7006103"] = self.OnSubStart7006103,
        ["7006104"] = self.OnSubStart7006104,
        ["7006110"] = self.OnSubStart7006110,
        ["7006105"] = self.OnSubStart7006105,
        ["7006113"] = self.OnSubStart7006113,
        ["7006106"] = self.OnSubStart7006106,
        ["7006107"] = self.OnSubStart7006107
    }
end

function Quest70061:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7006111"] = self.OnSubFinish7006111,
        ["7006101"] = self.OnSubFinish7006101,
        ["7006109"] = self.OnSubFinish7006109,
        ["7006112"] = self.OnSubFinish7006112,
        ["7006103"] = self.OnSubFinish7006103,
        ["7006104"] = self.OnSubFinish7006104,
        ["7006110"] = self.OnSubFinish7006110,
        ["7006105"] = self.OnSubFinish7006105,
        ["7006113"] = self.OnSubFinish7006113,
        ["7006106"] = self.OnSubFinish7006106,
        ["7006107"] = self.OnSubFinish7006107
    }
end

function Quest70061:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7006103"] = self.OnSubFailed7006103,
        ["7006104"] = self.OnSubFailed7006104,
        ["7006110"] = self.OnSubFailed7006110,
        ["7006106"] = self.OnSubFailed7006106
    }
end

function Quest70061:Start()
    print("Start")
end

function Quest70061:OnDestroy()
    print("OnDestroy")
end

function Quest70061:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70061:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70061:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70061:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7006101Trigger", nil)
    this:ActorDestroy("Q7006104Trigger", nil)
end

function Quest70061:ActorDestroy(arg1, arg2)
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

function Quest70061:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest70061:OnSubStart7006111(arg1)
    print("OnSubStart7006111")
    this:CreateQuestNpc(arg1, npcs.Npc1800.id, 0, false, 0)
end

function Quest70061:OnSubFinish7006111(arg1)
    print("OnSubFinish7006111")
end

function Quest70061:OnSubStart7006101(arg1)
    print("OnSubStart7006101")
    this:GetQuestNpcActor(npcs.Npc1800.alias, 70061):DoFreeStyle(9011, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7006101Trigger", "Actor/Gadget/Q7006101Trigger", 70900002, 0, points._Q7006101TriggerPoint_.pos, points._Q7006101TriggerPoint_.rot, true, false, 3, nil, 0, 70061)
end

function Quest70061:OnSubFinish7006101(arg1)
    print("OnSubFinish7006101")
end

function Quest70061:OnSubStart7006109(arg1)
    print("OnSubStart7006109")
end

function Quest70061:OnSubFinish7006109(arg1)
    print("OnSubFinish7006109")
end

function Quest70061:OnSubStart7006112(arg1)
    print("OnSubStart7006112")
end

function Quest70061:OnSubFinish7006112(arg1)
    print("OnSubFinish7006112")
end

function Quest70061:OnSubStart7006103(arg1)
    print("OnSubStart7006103")
end

function Quest70061:OnSubFinish7006103(arg1)
    print("OnSubFinish7006103")
end

function Quest70061:OnSubFailed7006103(arg1)
    print("OnSubFailed7006103")
    this:ActorDestroy("Q7006103Trigger", nil)
end

function Quest70061:OnSubStart7006104(arg1)
    print("OnSubStart7006104")
    actorMgr:CreateActorWithPos("Q7006104Trigger", "Actor/Gadget/Q7006104Trigger", 70900002, 0, points._Q7006104TriggerPoint_.pos, points._Q7006104TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest70061:OnSubFinish7006104(arg1)
    print("OnSubFinish7006104")
    this:QuestNarratorTask(datas.NarratorWithId_7006104, nil)
end

function Quest70061:OnSubFailed7006104(arg1)
    print("OnSubFailed7006104")
    this:ActorDestroy("Q7006104Trigger", nil)
end

function Quest70061:OnSubStart7006110(arg1)
    print("OnSubStart7006110")
end

function Quest70061:OnSubFinish7006110(arg1)
    print("OnSubFinish7006110")
end

function Quest70061:OnSubFailed7006110(arg1)
    print("OnSubFailed7006110")
    this:ActorDestroy("Q7006104Trigger", nil)
end

function Quest70061:OnSubStart7006105(arg1)
    print("OnSubStart7006105")
end

function Quest70061:OnSubFinish7006105(arg1)
    print("OnSubFinish7006105")
end

function Quest70061:OnSubStart7006113(arg1)
    print("OnSubStart7006113")
end

function Quest70061:OnSubFinish7006113(arg1)
    print("OnSubFinish7006113")
end

function Quest70061:OnSubStart7006106(arg1)
    print("OnSubStart7006106")
end

function Quest70061:OnSubFinish7006106(arg1)
    print("OnSubFinish7006106")
    this:QuestNarratorTask(datas.NarratorWithId_7006106, nil)
end

function Quest70061:OnSubFailed7006106(arg1)
    print("OnSubFailed7006106")
    this:RecycleAllRes()
end

function Quest70061:OnSubStart7006107(arg1)
    print("OnSubStart7006107")
    this:GetQuestNpcActor(npcs.Npc1800.alias, 70061):DoFreeStyle(4401, true, nil, true, true, false, false)
end

function Quest70061:OnSubFinish7006107(arg1)
    print("OnSubFinish7006107")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1800.alias)
end

return Quest70061
