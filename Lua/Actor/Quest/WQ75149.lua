require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75149 = class("Quest75149", QuestActorProxy)
Quest75149.defaultAlias = "Quest75149"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75149:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75149:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7514917"] = self.OnSubStart7514917,
        ["7514906"] = self.OnSubStart7514906,
        ["7514901"] = self.OnSubStart7514901,
        ["7514902"] = self.OnSubStart7514902,
        ["7514909"] = self.OnSubStart7514909,
        ["7514910"] = self.OnSubStart7514910,
        ["7514911"] = self.OnSubStart7514911,
        ["7514912"] = self.OnSubStart7514912,
        ["7514915"] = self.OnSubStart7514915,
        ["7514903"] = self.OnSubStart7514903,
        ["7514904"] = self.OnSubStart7514904,
        ["7514905"] = self.OnSubStart7514905,
        ["7514913"] = self.OnSubStart7514913,
        ["7514907"] = self.OnSubStart7514907,
        ["7514908"] = self.OnSubStart7514908,
        ["7514916"] = self.OnSubStart7514916,
        ["7514914"] = self.OnSubStart7514914
    }
end

function Quest75149:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7514917"] = self.OnSubFinish7514917,
        ["7514906"] = self.OnSubFinish7514906,
        ["7514901"] = self.OnSubFinish7514901,
        ["7514902"] = self.OnSubFinish7514902,
        ["7514909"] = self.OnSubFinish7514909,
        ["7514910"] = self.OnSubFinish7514910,
        ["7514911"] = self.OnSubFinish7514911,
        ["7514912"] = self.OnSubFinish7514912,
        ["7514915"] = self.OnSubFinish7514915,
        ["7514903"] = self.OnSubFinish7514903,
        ["7514904"] = self.OnSubFinish7514904,
        ["7514905"] = self.OnSubFinish7514905,
        ["7514913"] = self.OnSubFinish7514913,
        ["7514907"] = self.OnSubFinish7514907,
        ["7514908"] = self.OnSubFinish7514908,
        ["7514916"] = self.OnSubFinish7514916,
        ["7514914"] = self.OnSubFinish7514914
    }
end

function Quest75149:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75149:Start()
    print("Start")
end

function Quest75149:OnDestroy()
    print("OnDestroy")
end

function Quest75149:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75149:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75149:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75149:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7514903rigger")
    this:ActorDestroy("Q7514908rigger")
    this:ActorDestroy("Q7514915")
end

function Quest75149:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75149:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75149:OnSubStart7514917(arg1)
    print("OnSubStart7514917")
    this:CreateQuestNpc(arg1, npcs.Npc21772.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc21772.alias, "", true)
end

function Quest75149:OnSubFinish7514917(arg1)
    print("OnSubFinish7514917")
    this:SafeDestroyQuestNpc(npcs.Npc21772.alias, 101)
    this:SetNavigationByMainId(75149, true)
end

function Quest75149:OnSubStart7514906(arg1)
    print("OnSubStart7514906")
    this:CreateQuestNpc(arg1, npcs.Npc21791.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21791.alias, 75149):DoFreeStyle(7, true, nil, true, true, false, false)
end

function Quest75149:OnSubFinish7514906(arg1)
    print("OnSubFinish7514906")
end

function Quest75149:OnSubStart7514901(arg1)
    print("OnSubStart7514901")
    this:CreateQuestNpc(arg1, npcs.Npc21791.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21791.alias, 75149):DoFreeStyle(7, true, nil, true, true, false, false)
end

function Quest75149:OnSubFinish7514901(arg1)
    print("OnSubFinish7514901")
    this:SafeDestroyQuestNpc(npcs.Npc21791.alias, 101)
end

function Quest75149:OnSubStart7514902(arg1)
    print("OnSubStart7514902")
end

function Quest75149:OnSubFinish7514902(arg1)
    print("OnSubFinish7514902")
end

function Quest75149:OnSubStart7514909(arg1)
    print("OnSubStart7514909")
    this:CreateQuestNpc(arg1, npcs.Npc21812.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc21812.alias, "", true)
end

function Quest75149:OnSubFinish7514909(arg1)
    print("OnSubFinish7514909")
end

function Quest75149:OnSubStart7514910(arg1)
    print("OnSubStart7514910")
end

function Quest75149:OnSubFinish7514910(arg1)
    print("OnSubFinish7514910")
end

