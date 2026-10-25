require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76009 = class("Quest76009", QuestActorProxy)
Quest76009.defaultAlias = "Quest76009"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76009:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7600902"] = self.OnSubStart7600902,
        ["7600903"] = self.OnSubStart7600903,
        ["7600907"] = self.OnSubStart7600907,
        ["7600904"] = self.OnSubStart7600904,
        ["7600905"] = self.OnSubStart7600905,
        ["7600906"] = self.OnSubStart7600906,
        ["7600901"] = self.OnSubStart7600901
    }
end

function Quest76009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7600902"] = self.OnSubFinish7600902,
        ["7600903"] = self.OnSubFinish7600903,
        ["7600907"] = self.OnSubFinish7600907,
        ["7600904"] = self.OnSubFinish7600904,
        ["7600905"] = self.OnSubFinish7600905,
        ["7600906"] = self.OnSubFinish7600906,
        ["7600901"] = self.OnSubFinish7600901
    }
end

function Quest76009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76009:Start()
    print("Start")
end

function Quest76009:OnDestroy()
    print("OnDestroy")
end

function Quest76009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76009:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76009:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7600901Trigger")
end

function Quest76009:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76009:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76009:OnSubStart7600902(arg1)
    print("OnSubStart7600902")
    this:CreateQuestNpc(arg1, npcs.Npc21839.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21839.alias, 76009):DoFreeStyle(5020, true, nil, true, true, false, false)
end

function Quest76009:OnSubFinish7600902(arg1)
    print("OnSubFinish7600902")
    this:SetNavigationByMainId(76009, true)
end

function Quest76009:OnSubStart7600903(arg1)
    print("OnSubStart7600903")
end

function Quest76009:OnSubFinish7600903(arg1)
    print("OnSubFinish7600903")
end

function Quest76009:OnSubStart7600907(arg1)
    print("OnSubStart7600907")
end

function Quest76009:OnSubFinish7600907(arg1)
    print("OnSubFinish7600907")
end

function Quest76009:OnSubStart7600904(arg1)
    print("OnSubStart7600904")
end

function Quest76009:OnSubFinish7600904(arg1)
    print("OnSubFinish7600904")
end

function Quest76009:OnSubStart7600905(arg1)
    print("OnSubStart7600905")
    this:PlayCutsceneIndex(7600905, function(arg1)
        actorUtils.FinishQuestID(false, 7600905)
    end, nil, nil, false)
end

function Quest76009:OnSubFinish7600905(arg1)
    print("OnSubFinish7600905")
end

function Quest76009:OnSubStart7600906(arg1)
    print("OnSubStart7600906")
    this:GetQuestNpcActor(npcs.Npc21839.alias, 76009):RunToRouteTask(datas.RoutePointsData, nil, nil, nil, nil)
end

function Quest76009:OnSubFinish7600906(arg1)
    print("OnSubFinish7600906")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21839.alias)
end

function Quest76009:OnSubStart7600901(arg1)
    print("OnSubStart7600901")
    actorMgr:CreateActorWithPos("Q7600901Trigger", "Actor/Gadget/Q7600901Trigger", 70900002, 0, points._Q7600901TriggerPoint_.pos, points._Q7600901TriggerPoint_.rot, true, false, 3)
end

function Quest76009:OnSubFinish7600901(arg1)
    print("OnSubFinish7600901")
end

return Quest76009
