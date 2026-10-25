require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76033 = class("Quest76033", QuestActorProxy)
Quest76033.defaultAlias = "Quest76033"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76033:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76033:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7603301"] = self.OnSubStart7603301,
        ["7603310"] = self.OnSubStart7603310,
        ["7603311"] = self.OnSubStart7603311,
        ["7603302"] = self.OnSubStart7603302,
        ["7603303"] = self.OnSubStart7603303,
        ["7603304"] = self.OnSubStart7603304,
        ["7603309"] = self.OnSubStart7603309,
        ["7603305"] = self.OnSubStart7603305,
        ["7603306"] = self.OnSubStart7603306,
        ["7603312"] = self.OnSubStart7603312,
        ["7603307"] = self.OnSubStart7603307,
        ["7603308"] = self.OnSubStart7603308
    }
end

function Quest76033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7603301"] = self.OnSubFinish7603301,
        ["7603310"] = self.OnSubFinish7603310,
        ["7603311"] = self.OnSubFinish7603311,
        ["7603302"] = self.OnSubFinish7603302,
        ["7603303"] = self.OnSubFinish7603303,
        ["7603304"] = self.OnSubFinish7603304,
        ["7603309"] = self.OnSubFinish7603309,
        ["7603305"] = self.OnSubFinish7603305,
        ["7603306"] = self.OnSubFinish7603306,
        ["7603312"] = self.OnSubFinish7603312,
        ["7603307"] = self.OnSubFinish7603307,
        ["7603308"] = self.OnSubFinish7603308
    }
end

function Quest76033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76033:Start()
    print("Start")
end

function Quest76033:OnDestroy()
    print("OnDestroy")
end

function Quest76033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76033:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76033:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7603304Trigger")
end

function Quest76033:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76033:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest76033:OnSubStart7603301(arg1)
    print("OnSubStart7603301")
end

function Quest76033:OnSubFinish7603301(arg1)
    print("OnSubFinish7603301")
end

function Quest76033:OnSubStart7603310(arg1)
    print("OnSubStart7603310")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId7603310, nil)
        actorUtils.FinishQuestID(false, 7603310)
    end)
end

function Quest76033:OnSubFinish7603310(arg1)
    print("OnSubFinish7603310")
end

function Quest76033:OnSubStart7603311(arg1)
    print("OnSubStart7603311")
end

function Quest76033:OnSubFinish7603311(arg1)
    print("OnSubFinish7603311")
end

function Quest76033:OnSubStart7603302(arg1)
    print("OnSubStart7603302")
    this:AfterMainPageActiveSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc15677.id, 0, true, 2)
        actorMgr:CreateActorWithPos("Q7603304Trigger", "Actor/Gadget/Q7603304Trigger", 70900002, 0, points._Q7603304TriggerPoint_.pos, points._Q7603304TriggerPoint_.rot, true, false, 3)
    end)
end

function Quest76033:OnSubFinish7603302(arg1)
    print("OnSubFinish7603302")
    this:GetQuestNpcActor(npcs.Npc15677.alias, 76033):DestroyWithDitherEx(2)
end

function Quest76033:OnSubStart7603303(arg1)
    print("OnSubStart7603303")
end

function Quest76033:OnSubFinish7603303(arg1)
    print("OnSubFinish7603303")
end

function Quest76033:OnSubStart7603304(arg1)
    print("OnSubStart7603304")
    this:AfterMainPageActiveSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc15677.id, 0, true, 2)
        actorMgr:CreateActorWithPos("Q7603304Trigger", "Actor/Gadget/Q7603304Trigger", 70900002, 0, points._Q7603304TriggerPoint_.pos, points._Q7603304TriggerPoint_.rot, true, false, 3)
    end)
end

function Quest76033:OnSubFinish7603304(arg1)
    print("OnSubFinish7603304")
    this:GetQuestNpcActor(npcs.Npc15677.alias, 76033):DestroyWithDitherEx(2)
end

function Quest76033:OnSubStart7603309(arg1)
    print("OnSubStart7603309")
end

function Quest76033:OnSubFinish7603309(arg1)
    print("OnSubFinish7603309")
end

function Quest76033:OnSubStart7603305(arg1)
    print("OnSubStart7603305")
end

function Quest76033:OnSubFinish7603305(arg1)
    print("OnSubFinish7603305")
end

function Quest76033:OnSubStart7603306(arg1)
    print("OnSubStart7603306")
    this:AfterMainPageActiveSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc15677.id, 0, true, 2)
        this:GetQuestNpcActor(npcs.Npc15677.alias, 76033):DoFreeStyle(1190, true, nil, true, true, false, true)
        actorMgr:CreateActorWithPos("Q7603304Trigger", "Actor/Gadget/Q7603304Trigger", 70900002, 0, points._Q7603304TriggerPoint_.pos, points._Q7603304TriggerPoint_.rot, true, false, 3)
    end)
end

function Quest76033:OnSubFinish7603306(arg1)
    print("OnSubFinish7603306")
    this:GetQuestNpcActor(npcs.Npc15677.alias, 76033):DestroyWithDitherEx(2)
end

function Quest76033:OnSubStart7603312(arg1)
    print("OnSubStart7603312")
end

function Quest76033:OnSubFinish7603312(arg1)
    print("OnSubFinish7603312")
end

function Quest76033:OnSubStart7603307(arg1)
    print("OnSubStart7603307")
end

function Quest76033:OnSubFinish7603307(arg1)
    print("OnSubFinish7603307")
end

function Quest76033:OnSubStart7603308(arg1)
    print("OnSubStart7603308")
    this:AfterMainPageActiveSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc15677.id, 0, true, 2)
        this:GetQuestNpcActor(npcs.Npc15677.alias, 76033):DoFreeStyle(1170, true, nil, true, true, false, true)
        actorMgr:CreateActorWithPos("Q7603304Trigger", "Actor/Gadget/Q7603304Trigger", 70900002, 0, points._Q7603304TriggerPoint_.pos, points._Q7603304TriggerPoint_.rot, true, false, 3)
    end)
end

function Quest76033:OnSubFinish7603308(arg1)
    print("OnSubFinish7603308")
    this:GetQuestNpcActor(npcs.Npc15677.alias, 76033):DestroyWithDitherEx(2)
end

return Quest76033
