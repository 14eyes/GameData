require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74043 = class("Quest74043", QuestActorProxy)
Quest74043.defaultAlias = "Quest74043"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74043:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74043:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7404312"] = self.OnSubStart7404312,
        ["7404310"] = self.OnSubStart7404310,
        ["7404311"] = self.OnSubStart7404311,
        ["7404301"] = self.OnSubStart7404301,
        ["7404302"] = self.OnSubStart7404302,
        ["7404303"] = self.OnSubStart7404303,
        ["7404304"] = self.OnSubStart7404304,
        ["7404305"] = self.OnSubStart7404305,
        ["7404306"] = self.OnSubStart7404306,
        ["7404307"] = self.OnSubStart7404307,
        ["7404308"] = self.OnSubStart7404308,
        ["7404309"] = self.OnSubStart7404309
    }
end

function Quest74043:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7404312"] = self.OnSubFinish7404312,
        ["7404310"] = self.OnSubFinish7404310,
        ["7404311"] = self.OnSubFinish7404311,
        ["7404301"] = self.OnSubFinish7404301,
        ["7404302"] = self.OnSubFinish7404302,
        ["7404303"] = self.OnSubFinish7404303,
        ["7404304"] = self.OnSubFinish7404304,
        ["7404305"] = self.OnSubFinish7404305,
        ["7404306"] = self.OnSubFinish7404306,
        ["7404307"] = self.OnSubFinish7404307,
        ["7404308"] = self.OnSubFinish7404308,
        ["7404309"] = self.OnSubFinish7404309
    }
end

function Quest74043:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74043:Start()
    print("Start")
end

function Quest74043:OnDestroy()
    print("OnDestroy")
end

function Quest74043:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74043:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74043:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74043:OnSubStart7404312(arg1)
    print("OnSubStart7404312")
    this:CreateQuestNpc(arg1, npcs.Npc5254Data.id, 0)
end

function Quest74043:OnSubFinish7404312(arg1)
    print("OnSubFinish7404312")
    this:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest74043:OnSubStart7404310(arg1)
    print("OnSubStart7404310")
end

function Quest74043:OnSubFinish7404310(arg1)
    print("OnSubFinish7404310")
end

function Quest74043:OnSubStart7404311(arg1)
    print("OnSubStart7404311")
end

function Quest74043:OnSubFinish7404311(arg1)
    print("OnSubFinish7404311")
    this:SafeDestroyQuestNpc(npcs.Npc5254Data.alias, 3)
end

function Quest74043:OnSubStart7404301(arg1)
    print("OnSubStart7404301")
end

function Quest74043:OnSubFinish7404301(arg1)
    print("OnSubFinish7404301")
end

function Quest74043:OnSubStart7404302(arg1)
    print("OnSubStart7404302")
end

function Quest74043:OnSubFinish7404302(arg1)
    print("OnSubFinish7404302")
end

function Quest74043:OnSubStart7404303(arg1)
    print("OnSubStart7404303")
end

function Quest74043:OnSubFinish7404303(arg1)
    print("OnSubFinish7404303")
end

function Quest74043:OnSubStart7404304(arg1)
    print("OnSubStart7404304")
end

function Quest74043:OnSubFinish7404304(arg1)
    print("OnSubFinish7404304")
end

function Quest74043:OnSubStart7404305(arg1)
    print("OnSubStart7404305")
end

function Quest74043:OnSubFinish7404305(arg1)
    print("OnSubFinish7404305")
end

function Quest74043:OnSubStart7404306(arg1)
    print("OnSubStart7404306")
end

function Quest74043:OnSubFinish7404306(arg1)
    print("OnSubFinish7404306")
end

function Quest74043:OnSubStart7404307(arg1)
    print("OnSubStart7404307")
end

function Quest74043:OnSubFinish7404307(arg1)
    print("OnSubFinish7404307")
end

function Quest74043:OnSubStart7404308(arg1)
    print("OnSubStart7404308")
end

function Quest74043:OnSubFinish7404308(arg1)
    print("OnSubFinish7404308")
end

function Quest74043:OnSubStart7404309(arg1)
    print("OnSubStart7404309")
end

function Quest74043:OnSubFinish7404309(arg1)
    print("OnSubFinish7404309")
end

return Quest74043
