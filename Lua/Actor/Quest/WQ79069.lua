require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79069 = class("Quest79069", QuestActorProxy)
Quest79069.defaultAlias = "Quest79069"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest79069:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79069:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7906901"] = self.OnSubStart7906901,
        ["7906902"] = self.OnSubStart7906902,
        ["7906903"] = self.OnSubStart7906903
    }
end

function Quest79069:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7906901"] = self.OnSubFinish7906901,
        ["7906902"] = self.OnSubFinish7906902,
        ["7906903"] = self.OnSubFinish7906903
    }
end

function Quest79069:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7906903"] = self.OnSubFailed7906903}
end

function Quest79069:Start()
    print("Start")
end

function Quest79069:OnDestroy()
    print("OnDestroy")
end

function Quest79069:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79069:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79069:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79069:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest79069:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest79069:OnSubStart7906901(arg1)
    print("OnSubStart7906901")
end

function Quest79069:OnSubFinish7906901(arg1)
    print("OnSubFinish7906901")
end

function Quest79069:OnSubStart7906902(arg1)
    print("OnSubStart7906902")
    this:NpcCreateWithNpcTrigger(npcs.Npc21522Data.id, 7906902, 0, 10)
end

function Quest79069:OnSubFinish7906902(arg1)
    print("OnSubFinish7906902")
    this:ShowBlackScreen(0.5, 2.5, 0.5, nil, nil, nil, "UI_ACTIVITY_WINTERCAMP_BOSS_LOCKED", false, true)
    this:CallDelayByQuest("7906902", 0.5, function(arg1_2)
        this:TransmitPlayerById(arg1, 1)
    end)
end

function Quest79069:OnSubStart7906903(arg1)
    print("OnSubStart7906903")
    this:CreateQuestNpc(arg1, npcs.Npc21522Data.id, 0, false, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21522Data.alias, 79069)
    this:NpcForceAvatarWalkByDist(questNpcActor, 27.5, 30)
end

function Quest79069:OnSubFinish7906903(arg1)
    print("OnSubFinish7906903")
    this:SafeDestroyQuestNpc(npcs.Npc21522Data.alias, 100)
end

function Quest79069:OnSubFailed7906903(arg1)
    print("OnSubFailed7906903")
    this:NpcDestroy(npcs.Npc21522Data.alias, 100)
end

return Quest79069
