require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40248 = class("Quest40248", QuestActorProxy)
Quest40248.defaultAlias = "Quest40248"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40248:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40248:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4024803"] = self.OnSubStart4024803,
        ["4024801"] = self.OnSubStart4024801,
        ["4024802"] = self.OnSubStart4024802
    }
end

function Quest40248:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4024803"] = self.OnSubFinish4024803,
        ["4024801"] = self.OnSubFinish4024801,
        ["4024802"] = self.OnSubFinish4024802
    }
end

function Quest40248:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4024801"] = self.OnSubFailed4024801}
end

function Quest40248:Start()
    print("Start")
end

function Quest40248:OnDestroy()
    print("OnDestroy")
end

function Quest40248:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40248:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40248:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q4024802Trigger", 40248)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Xiangling.alias, 3)
    this:RecycleAllRes()
end

function Quest40248:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4024802Trigger", 40248)
end

function Quest40248:ActorDestroy(arg1, arg2)
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

function Quest40248:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40248:OnSubStart4024803(arg1)
    print("OnSubStart4024803")
    actorUtils.FinishQuestWithParam({false}, {4024803})
end

function Quest40248:OnSubFinish4024803(arg1)
    print("OnSubFinish4024803")
    this:QuestNarratorTask(datas.NarratorWithId_4024801, nil)
end

function Quest40248:OnSubStart4024801(arg1)
    print("OnSubStart4024801")
end

function Quest40248:OnSubFinish4024801(arg1)
    print("OnSubFinish4024801")
end

function Quest40248:OnSubFailed4024801(arg1)
    print("OnSubFailed4024801")
    this:RecycleAllRes()
end

function Quest40248:OnSubStart4024802(arg1)
    print("OnSubStart4024802")
    this:CreateQuestNpc(arg1, npcs.Xiangling.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Xiangling.alias, 40248):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q4024802Trigger", "Actor/Gadget/Q4024802Trigger", 70900002, 0, points._Q4024802TriggerPoint_.pos, points._Q4024802TriggerPoint_.rot, true, false, 3, nil, 0, 40248)
end

function Quest40248:OnSubFinish4024802(arg1)
    print("OnSubFinish4024802")
    this:NpcDestroyImmediately(3, npcs.Xiangling.alias)
    this:ClearNarratorTask()
    actorUtils.ShowContext("LunaRiteV2MainPage", 0, nil)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4024901, nil)
    end, true)
end

return Quest40248
