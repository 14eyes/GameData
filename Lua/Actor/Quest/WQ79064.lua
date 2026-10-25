require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79064 = class("Quest79064", QuestActorProxy)
Quest79064.defaultAlias = "Quest79064"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest79064:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79064:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7906402"] = self.OnSubStart7906402,
        ["7906403"] = self.OnSubStart7906403,
        ["7906401"] = self.OnSubStart7906401,
        ["7906411"] = self.OnSubStart7906411,
        ["7906410"] = self.OnSubStart7906410,
        ["7906404"] = self.OnSubStart7906404,
        ["7906405"] = self.OnSubStart7906405,
        ["7906409"] = self.OnSubStart7906409,
        ["7906408"] = self.OnSubStart7906408,
        ["7906406"] = self.OnSubStart7906406,
        ["7906407"] = self.OnSubStart7906407
    }
end

function Quest79064:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7906402"] = self.OnSubFinish7906402,
        ["7906403"] = self.OnSubFinish7906403,
        ["7906401"] = self.OnSubFinish7906401,
        ["7906411"] = self.OnSubFinish7906411,
        ["7906410"] = self.OnSubFinish7906410,
        ["7906404"] = self.OnSubFinish7906404,
        ["7906405"] = self.OnSubFinish7906405,
        ["7906409"] = self.OnSubFinish7906409,
        ["7906408"] = self.OnSubFinish7906408,
        ["7906406"] = self.OnSubFinish7906406,
        ["7906407"] = self.OnSubFinish7906407
    }
end

function Quest79064:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7906408"] = self.OnSubFailed7906408}
end

function Quest79064:Start()
    print("Start")
end

function Quest79064:OnDestroy()
    print("OnDestroy")
end

function Quest79064:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79064:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79064:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79064:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest79064:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest79064:OnSubStart7906402(arg1)
    print("OnSubStart7906402")
    this:DeployStoryByQuest(147906401)
end

function Quest79064:OnSubFinish7906402(arg1)
    print("OnSubFinish7906402")
    this:CancelStoryByQuest(147906401)
end

function Quest79064:OnSubStart7906403(arg1)
    print("OnSubStart7906403")
    this:CreateQuestNpcWithTrigger("7906403", 7906403, npcs.Npc21473Data.id, 0, 50, 2)
end

function Quest79064:OnSubFinish7906403(arg1)
    print("OnSubFinish7906403")
    this:NpcDestroyWithDither(npcs.Npc21473Data.alias, 100)
    this:TransmitPlayerById(arg1, 1)
end

function Quest79064:OnSubStart7906401(arg1)
    print("OnSubStart7906401")
    this:DeployStoryByQuest(147906401)
end

function Quest79064:OnSubFinish7906401(arg1)
    print("OnSubFinish7906401")
    this:CancelStoryByQuest(147906401)
end

function Quest79064:OnSubStart7906411(arg1)
    print("OnSubStart7906411")
end

function Quest79064:OnSubFinish7906411(arg1)
    print("OnSubFinish7906411")
end

function Quest79064:OnSubStart7906410(arg1)
    print("OnSubStart7906410")
    this:CreateQuestNpc(arg1, npcs.Npc21550Data.id, 0, false, 0)
end

function Quest79064:OnSubFinish7906410(arg1)
    print("OnSubFinish7906410")
    this:NpcDestroy(npcs.Npc21550Data.alias, 100)
end

function Quest79064:OnSubStart7906404(arg1)
    print("OnSubStart7906404")
    this:CreateQuestNpcWithTrigger("7906404", 7906404, npcs.Npc21473Data.id, 0, 50, 2)
end

function Quest79064:OnSubFinish7906404(arg1)
    print("OnSubFinish7906404")
    this:NpcDestroyWithDither(npcs.Npc21473Data.alias, 100)
end

function Quest79064:OnSubStart7906405(arg1)
    print("OnSubStart7906405")
    this:DeployStoryByQuest(147906401)
end

function Quest79064:OnSubFinish7906405(arg1)
    print("OnSubFinish7906405")
    this:CancelStoryByQuest(147906401)
end

function Quest79064:OnSubStart7906409(arg1)
    print("OnSubStart7906409")
end

function Quest79064:OnSubFinish7906409(arg1)
    print("OnSubFinish7906409")
end

function Quest79064:OnSubStart7906408(arg1)
    print("OnSubStart7906408")
end

function Quest79064:OnSubFinish7906408(arg1)
    print("OnSubFinish7906408")
    this:ShowBlackScreenWithDialogText(0.5, 3, 0.5, nil, nil, nil, 0, false, true)
    this:CallDelayByQuest("7906408", 1, function(arg1_2)
        this:TransmitPlayerById(arg1, 2)
        this:CancelStoryByQuest(147906401)
    end)
end

function Quest79064:OnSubFailed7906408(arg1)
    print("OnSubFailed7906408")
    this:CancelStoryByQuest(147906401)
end

function Quest79064:OnSubStart7906406(arg1)
    print("OnSubStart7906406")
    this:CreateQuestNpcWithTrigger("7906406", 7906406, npcs.Npc21473Data.id, 0, 50, 2)
end

function Quest79064:OnSubFinish7906406(arg1)
    print("OnSubFinish7906406")
    this:NpcDestroy(npcs.Npc21473Data.alias, 100)
end

function Quest79064:OnSubStart7906407(arg1)
    print("OnSubStart7906407")
end

function Quest79064:OnSubFinish7906407(arg1)
    print("OnSubFinish7906407")
end

return Quest79064
