require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22023 = class("Quest22023", QuestActorProxy)
Quest22023.defaultAlias = "Quest22023"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest22023:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22023:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2202301"] = self.OnSubStart2202301,
        ["2202307"] = self.OnSubStart2202307,
        ["2202302"] = self.OnSubStart2202302,
        ["2202303"] = self.OnSubStart2202303,
        ["2202304"] = self.OnSubStart2202304,
        ["2202305"] = self.OnSubStart2202305,
        ["2202306"] = self.OnSubStart2202306
    }
end

function Quest22023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2202301"] = self.OnSubFinish2202301,
        ["2202307"] = self.OnSubFinish2202307,
        ["2202302"] = self.OnSubFinish2202302,
        ["2202303"] = self.OnSubFinish2202303,
        ["2202304"] = self.OnSubFinish2202304,
        ["2202305"] = self.OnSubFinish2202305,
        ["2202306"] = self.OnSubFinish2202306
    }
end

function Quest22023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2202301"] = self.OnSubFailed2202301,
        ["2202307"] = self.OnSubFailed2202307,
        ["2202302"] = self.OnSubFailed2202302,
        ["2202303"] = self.OnSubFailed2202303,
        ["2202304"] = self.OnSubFailed2202304,
        ["2202305"] = self.OnSubFailed2202305,
        ["2202306"] = self.OnSubFailed2202306
    }
end

function Quest22023:Start()
    print("Start")
end

function Quest22023:OnDestroy()
    print("OnDestroy")
end

function Quest22023:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc3022Data.alias, 3)
    end, nil, nil, "", false, true)
end

function Quest22023:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22023:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3022Data.alias, 3)
end

function Quest22023:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest22023:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest22023:OnSubStart2202301(arg1)
    print("OnSubStart2202301")
    self:CreateQuestNpc(arg1, npcs.Npc3022Data.id, 1)
end

function Quest22023:OnSubFinish2202301(arg1)
    print("OnSubFinish2202301")
end

function Quest22023:OnSubFailed2202301(arg1)
    print("OnSubFailed2202301")
end

function Quest22023:OnSubStart2202307(arg1)
    print("OnSubStart2202307")
    self:ShowBlackScreen(0.4, 0.8, 0.4, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.PaimonData.id, 1)
        arg1_2:RequestInteraction(npcs.PaimonData.alias)
    end, nil, nil, "")
end

function Quest22023:OnSubFinish2202307(arg1)
    print("OnSubFinish2202307")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest22023:OnSubFailed2202307(arg1)
    print("OnSubFailed2202307")
end

function Quest22023:OnSubStart2202302(arg1)
    print("OnSubStart2202302")
end

function Quest22023:OnSubFinish2202302(arg1)
    print("OnSubFinish2202302")
end

function Quest22023:OnSubFailed2202302(arg1)
    print("OnSubFailed2202302")
end

function Quest22023:OnSubStart2202303(arg1)
    print("OnSubStart2202303")
end

function Quest22023:OnSubFinish2202303(arg1)
    print("OnSubFinish2202303")
end

function Quest22023:OnSubFailed2202303(arg1)
    print("OnSubFailed2202303")
end

function Quest22023:OnSubStart2202304(arg1)
    print("OnSubStart2202304")
end

function Quest22023:OnSubFinish2202304(arg1)
    print("OnSubFinish2202304")
end

function Quest22023:OnSubFailed2202304(arg1)
    print("OnSubFailed2202304")
end

function Quest22023:OnSubStart2202305(arg1)
    print("OnSubStart2202305")
end

function Quest22023:OnSubFinish2202305(arg1)
    print("OnSubFinish2202305")
end

function Quest22023:OnSubFailed2202305(arg1)
    print("OnSubFailed2202305")
end

function Quest22023:OnSubStart2202306(arg1)
    print("OnSubStart2202306")
end

function Quest22023:OnSubFinish2202306(arg1)
    print("OnSubFinish2202306")
end

function Quest22023:OnSubFailed2202306(arg1)
    print("OnSubFailed2202306")
end

return Quest22023
