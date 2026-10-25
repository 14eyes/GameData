require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75129 = class("Quest75129", QuestActorProxy)
Quest75129.defaultAlias = "Quest75129"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75129:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75129:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7512901"] = self.OnSubStart7512901,
        ["7512902"] = self.OnSubStart7512902,
        ["7512904"] = self.OnSubStart7512904,
        ["7512905"] = self.OnSubStart7512905,
        ["7512906"] = self.OnSubStart7512906,
        ["7512907"] = self.OnSubStart7512907,
        ["7512913"] = self.OnSubStart7512913,
        ["7512908"] = self.OnSubStart7512908,
        ["7512909"] = self.OnSubStart7512909,
        ["7512910"] = self.OnSubStart7512910,
        ["7512903"] = self.OnSubStart7512903,
        ["7512911"] = self.OnSubStart7512911,
        ["7512912"] = self.OnSubStart7512912
    }
end

function Quest75129:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7512901"] = self.OnSubFinish7512901,
        ["7512902"] = self.OnSubFinish7512902,
        ["7512904"] = self.OnSubFinish7512904,
        ["7512905"] = self.OnSubFinish7512905,
        ["7512906"] = self.OnSubFinish7512906,
        ["7512907"] = self.OnSubFinish7512907,
        ["7512913"] = self.OnSubFinish7512913,
        ["7512908"] = self.OnSubFinish7512908,
        ["7512909"] = self.OnSubFinish7512909,
        ["7512910"] = self.OnSubFinish7512910,
        ["7512903"] = self.OnSubFinish7512903,
        ["7512911"] = self.OnSubFinish7512911,
        ["7512912"] = self.OnSubFinish7512912
    }
end

function Quest75129:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75129:Start()
    print("Start")
end

function Quest75129:OnDestroy()
    print("OnDestroy")
end

function Quest75129:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75129:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75129:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75129:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest75129:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75129:OnSubStart7512901(arg1)
    print("OnSubStart7512901")
end

function Quest75129:OnSubFinish7512901(arg1)
    print("OnSubFinish7512901")
end

function Quest75129:OnSubStart7512902(arg1)
    print("OnSubStart7512902")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc21744.id, 0, 7512902, 30, false)
end

function Quest75129:OnSubFinish7512902(arg1)
    print("OnSubFinish7512902")
end

function Quest75129:OnSubStart7512904(arg1)
    print("OnSubStart7512904")
    this:CreateQuestNpc(arg1, npcs.Npc21744.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21744.alias, 75129):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21745.id, 0, false, 0)
    this:CreateSpeechBubbleTask(npcs.Npc21744.id, 751299901, 3, true, 1, 2, false, false)
    this:DeployStoryByQuest(147512905)
end

function Quest75129:OnSubFinish7512904(arg1)
    print("OnSubFinish7512904")
    this:ClearSpeechBubbleTask()
end

function Quest75129:OnSubStart7512905(arg1)
    print("OnSubStart7512905")
    this:DeployStoryByQuest(147512905)
end

function Quest75129:OnSubFinish7512905(arg1)
    print("OnSubFinish7512905")
end

function Quest75129:OnSubStart7512906(arg1)
    print("OnSubStart7512906")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc21744.id, 0, 7512906, 30, false)
    this:DeployStoryByQuest(147512905)
end

function Quest75129:OnSubFinish7512906(arg1)
    print("OnSubFinish7512906")
end

function Quest75129:OnSubStart7512907(arg1)
    print("OnSubStart7512907")
    this:DeployStoryByQuest(147512905)
end

function Quest75129:OnSubFinish7512907(arg1)
    print("OnSubFinish7512907")
end

function Quest75129:OnSubStart7512913(arg1)
    print("OnSubStart7512913")
    this:NpcCreateWithNpcTrigger(npcs.Npc21745.id, 0, 3, 7512913)
    this:DeployStoryByQuest(147512905)
end

function Quest75129:OnSubFinish7512913(arg1)
    print("OnSubFinish7512913")
end

function Quest75129:OnSubStart7512908(arg1)
    print("OnSubStart7512908")
    this:DeployStoryByQuest(147512905)
end

function Quest75129:OnSubFinish7512908(arg1)
    print("OnSubFinish7512908")
end

function Quest75129:OnSubStart7512909(arg1)
    print("OnSubStart7512909")
    this:DeployStoryByQuest(147512905)
end

function Quest75129:OnSubFinish7512909(arg1)
    print("OnSubFinish7512909")
end

function Quest75129:OnSubStart7512910(arg1)
    print("OnSubStart7512910")
    this:DeployStoryByQuest(147512905)
end

function Quest75129:OnSubFinish7512910(arg1)
    print("OnSubFinish7512910")
end

function Quest75129:OnSubStart7512903(arg1)
    print("OnSubStart7512903")
    this:DeployStoryByQuest(147512905)
end

function Quest75129:OnSubFinish7512903(arg1)
    print("OnSubFinish7512903")
end

function Quest75129:OnSubStart7512911(arg1)
    print("OnSubStart7512911")
    this:DeployStoryByQuest(147512905)
end

function Quest75129:OnSubFinish7512911(arg1)
    print("OnSubFinish7512911")
end

function Quest75129:OnSubStart7512912(arg1)
    print("OnSubStart7512912")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc21744.id, 0, 7512912, 30, false)
    this:DeployStoryByQuest(147512905)
end

function Quest75129:OnSubFinish7512912(arg1)
    print("OnSubFinish7512912")
    this:SafeDestroyQuestNpc(npcs.Npc21744.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21745.alias, 3)
end

return Quest75129
