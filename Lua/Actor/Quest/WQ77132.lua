require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77132 = class("Quest77132", QuestActorProxy)
Quest77132.defaultAlias = "Quest77132"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77132:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77132:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7713201"] = self.OnSubStart7713201,
        ["7713202"] = self.OnSubStart7713202,
        ["7713203"] = self.OnSubStart7713203,
        ["7713204"] = self.OnSubStart7713204,
        ["7713207"] = self.OnSubStart7713207
    }
end

function Quest77132:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7713201"] = self.OnSubFinish7713201,
        ["7713202"] = self.OnSubFinish7713202,
        ["7713203"] = self.OnSubFinish7713203,
        ["7713204"] = self.OnSubFinish7713204,
        ["7713207"] = self.OnSubFinish7713207
    }
end

function Quest77132:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77132:Start()
    print("Start")
end

function Quest77132:OnDestroy()
    print("OnDestroy")
end

function Quest77132:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77132:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77132:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77132:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7713201Trigger", 77132)
    this:ActorDestroy("Q7713202Trigger", 77132)
end

function Quest77132:ActorDestroy(arg1, arg2)
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

function Quest77132:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77132:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77132:OnSubStart7713201(arg1)
    print("OnSubStart7713201")
    actorMgr:CreateActorWithPos("Q7713201Trigger", "Actor/Gadget/Q7713201Trigger", 70900002, 0, points._Q7713201TriggerPoint_.pos, points._Q7713201TriggerPoint_.rot, true, false, 3, nil, 0, 77132)
end

function Quest77132:OnSubFinish7713201(arg1)
    print("OnSubFinish7713201")
    this:SetNavigationByMainId(77132, true)
    this:QuestNarratorTask(datas.NarratorWithId_7713201, nil)
end

function Quest77132:OnSubStart7713202(arg1)
    print("OnSubStart7713202")
    actorMgr:CreateActorWithPos("Q7713202Trigger", "Actor/Gadget/Q7713202Trigger", 70900002, 0, points.Q7713202Trigger.pos, points.Q7713202Trigger.rot, true, false, 3, nil, 0, 77132)
end

function Quest77132:OnSubFinish7713202(arg1)
    print("OnSubFinish7713202")
    this:QuestNarratorTask(datas.NarratorWithId_7713202, nil)
end

function Quest77132:OnSubStart7713203(arg1)
    print("OnSubStart7713203")
end

function Quest77132:OnSubFinish7713203(arg1)
    print("OnSubFinish7713203")
end

function Quest77132:OnSubStart7713204(arg1)
    print("OnSubStart7713204")
    this:PlayCutsceneIndex(7713204, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7713204})
    end, nil, nil, false)
end

function Quest77132:OnSubFinish7713204(arg1)
    print("OnSubFinish7713204")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77132:OnSubStart7713207(arg1)
    print("OnSubStart7713207")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7713207, 0, 20, 0, npcs.Npc22418.id)
end

function Quest77132:OnSubFinish7713207(arg1)
    print("OnSubFinish7713207")
    this:NpcDestroyImmediately(3, npcs.Npc22418.alias)
end

return Quest77132
