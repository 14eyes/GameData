require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74030 = class("Quest74030", QuestActorProxy)
Quest74030.defaultAlias = "Quest74030"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74030:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74030:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7403001"] = self.OnSubStart7403001,
        ["7403002"] = self.OnSubStart7403002,
        ["7403003"] = self.OnSubStart7403003,
        ["7403004"] = self.OnSubStart7403004
    }
end

function Quest74030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7403001"] = self.OnSubFinish7403001,
        ["7403002"] = self.OnSubFinish7403002,
        ["7403003"] = self.OnSubFinish7403003,
        ["7403004"] = self.OnSubFinish7403004
    }
end

function Quest74030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74030:Start()
    print("Start")
end

function Quest74030:OnDestroy()
    print("OnDestroy")
end

function Quest74030:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74030:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74030:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74030:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74030:OnSubStart7403001(arg1)
    print("OnSubStart7403001")
    this:CreateQuestNpc(arg1, npcs.Npc5214Data.id, 0)
end

function Quest74030:OnSubFinish7403001(arg1)
    print("OnSubFinish7403001")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5214Data.alias)
    self:SetNavigationByMainId(74030, true)
end

function Quest74030:OnSubStart7403002(arg1)
    print("OnSubStart7403002")
    this:CreateQuestNpc(arg1, npcs.Npc5252Data.id, 0)
end

function Quest74030:OnSubFinish7403002(arg1)
    print("OnSubFinish7403002")
end

function Quest74030:OnSubStart7403003(arg1)
    print("OnSubStart7403003")
end

function Quest74030:OnSubFinish7403003(arg1)
    print("OnSubFinish7403003")
end

function Quest74030:OnSubStart7403004(arg1)
    print("OnSubStart7403004")
end

function Quest74030:OnSubFinish7403004(arg1)
    print("OnSubFinish7403004")
    self:SetNavigationByMainId(74025, true)
    this:SafeDestroyQuestNpc(npcs.Npc5252Data.alias, 3)
end

return Quest74030
