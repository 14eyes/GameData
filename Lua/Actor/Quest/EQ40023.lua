require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40023 = class("Quest40023", QuestActorProxy)
Quest40023.defaultAlias = "Quest40023"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40023:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40023:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4002301"] = self.OnSubStart4002301, ["4002302"] = self.OnSubStart4002302}
end

function Quest40023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4002301"] = self.OnSubFinish4002301, ["4002302"] = self.OnSubFinish4002302}
end

function Quest40023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4002301"] = self.OnSubFailed4002301, ["4002302"] = self.OnSubFailed4002302}
end

function Quest40023:Start()
    print("Start")
end

function Quest40023:OnDestroy()
    print("OnDestroy")
end

function Quest40023:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40023:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40023:OnMainCanceled(arg1)
    self:DestroyQuestNpcActor(npcs.Npc30067Data.alias, 3)
end

function Quest40023:OnSubStart4002301(arg1)
    print("OnSubStart4002301")
    self:CreateQuestNpc(arg1, npcs.Npc30067Data.id, 0)
    self:NarratorOnlyTaskByData(datas.Narrator1, nil, 40023)
end

function Quest40023:OnSubFinish4002301(arg1)
    print("OnSubFinish4002301")
end

function Quest40023:OnSubFailed4002301(arg1)
    print("OnSubFailed4002301")
end

function Quest40023:OnSubStart4002302(arg1)
    print("OnSubStart4002302")
end

function Quest40023:OnSubFinish4002302(arg1)
    print("OnSubFinish4002302")
end

function Quest40023:OnSubFailed4002302(arg1)
    print("OnSubFailed4002302")
end

return Quest40023
