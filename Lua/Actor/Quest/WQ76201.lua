require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76201 = class("Quest76201", QuestActorProxy)
Quest76201.defaultAlias = "Quest76201"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76201:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76201:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7620101"] = self.OnSubStart7620101,
        ["7620102"] = self.OnSubStart7620102,
        ["7620103"] = self.OnSubStart7620103,
        ["7620104"] = self.OnSubStart7620104
    }
end

function Quest76201:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7620101"] = self.OnSubFinish7620101,
        ["7620102"] = self.OnSubFinish7620102,
        ["7620103"] = self.OnSubFinish7620103,
        ["7620104"] = self.OnSubFinish7620104
    }
end

function Quest76201:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76201:Start()
    print("Start")
end

function Quest76201:OnDestroy()
    print("OnDestroy")
end

function Quest76201:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76201:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76201:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76201:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7620103_KaiCheTrigger", 76201)
    this:ActorDestroy("Q7620104_TalkTrigger", 76201)
end

function Quest76201:ActorDestroy(arg1, arg2)
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

function Quest76201:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76201:OnSubStart7620101(arg1)
    print("OnSubStart7620101")
end

function Quest76201:OnSubFinish7620101(arg1)
    print("OnSubFinish7620101")
end

function Quest76201:OnSubStart7620102(arg1)
    print("OnSubStart7620102")
    this:CreateQuestNpc(arg1, npcs.Npc16562.id, 0, false, 0)
end

function Quest76201:OnSubFinish7620102(arg1)
    print("OnSubFinish7620102")
    this:NpcDestroyImmediately(3, npcs.Npc16562.alias)
end

function Quest76201:OnSubStart7620103(arg1)
    print("OnSubStart7620103")
    actorMgr:CreateActorWithPos("Q7620103_KaiCheTrigger", "Actor/Gadget/Q7620103_KaiCheTrigger", 70900002, 0, points._Q7620103_KaiCheTriggerPoint_.pos, points._Q7620103_KaiCheTriggerPoint_.rot, true, false, 3, nil, 0, 76201)
end

function Quest76201:OnSubFinish7620103(arg1)
    print("OnSubFinish7620103")
end

function Quest76201:OnSubStart7620104(arg1)
    print("OnSubStart7620104")
    this:CreateQuestNpc(arg1, npcs.Npc7036.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7035.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7620104_TalkTrigger", "Actor/Gadget/Q7620104_TalkTrigger", 70900002, 0, points._Q7620104_TalkTriggerPoint_.pos, points._Q7620104_TalkTriggerPoint_.rot, true, false, 3, nil, 0, 76201)
end

function Quest76201:OnSubFinish7620104(arg1)
    print("OnSubFinish7620104")
    this:NpcDestroyImmediately(3, npcs.Npc7036.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7035.alias)
    this:CallDelayByQuest("7620104Delay", 2, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.SimpleUIShowForLua(false, "NaturalistHandbook", "", nil)
        end)
    end)
end

return Quest76201
