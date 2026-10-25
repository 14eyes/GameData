require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76118 = class("Quest76118", QuestActorProxy)
Quest76118.defaultAlias = "Quest76118"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76118:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76118:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7611801"] = self.OnSubStart7611801,
        ["7611802"] = self.OnSubStart7611802,
        ["7611803"] = self.OnSubStart7611803,
        ["7611804"] = self.OnSubStart7611804
    }
end

function Quest76118:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7611801"] = self.OnSubFinish7611801,
        ["7611802"] = self.OnSubFinish7611802,
        ["7611803"] = self.OnSubFinish7611803,
        ["7611804"] = self.OnSubFinish7611804
    }
end

function Quest76118:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76118:Start()
    print("Start")
end

function Quest76118:OnDestroy()
    print("OnDestroy")
end

function Quest76118:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76118:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76118:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
    this:DestroyNpcTrigger("Q7611802N1315Trigger")
    this:DestroyNpcTrigger("Q7611803N1318Trigger")
    this:DestroyNpcTrigger("Q7611804N1315Trigger")
    this:CancelRangeStoryByQuest(117611801)
end

function Quest76118:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76118:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76118:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest76118:OnSubStart7611801(arg1)
    print("OnSubStart7611801")
    this:DeployRangeStoryByQuest(117611801, 3, {x = 2141.429, y = 109.317, z = 11191.98}, 80, 80)
end

function Quest76118:OnSubFinish7611801(arg1)
    print("OnSubFinish7611801")
    this:NpcDestroyImmediately(3, npcs.Npc1318.alias)
    this:CancelRangeStoryByQuest(117611801)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    this:SetNavigationByMainId(76118, true)
end

function Quest76118:OnSubStart7611802(arg1)
    print("OnSubStart7611802")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1315.id, 0, 7611802, 10, true)
end

function Quest76118:OnSubFinish7611802(arg1)
    print("OnSubFinish7611802")
    this:NpcDestroyImmediately(3, npcs.Npc1315.alias)
    this:TransmitPlayerById(arg1, 2, nil, nil, nil)
end

function Quest76118:OnSubStart7611803(arg1)
    print("OnSubStart7611803")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1318.id, 0, 7611803, 10, true)
end

function Quest76118:OnSubFinish7611803(arg1)
    print("OnSubFinish7611803")
    this:NpcDestroyImmediately(3, npcs.Npc1318.alias)
    this:TransmitPlayerById(arg1, 3, nil, nil, nil)
end

function Quest76118:OnSubStart7611804(arg1)
    print("OnSubStart7611804")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1315.id, 0, 7611804, 10, true)
end

function Quest76118:OnSubFinish7611804(arg1)
    print("OnSubFinish7611804")
    this:NpcDestroyImmediately(3, npcs.Npc1315.alias)
end

return Quest76118