function Quest75149:OnSubStart7514911(arg1)
    print("OnSubStart7514911")
    this:PlayCutsceneIndex(7514911, function(arg1)
        actorUtils.FinishQuestID(false, 7514911)
    end, nil, nil, false)
end

function Quest75149:OnSubFinish7514911(arg1)
    print("OnSubFinish7514911")
    this:SetNavigationByMainId(75149, true)
end

function Quest75149:OnSubStart7514912(arg1)
    print("OnSubStart7514912")
    this:RequestInteraction(npcs.Npc21812.alias, "", true)
end

function Quest75149:OnSubFinish7514912(arg1)
    print("OnSubFinish7514912")
    this:SafeDestroyQuestNpc(npcs.Npc21812.alias, 101)
    this:SetNavigationByMainId(75149, true)
    local questGlobalVar = this:GetQuestGlobalVar(7514702)
    if questGlobalVar == 0 then
        this:QuestNarratorTask(datas.NarratorWithId_7514912, nil)
    elseif questGlobalVar == 1 then
        this:QuestNarratorTask(datas.NarratorWithId_7514913, nil)
    end
end

function Quest75149:OnSubStart7514915(arg1)
    print("OnSubStart7514915")
    this:CreateQuestNpc(arg1, npcs.Npc21800.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7514915", "Actor/Gadget/Q7514915", 70900002, 0, points._Q7514915Point_.pos, points._Q7514915Point_.rot, true, false, 101)
    this:SetNavigationByMainId(75149, true)
end

function Quest75149:OnSubFinish7514915(arg1)
    print("OnSubFinish7514915")
end

function Quest75149:OnSubStart7514903(arg1)
    print("OnSubStart7514903")
    actorMgr:CreateActorWithPos("Q7514903rigger", "Actor/Gadget/Q7514903rigger", 70900002, 0, points._Q7514903riggerPoint_.pos, points._Q7514903riggerPoint_.rot, true, false, 101)
end

function Quest75149:OnSubFinish7514903(arg1)
    print("OnSubFinish7514903")
end

function Quest75149:OnSubStart7514904(arg1)
    print("OnSubStart7514904")
    this:RequestInteraction(npcs.Npc21800.alias, "", true)
end

function Quest75149:OnSubFinish7514904(arg1)
    print("OnSubFinish7514904")
    this:SetNavigationByMainId(75175, true)
end

function Quest75149:OnSubStart7514905(arg1)
    print("OnSubStart7514905")
end

function Quest75149:OnSubFinish7514905(arg1)
    print("OnSubFinish7514905")
    this:SafeDestroyQuestNpc(npcs.Npc21800.alias, 101)
    this:QuestNarratorTask(datas.NarratorWithId_7514905, nil)
end

function Quest75149:OnSubStart7514913(arg1)
    print("OnSubStart7514913")
    this:CreateQuestNpc(arg1, npcs.Npc21813.id, 0, false, 0)
end

function Quest75149:OnSubFinish7514913(arg1)
    print("OnSubFinish7514913")
    this:SafeDestroyQuestNpc(npcs.Npc21813.alias, 101)
end

function Quest75149:OnSubStart7514907(arg1)
    print("OnSubStart7514907")
end

function Quest75149:OnSubFinish7514907(arg1)
    print("OnSubFinish7514907")
end

function Quest75149:OnSubStart7514908(arg1)
    print("OnSubStart7514908")
    actorMgr:CreateActorWithPos("Q7514908rigger", "Actor/Gadget/Q7514908rigger", 70900002, 0, points._Q7514908riggerPoint_.pos, points._Q7514908riggerPoint_.rot, true, false, 101)
end

function Quest75149:OnSubFinish7514908(arg1)
    print("OnSubFinish7514908")
end

function Quest75149:OnSubStart7514916(arg1)
    print("OnSubStart7514916")
    this:PlayCutsceneIndex(7514916, function(arg1)
        actorUtils.FinishQuestID(false, 7514916)
    end, nil, nil, false)
end

function Quest75149:OnSubFinish7514916(arg1)
    print("OnSubFinish7514916")
end

function Quest75149:OnSubStart7514914(arg1)
    print("OnSubStart7514914")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7514914, 0, 15, 1, npcs.Npc21813.id)
end

function Quest75149:OnSubFinish7514914(arg1)
    print("OnSubFinish7514914")
    this:SafeDestroyQuestNpc(npcs.Npc21813.alias, 101)
    self:ActionSafeCall(function(arg1)
        actorUtils.ShowPage("")
    end)
end

return Quest75149
