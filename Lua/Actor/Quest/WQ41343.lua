require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41343 = class("Quest41343", QuestActorProxy)
Quest41343.defaultAlias = "Quest41343"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest41343:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest41343:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4134308"] = self.OnSubStart4134308,
        ["4134301"] = self.OnSubStart4134301,
        ["4134302"] = self.OnSubStart4134302,
        ["4134303"] = self.OnSubStart4134303,
        ["4134304"] = self.OnSubStart4134304,
        ["4134305"] = self.OnSubStart4134305,
        ["4134306"] = self.OnSubStart4134306,
        ["4134307"] = self.OnSubStart4134307
    }
end

function Quest41343:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4134308"] = self.OnSubFinish4134308,
        ["4134301"] = self.OnSubFinish4134301,
        ["4134302"] = self.OnSubFinish4134302,
        ["4134303"] = self.OnSubFinish4134303,
        ["4134304"] = self.OnSubFinish4134304,
        ["4134305"] = self.OnSubFinish4134305,
        ["4134306"] = self.OnSubFinish4134306,
        ["4134307"] = self.OnSubFinish4134307
    }
end

function Quest41343:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4134308"] = self.OnSubFailed4134308,
        ["4134301"] = self.OnSubFailed4134301,
        ["4134302"] = self.OnSubFailed4134302,
        ["4134303"] = self.OnSubFailed4134303,
        ["4134304"] = self.OnSubFailed4134304,
        ["4134305"] = self.OnSubFailed4134305,
        ["4134306"] = self.OnSubFailed4134306,
        ["4134307"] = self.OnSubFailed4134307
    }
end

function Quest41343:Start()
    print("Start")
end

function Quest41343:OnDestroy()
    print("OnDestroy")
end

function Quest41343:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41343:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41343:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest41343:ClearData()
    print("ClearData")
    self:DestroyQuestNpcActorByAlias(npcs.Npc2082Data.alias, false)
    self:DestroyQuestNpcActorByAlias(npcs.Npc2046Data.alias, false)
end

function Quest41343:OnSubStart4134308(arg1)
    print("OnSubStart4134308")
end

function Quest41343:OnSubFinish4134308(arg1)
    print("OnSubFinish4134308")
end

function Quest41343:OnSubFailed4134308(arg1)
    print("OnSubFailed4134308")
end

function Quest41343:OnSubStart4134301(arg1)
    print("OnSubStart4134301")
    self:CreateQuestNpc(arg1, npcs.Npc2082Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc2046Data.id, 2)
end

function Quest41343:OnSubFinish4134301(arg1)
    print("OnSubFinish4134301")
end

function Quest41343:OnSubFailed4134301(arg1)
    print("OnSubFailed4134301")
end

function Quest41343:OnSubStart4134302(arg1)
    print("OnSubStart4134302")
end

function Quest41343:OnSubFinish4134302(arg1)
    print("OnSubFinish4134302")
end

function Quest41343:OnSubFailed4134302(arg1)
    print("OnSubFailed4134302")
end

function Quest41343:OnSubStart4134303(arg1)
    print("OnSubStart4134303")
end

function Quest41343:OnSubFinish4134303(arg1)
    print("OnSubFinish4134303")
end

function Quest41343:OnSubFailed4134303(arg1)
    print("OnSubFailed4134303")
end

function Quest41343:OnSubStart4134304(arg1)
    print("OnSubStart4134304")
end

function Quest41343:OnSubFinish4134304(arg1)
    print("OnSubFinish4134304")
end

function Quest41343:OnSubFailed4134304(arg1)
    print("OnSubFailed4134304")
end

function Quest41343:OnSubStart4134305(arg1)
    print("OnSubStart4134305")
end

function Quest41343:OnSubFinish4134305(arg1)
    print("OnSubFinish4134305")
end

function Quest41343:OnSubFailed4134305(arg1)
    print("OnSubFailed4134305")
end

function Quest41343:OnSubStart4134306(arg1)
    print("OnSubStart4134306")
end

function Quest41343:OnSubFinish4134306(arg1)
    print("OnSubFinish4134306")
    self:PlayEffect("Eff_Plant_Dandelion_Flora", sceneData:GetDummyPoint(3, "Q41343_PlayEffectPos").pos)
    self:PlayEffect("Eff_Plant_Dandelion_Flora", sceneData:GetDummyPoint(3, "Q41343_PlayEffectPos").pos)
end

function Quest41343:OnSubFailed4134306(arg1)
    print("OnSubFailed4134306")
end

function Quest41343:OnSubStart4134307(arg1)
    print("OnSubStart4134307")
end

function Quest41343:OnSubFinish4134307(arg1)
    print("OnSubFinish4134307")
    self:SafeDestroyQuestNpc(npcs.Npc2082Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2046Data.alias, 3)
    self:ShowBlackScreen(0.4, 1, 0.4, self.ClearData, nil, nil, "")
end

function Quest41343:OnSubFailed4134307(arg1)
    print("OnSubFailed4134307")
end

return Quest41343
