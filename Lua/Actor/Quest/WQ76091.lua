require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76091 = class("Quest76091", QuestActorProxy)
Quest76091.defaultAlias = "Quest76091"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76091:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76091:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7609101"] = self.OnSubStart7609101,
        ["7609102"] = self.OnSubStart7609102,
        ["7609103"] = self.OnSubStart7609103,
        ["7609104"] = self.OnSubStart7609104,
        ["7609105"] = self.OnSubStart7609105,
        ["7609108"] = self.OnSubStart7609108,
        ["7609106"] = self.OnSubStart7609106,
        ["7609107"] = self.OnSubStart7609107
    }
end

function Quest76091:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7609101"] = self.OnSubFinish7609101,
        ["7609102"] = self.OnSubFinish7609102,
        ["7609103"] = self.OnSubFinish7609103,
        ["7609104"] = self.OnSubFinish7609104,
        ["7609105"] = self.OnSubFinish7609105,
        ["7609108"] = self.OnSubFinish7609108,
        ["7609106"] = self.OnSubFinish7609106,
        ["7609107"] = self.OnSubFinish7609107
    }
end

function Quest76091:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76091:Start()
    print("Start")
end

function Quest76091:OnDestroy()
    print("OnDestroy")
end

function Quest76091:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76091:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76091:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76091:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76091:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76091:OnSubStart7609101(arg1)
    print("OnSubStart7609101")
    this:CreateQuestNpc(arg1, npcs.Npc22254.id, 0, false, 0)
    actorUtils.FinishQuestID(false, 7609101)
end

function Quest76091:OnSubFinish7609101(arg1)
    print("OnSubFinish7609101")
end

function Quest76091:OnSubStart7609102(arg1)
    print("OnSubStart7609102")
end

function Quest76091:OnSubFinish7609102(arg1)
    print("OnSubFinish7609102")
end

function Quest76091:OnSubStart7609103(arg1)
    print("OnSubStart7609103")
end

function Quest76091:OnSubFinish7609103(arg1)
    print("OnSubFinish7609103")
end

function Quest76091:OnSubStart7609104(arg1)
    print("OnSubStart7609104")
end

function Quest76091:OnSubFinish7609104(arg1)
    print("OnSubFinish7609104")
end

function Quest76091:OnSubStart7609105(arg1)
    print("OnSubStart7609105")
end

function Quest76091:OnSubFinish7609105(arg1)
    print("OnSubFinish7609105")
end

function Quest76091:OnSubStart7609108(arg1)
    print("OnSubStart7609108")
end

function Quest76091:OnSubFinish7609108(arg1)
    print("OnSubFinish7609108")
end

function Quest76091:OnSubStart7609106(arg1)
    print("OnSubStart7609106")
end

function Quest76091:OnSubFinish7609106(arg1)
    print("OnSubFinish7609106")
end

function Quest76091:OnSubStart7609107(arg1)
    print("OnSubStart7609107")
end

function Quest76091:OnSubFinish7609107(arg1)
    print("OnSubFinish7609107")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22254.alias)
end

return Quest76091
