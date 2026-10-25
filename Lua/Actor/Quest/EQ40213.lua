require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40213 = class("Quest40213", QuestActorProxy)
Quest40213.defaultAlias = "Quest40213"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest40213:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest40213:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4021302"] = self.OnSubStart4021302, ["4021301"] = self.OnSubStart4021301}
end

function Quest40213:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4021302"] = self.OnSubFinish4021302, ["4021301"] = self.OnSubFinish4021301}
end

function Quest40213:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40213:Start()
    print("Start")
end

function Quest40213:OnDestroy()
    print("OnDestroy")
end

function Quest40213:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40213:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40213:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q4021301Trigger")
    this:DestroyQuestNpcActor(npcs.Npc15597.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15598.alias, 3)
end

function Quest40213:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q4021301Trigger")
    this:DestroyQuestNpcActor(npcs.Npc15597.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15598.alias, 3)
end

function Quest40213:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40213:OnSubStart4021302(arg1)
    print("OnSubStart4021302")
end

function Quest40213:OnSubFinish4021302(arg1)
    print("OnSubFinish4021302")
end

function Quest40213:OnSubStart4021301(arg1)
    print("OnSubStart4021301")
    this:CreateQuestOrphanNpc(arg1, 15597, 0, true, 0.5, datas.QuestOrphanNpcPlaceList)
    this:CreateQuestOrphanNpc(arg1, 15598, 0, true, 0.5, datas.QuestOrphanNpcPlaceList)
end

function Quest40213:OnSubFinish4021301(arg1)
    print("OnSubFinish4021301")
end

return Quest40213
