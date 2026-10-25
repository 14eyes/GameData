require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76199 = class("Quest76199", QuestActorProxy)
Quest76199.defaultAlias = "Quest76199"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76199:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76199:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7619901"] = self.OnSubStart7619901,
        ["7619902"] = self.OnSubStart7619902,
        ["7619903"] = self.OnSubStart7619903
    }
end

function Quest76199:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7619901"] = self.OnSubFinish7619901,
        ["7619902"] = self.OnSubFinish7619902,
        ["7619903"] = self.OnSubFinish7619903
    }
end

function Quest76199:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76199:Start()
    print("Start")
end

function Quest76199:OnDestroy()
    print("OnDestroy")
end

function Quest76199:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76199:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76199:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76199:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7619903_KaiCheTrigger", 76199)
end

function Quest76199:ActorDestroy(arg1, arg2)
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

function Quest76199:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76199:OnSubStart7619901(arg1)
    print("OnSubStart7619901")
end

function Quest76199:OnSubFinish7619901(arg1)
    print("OnSubFinish7619901")
end

function Quest76199:OnSubStart7619902(arg1)
    print("OnSubStart7619902")
    this:CreateQuestNpc(arg1, npcs.Npc16562.id, 0, false, 0)
end

function Quest76199:OnSubFinish7619902(arg1)
    print("OnSubFinish7619902")
    this:NpcDestroyImmediately(3, npcs.Npc16562.alias)
end

function Quest76199:OnSubStart7619903(arg1)
    print("OnSubStart7619903")
    actorMgr:CreateActorWithPos("Q7619903_KaiCheTrigger", "Actor/Gadget/Q7619903_KaiCheTrigger", 70900002, 0, points._Q7619903_KaiCheTriggerPoint_.pos, points._Q7619903_KaiCheTriggerPoint_.rot, true, false, 3, nil, 0, 76199)
end

function Quest76199:OnSubFinish7619903(arg1)
    print("OnSubFinish7619903")
    this:CallDelayByQuest("7619903Delay", 2, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.SimpleUIShowForLua(false, "NaturalistHandbook", "", nil)
        end)
    end)
end

return Quest76199
