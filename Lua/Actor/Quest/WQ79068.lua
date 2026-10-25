require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79068 = class("Quest79068", QuestActorProxy)
Quest79068.defaultAlias = "Quest79068"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest79068:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79068:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7906801"] = self.OnSubStart7906801,
        ["7906803"] = self.OnSubStart7906803,
        ["7906802"] = self.OnSubStart7906802
    }
end

function Quest79068:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7906801"] = self.OnSubFinish7906801,
        ["7906803"] = self.OnSubFinish7906803,
        ["7906802"] = self.OnSubFinish7906802
    }
end

function Quest79068:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7906802"] = self.OnSubFailed7906802}
end

function Quest79068:Start()
    print("Start")
end

function Quest79068:OnDestroy()
    print("OnDestroy")
end

function Quest79068:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79068:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79068:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79068:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest79068:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest79068:OnSubStart7906801(arg1)
    print("OnSubStart7906801")
end

function Quest79068:OnSubFinish7906801(arg1)
    print("OnSubFinish7906801")
end

function Quest79068:OnSubStart7906803(arg1)
    print("OnSubStart7906803")
    this:NpcCreateWithNpcTrigger(npcs.Npc21518Data.id, 7906803, 0, 10)
end

function Quest79068:OnSubFinish7906803(arg1)
    print("OnSubFinish7906803")
    this:ShowBlackScreen(0.5, 2.5, 0.5, nil, nil, nil, "UI_ACTIVITY_WINTERCAMP_BOSS_LOCKED", false, true)
    this:CallDelayByQuest("7906803", 0.5, function(arg1_2)
        this:TransmitPlayerById(arg1, 1)
    end)
end

function Quest79068:OnSubStart7906802(arg1)
    print("OnSubStart7906802")
    this:CreateQuestNpc(arg1, npcs.Npc21518Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21518Data.alias, 79068)
    this:NpcForceAvatarWalkByDist(questNpcActor, 17.5, 20)
end

function Quest79068:OnSubFinish7906802(arg1)
    print("OnSubFinish7906802")
    this:NpcDestroy(npcs.Npc21518Data.alias, 100)
end

function Quest79068:OnSubFailed7906802(arg1)
    print("OnSubFailed7906802")
    this:NpcDestroy(npcs.Npc21518Data.alias, 100)
end

return Quest79068
