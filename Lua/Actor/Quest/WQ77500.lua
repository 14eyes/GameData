require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77500 = class("Quest77500", QuestActorProxy)
Quest77500.defaultAlias = "Quest77500"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77500:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77500:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7750003"] = self.OnSubStart7750003,
        ["7750001"] = self.OnSubStart7750001,
        ["7750002"] = self.OnSubStart7750002
    }
end

function Quest77500:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7750003"] = self.OnSubFinish7750003,
        ["7750001"] = self.OnSubFinish7750001,
        ["7750002"] = self.OnSubFinish7750002
    }
end

function Quest77500:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77500:Start()
    print("Start")
end

function Quest77500:OnDestroy()
    print("OnDestroy")
end

function Quest77500:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77500:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77500:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77500:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q77500Trigger_1", 77500)
end

function Quest77500:ActorDestroy(arg1, arg2)
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

function Quest77500:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77500:OnSubStart7750003(arg1)
    print("OnSubStart7750003")
end

function Quest77500:OnSubFinish7750003(arg1)
    print("OnSubFinish7750003")
end

function Quest77500:OnSubStart7750001(arg1)
    print("OnSubStart7750001")
    this:CreateQuestNpc(arg1, npcs.Npc1331.id, 0, false, 0)
    this:NotifyTo(npcs.Npc7585.alias, 1, true)
    actorMgr:CreateActorWithPos("Q77500Trigger_1", "Actor/Gadget/Q77500Trigger_1", 70900002, 0, points._Q77500Trigger_1Point_.pos, points._Q77500Trigger_1Point_.rot, true, false, 3, nil, 0, 77500)
end

function Quest77500:OnSubFinish7750001(arg1)
    print("OnSubFinish7750001")
end

function Quest77500:OnSubStart7750002(arg1)
    print("OnSubStart7750002")
    this:NotifyTo(npcs.Npc7585.alias, 1, true)
    this:DeployStoryByQuest(147750002)
end

function Quest77500:OnSubFinish7750002(arg1)
    print("OnSubFinish7750002")
    this:NpcDestroyImmediately(3, npcs.Npc1331.alias)
    this:LightNotifyTo(npcs.Npc7585.alias, 0, true)
    this:CancelStoryByQuest(147750002)
end

return Quest77500
