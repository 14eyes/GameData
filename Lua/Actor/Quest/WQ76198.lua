require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76198 = class("Quest76198", QuestActorProxy)
Quest76198.defaultAlias = "Quest76198"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76198:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76198:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7619801"] = self.OnSubStart7619801,
        ["7619802"] = self.OnSubStart7619802,
        ["7619803"] = self.OnSubStart7619803
    }
end

function Quest76198:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7619801"] = self.OnSubFinish7619801,
        ["7619802"] = self.OnSubFinish7619802,
        ["7619803"] = self.OnSubFinish7619803
    }
end

function Quest76198:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76198:Start()
    print("Start")
end

function Quest76198:OnDestroy()
    print("OnDestroy")
end

function Quest76198:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76198:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76198:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76198:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7619803_KaiCheTrigger", 76198)
end

function Quest76198:ActorDestroy(arg1, arg2)
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

function Quest76198:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76198:OnSubStart7619801(arg1)
    print("OnSubStart7619801")
end

function Quest76198:OnSubFinish7619801(arg1)
    print("OnSubFinish7619801")
end

function Quest76198:OnSubStart7619802(arg1)
    print("OnSubStart7619802")
    this:CreateQuestNpc(arg1, npcs.Npc16562.id, 0, false, 0)
end

function Quest76198:OnSubFinish7619802(arg1)
    print("OnSubFinish7619802")
    this:NpcDestroyImmediately(3, npcs.Npc16562.alias)
end

function Quest76198:OnSubStart7619803(arg1)
    print("OnSubStart7619803")
    actorMgr:CreateActorWithPos("Q7619803_KaiCheTrigger", "Actor/Gadget/Q7619803_KaiCheTrigger", 70900002, 0, points._Q7619803_KaiCheTriggerPoint_.pos, points._Q7619803_KaiCheTriggerPoint_.rot, true, false, 3, nil, 0, 76198)
end

function Quest76198:OnSubFinish7619803(arg1)
    print("OnSubFinish7619803")
    this:CallDelayByQuest("7619803Delay", 2, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.SimpleUIShowForLua(false, "NaturalistHandbook", "", nil)
        end)
    end)
end

return Quest76198
