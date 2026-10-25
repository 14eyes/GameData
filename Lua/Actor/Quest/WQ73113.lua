require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73113 = class("Quest73113", QuestActorProxy)
Quest73113.defaultAlias = "Quest73113"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73113:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73113:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7311301"] = self.OnSubStart7311301,
        ["7311302"] = self.OnSubStart7311302,
        ["7311303"] = self.OnSubStart7311303,
        ["7311304"] = self.OnSubStart7311304,
        ["7311305"] = self.OnSubStart7311305,
        ["7311306"] = self.OnSubStart7311306,
        ["7311307"] = self.OnSubStart7311307,
        ["7311308"] = self.OnSubStart7311308
    }
end

function Quest73113:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7311301"] = self.OnSubFinish7311301,
        ["7311302"] = self.OnSubFinish7311302,
        ["7311303"] = self.OnSubFinish7311303,
        ["7311304"] = self.OnSubFinish7311304,
        ["7311305"] = self.OnSubFinish7311305,
        ["7311306"] = self.OnSubFinish7311306,
        ["7311307"] = self.OnSubFinish7311307,
        ["7311308"] = self.OnSubFinish7311308
    }
end

function Quest73113:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73113:Start()
    print("Start")
end

function Quest73113:OnDestroy()
    print("OnDestroy")
end

function Quest73113:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73113:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73113:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73113:OnSubStart7311301(arg1)
    print("OnSubStart7311301")
end

function Quest73113:OnSubFinish7311301(arg1)
    print("OnSubFinish7311301")
end

function Quest73113:OnSubStart7311302(arg1)
    print("OnSubStart7311302")
    self:CreateQuestNpc(arg1, npcs.Npc20754Data.id, 1)
end

function Quest73113:OnSubFinish7311302(arg1)
    print("OnSubFinish7311302")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20754Data.alias):DestroyWithDisappear(false)
    end)
end

function Quest73113:OnSubStart7311303(arg1)
    print("OnSubStart7311303")
end

function Quest73113:OnSubFinish7311303(arg1)
    print("OnSubFinish7311303")
end

function Quest73113:OnSubStart7311304(arg1)
    print("OnSubStart7311304")
end

function Quest73113:OnSubFinish7311304(arg1)
    print("OnSubFinish7311304")
end

function Quest73113:OnSubStart7311305(arg1)
    print("OnSubStart7311305")
end

function Quest73113:OnSubFinish7311305(arg1)
    print("OnSubFinish7311305")
end

function Quest73113:OnSubStart7311306(arg1)
    print("OnSubStart7311306")
end

function Quest73113:OnSubFinish7311306(arg1)
    print("OnSubFinish7311306")
end

function Quest73113:OnSubStart7311307(arg1)
    print("OnSubStart7311307")
end

function Quest73113:OnSubFinish7311307(arg1)
    print("OnSubFinish7311307")
end

function Quest73113:OnSubStart7311308(arg1)
    print("OnSubStart7311308")
end

function Quest73113:OnSubFinish7311308(arg1)
    print("OnSubFinish7311308")
end

return Quest73113
