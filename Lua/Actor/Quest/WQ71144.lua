require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71144 = class("Quest71144", QuestActorProxy)
Quest71144.defaultAlias = "Quest71144"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest71144:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest71144:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7114401"] = self.OnSubStart7114401,
        ["7114402"] = self.OnSubStart7114402,
        ["7114403"] = self.OnSubStart7114403
    }
end

function Quest71144:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7114401"] = self.OnSubFinish7114401,
        ["7114402"] = self.OnSubFinish7114402,
        ["7114403"] = self.OnSubFinish7114403
    }
end

function Quest71144:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7114401"] = self.OnSubFailed7114401,
        ["7114402"] = self.OnSubFailed7114402,
        ["7114403"] = self.OnSubFailed7114403
    }
end

function Quest71144:Start()
    print("Start")
end

function Quest71144:OnDestroy()
    print("OnDestroy")
end

function Quest71144:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71144:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71144:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30601.alias, 3)
    this:ActorDestroy("tigger7114401")
    this:ActorDestroy("tigger7114402")
end

function Quest71144:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest71144:OnSubStart7114401(arg1)
    print("OnSubStart7114401")
    actorUtils.FinishQuestID(false, 7114401)
end

function Quest71144:OnSubFinish7114401(arg1)
    print("OnSubFinish7114401")
    this:QuestNarratorTask(datas.NarratorWithId7114401, nil)
end

function Quest71144:OnSubFailed7114401(arg1)
    print("OnSubFailed7114401")
end

function Quest71144:OnSubStart7114402(arg1)
    print("OnSubStart7114402")
    this:CreateQuestNpc(arg1, npcs.Npc30601.id, 0, false, 0)
    actorMgr:CreateActorWithPos("tigger7114401", "Actor/Gadget/tigger7114401", 70900002, 0, points.point7114401.pos, points.point7114401.rot, true, false, 3)
end

function Quest71144:OnSubFinish7114402(arg1)
    print("OnSubFinish7114402")
end

function Quest71144:OnSubFailed7114402(arg1)
    print("OnSubFailed7114402")
end

function Quest71144:OnSubStart7114403(arg1)
    print("OnSubStart7114403")
    actorMgr:CreateActorWithPos("tigger7114402", "Actor/Gadget/tigger7114402", 70900002, 0, points.point7114401.pos, points.point7114401.rot, true, false, 3)
end

function Quest71144:OnSubFinish7114403(arg1)
    print("OnSubFinish7114403")
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("MvmStagePage", 0)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc30601.alias, 3)
    this:ClearNarratorTask()
end

function Quest71144:OnSubFailed7114403(arg1)
    print("OnSubFailed7114403")
end

return Quest71144
