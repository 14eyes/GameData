require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74086 = class("Quest74086", QuestActorProxy)
Quest74086.defaultAlias = "Quest74086"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74086:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74086:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7408601"] = self.OnSubStart7408601,
        ["7408602"] = self.OnSubStart7408602,
        ["7408603"] = self.OnSubStart7408603,
        ["7408604"] = self.OnSubStart7408604,
        ["7408605"] = self.OnSubStart7408605
    }
end

function Quest74086:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7408601"] = self.OnSubFinish7408601,
        ["7408602"] = self.OnSubFinish7408602,
        ["7408603"] = self.OnSubFinish7408603,
        ["7408604"] = self.OnSubFinish7408604,
        ["7408605"] = self.OnSubFinish7408605
    }
end

function Quest74086:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74086:Start()
    print("Start")
end

function Quest74086:OnDestroy()
    print("OnDestroy")
end

function Quest74086:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74086:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74086:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74086:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74086:OnSubStart7408601(arg1)
    print("OnSubStart7408601")
    actorMgr:CreateActorWithPos("Q7408601Trigger", "Actor/Gadget/Q7408601Trigger", 70900002, 0, points.TPos_Q7408601Trigger.pos, points.TPos_Q7408601Trigger.rot, true, false, 3)
end

function Quest74086:OnSubFinish7408601(arg1)
    print("OnSubFinish7408601")
end

function Quest74086:OnSubStart7408602(arg1)
    print("OnSubStart7408602")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21084Data.id, 0, npcs.Npc21084Data.alias)
    this:CreateQuestNpc(arg1, npcs.Npc5259Data.id, 0)
end

function Quest74086:OnSubFinish7408602(arg1)
    print("OnSubFinish7408602")
    this:SafeDestroyQuestNpc(npcs.Npc21084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5259Data.alias, 3)
end

function Quest74086:OnSubStart7408603(arg1)
    print("OnSubStart7408603")
end

function Quest74086:OnSubFinish7408603(arg1)
    print("OnSubFinish7408603")
end

function Quest74086:OnSubStart7408604(arg1)
    print("OnSubStart7408604")
end

function Quest74086:OnSubFinish7408604(arg1)
    print("OnSubFinish7408604")
    this:CallDelayByQuest(datas.Narrator_1.tag, 5, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_1)
    end)
end

function Quest74086:OnSubStart7408605(arg1)
    print("OnSubStart7408605")
end

function Quest74086:OnSubFinish7408605(arg1)
    print("OnSubFinish7408605")
end

return Quest74086
