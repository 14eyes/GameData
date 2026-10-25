require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76010 = class("Quest76010", QuestActorProxy)
Quest76010.defaultAlias = "Quest76010"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76010:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7601001"] = self.OnSubStart7601001,
        ["7601002"] = self.OnSubStart7601002,
        ["7601003"] = self.OnSubStart7601003,
        ["7601004"] = self.OnSubStart7601004,
        ["7601005"] = self.OnSubStart7601005,
        ["7601006"] = self.OnSubStart7601006
    }
end

function Quest76010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7601001"] = self.OnSubFinish7601001,
        ["7601002"] = self.OnSubFinish7601002,
        ["7601003"] = self.OnSubFinish7601003,
        ["7601004"] = self.OnSubFinish7601004,
        ["7601005"] = self.OnSubFinish7601005,
        ["7601006"] = self.OnSubFinish7601006
    }
end

function Quest76010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76010:Start()
    print("Start")
end

function Quest76010:OnDestroy()
    print("OnDestroy")
end

function Quest76010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76010:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76010:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7601001Trigger")
end

function Quest76010:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76010:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76010:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76010:OnSubStart7601001(arg1)
    print("OnSubStart7601001")
    this:CreateQuestNpc(arg1, npcs.Npc21840.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7601001Trigger", "Actor/Gadget/Q7601001Trigger", 70900002, 0, points._Q7601001TriggerPoint_.pos, points._Q7601001TriggerPoint_.rot, true, false, 3)
end

function Quest76010:OnSubFinish7601001(arg1)
    print("OnSubFinish7601001")
    this:QuestNarratorTask(datas.NarratorWithId_7601002, nil)
end

function Quest76010:OnSubStart7601002(arg1)
    print("OnSubStart7601002")
end

function Quest76010:OnSubFinish7601002(arg1)
    print("OnSubFinish7601002")
    this:SetNavigationByMainId(76010, true)
end

function Quest76010:OnSubStart7601003(arg1)
    print("OnSubStart7601003")
end

function Quest76010:OnSubFinish7601003(arg1)
    print("OnSubFinish7601003")
end

function Quest76010:OnSubStart7601004(arg1)
    print("OnSubStart7601004")
end

function Quest76010:OnSubFinish7601004(arg1)
    print("OnSubFinish7601004")
end

function Quest76010:OnSubStart7601005(arg1)
    print("OnSubStart7601005")
    this:PlayCutsceneIndex(7601005, function(arg1)
        actorUtils.FinishQuestID(false, 7601005)
    end, nil, nil, false)
end

function Quest76010:OnSubFinish7601005(arg1)
    print("OnSubFinish7601005")
end

function Quest76010:OnSubStart7601006(arg1)
    print("OnSubStart7601006")
    this:NpcCreateWithNpcTrigger(npcs.Npc21840.id, 0, 10, 7601006)
end

function Quest76010:OnSubFinish7601006(arg1)
    print("OnSubFinish7601006")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21840.alias)
end

return Quest76010
