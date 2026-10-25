require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75146 = class("Quest75146", QuestActorProxy)
Quest75146.defaultAlias = "Quest75146"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75146:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75146:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7514605"] = self.OnSubStart7514605,
        ["7514603"] = self.OnSubStart7514603,
        ["7514604"] = self.OnSubStart7514604,
        ["7514606"] = self.OnSubStart7514606,
        ["7514607"] = self.OnSubStart7514607
    }
end

function Quest75146:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7514605"] = self.OnSubFinish7514605,
        ["7514603"] = self.OnSubFinish7514603,
        ["7514604"] = self.OnSubFinish7514604,
        ["7514606"] = self.OnSubFinish7514606,
        ["7514607"] = self.OnSubFinish7514607
    }
end

function Quest75146:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75146:Start()
    print("Start")
end

function Quest75146:OnDestroy()
    print("OnDestroy")
end

function Quest75146:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75146:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75146:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75146:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7514601Trigger")
end

function Quest75146:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75146:OnSubStart7514605(arg1)
    print("OnSubStart7514605")
    this:CreateQuestNpc(arg1, npcs.Npc21767.id, 0, false, 0)
end

function Quest75146:OnSubFinish7514605(arg1)
    print("OnSubFinish7514605")
end

function Quest75146:OnSubStart7514603(arg1)
    print("OnSubStart7514603")
end

function Quest75146:OnSubFinish7514603(arg1)
    print("OnSubFinish7514603")
end

function Quest75146:OnSubStart7514604(arg1)
    print("OnSubStart7514604")
    this:CreateQuestNpc(arg1, npcs.Npc21767.id, 0, false, 0)
end

function Quest75146:OnSubFinish7514604(arg1)
    print("OnSubFinish7514604")
end

function Quest75146:OnSubStart7514606(arg1)
    print("OnSubStart7514606")
    local questGlobalVar = this:GetQuestGlobalVar(7514801)
    if questGlobalVar == 0 then
        this:PlayCutsceneIndex(7514601, function(arg1)
            actorUtils.FinishQuestID(false, 7514606)
        end, nil, nil, false)
    elseif questGlobalVar == 1 then
        actorUtils.FinishQuestID(false, 7514606)
    end
end

function Quest75146:OnSubFinish7514606(arg1)
    print("OnSubFinish7514606")
end

function Quest75146:OnSubStart7514607(arg1)
    print("OnSubStart7514607")
    this:CreateQuestNpc(arg1, npcs.Npc21767.id, 0, false, 0)
end

function Quest75146:OnSubFinish7514607(arg1)
    print("OnSubFinish7514607")
    this:SafeDestroyQuestNpc(npcs.Npc21767.alias, 3)
end

return Quest75146
