require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74058 = class("Quest74058", QuestActorProxy)
Quest74058.defaultAlias = "Quest74058"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74058:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74058:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7405801"] = self.OnSubStart7405801,
        ["7405804"] = self.OnSubStart7405804,
        ["7405805"] = self.OnSubStart7405805,
        ["7405806"] = self.OnSubStart7405806,
        ["7405802"] = self.OnSubStart7405802,
        ["7405803"] = self.OnSubStart7405803,
        ["7405807"] = self.OnSubStart7405807
    }
end

function Quest74058:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7405801"] = self.OnSubFinish7405801,
        ["7405804"] = self.OnSubFinish7405804,
        ["7405805"] = self.OnSubFinish7405805,
        ["7405806"] = self.OnSubFinish7405806,
        ["7405802"] = self.OnSubFinish7405802,
        ["7405803"] = self.OnSubFinish7405803,
        ["7405807"] = self.OnSubFinish7405807
    }
end

function Quest74058:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74058:Start()
    print("Start")
end

function Quest74058:OnDestroy()
    print("OnDestroy")
end

function Quest74058:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74058:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74058:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74058:OnSubStart7405801(arg1)
    print("OnSubStart7405801")
    this:CreateQuestNpc(arg1, npcs.Npc5322Data.id, 0)
end

function Quest74058:OnSubFinish7405801(arg1)
    print("OnSubFinish7405801")
end

function Quest74058:OnSubStart7405804(arg1)
    print("OnSubStart7405804")
end

function Quest74058:OnSubFinish7405804(arg1)
    print("OnSubFinish7405804")
end

function Quest74058:OnSubStart7405805(arg1)
    print("OnSubStart7405805")
end

function Quest74058:OnSubFinish7405805(arg1)
    print("OnSubFinish7405805")
end

function Quest74058:OnSubStart7405806(arg1)
    print("OnSubStart7405806")
end

function Quest74058:OnSubFinish7405806(arg1)
    print("OnSubFinish7405806")
end

function Quest74058:OnSubStart7405802(arg1)
    print("OnSubStart7405802")
end

function Quest74058:OnSubFinish7405802(arg1)
    print("OnSubFinish7405802")
    this:NarratorOnlyTaskByData(datas.paim_7405802)
end

function Quest74058:OnSubStart7405803(arg1)
    print("OnSubStart7405803")
    this:CreateQuestNpc(arg1, npcs.Npc5096Data.id, 0)
end

function Quest74058:OnSubFinish7405803(arg1)
    print("OnSubFinish7405803")
end

function Quest74058:OnSubStart7405807(arg1)
    print("OnSubStart7405807")
end

function Quest74058:OnSubFinish7405807(arg1)
    print("OnSubFinish7405807")
    this:SafeDestroyQuestNpc(npcs.Npc5096Data.alias, 3)
end

return Quest74058
