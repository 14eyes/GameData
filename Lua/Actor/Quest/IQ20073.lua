require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20073 = class("Quest20073", QuestActorProxy)
Quest20073.defaultAlias = "Quest20073"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest20073:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest20073:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2007301"] = self.OnSubStart2007301,
        ["2007302"] = self.OnSubStart2007302,
        ["2007304"] = self.OnSubStart2007304,
        ["2007307"] = self.OnSubStart2007307,
        ["2007308"] = self.OnSubStart2007308,
        ["2007309"] = self.OnSubStart2007309,
        ["2007303"] = self.OnSubStart2007303,
        ["2007305"] = self.OnSubStart2007305,
        ["2007306"] = self.OnSubStart2007306
    }
end

function Quest20073:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2007301"] = self.OnSubFinish2007301,
        ["2007302"] = self.OnSubFinish2007302,
        ["2007304"] = self.OnSubFinish2007304,
        ["2007307"] = self.OnSubFinish2007307,
        ["2007308"] = self.OnSubFinish2007308,
        ["2007309"] = self.OnSubFinish2007309,
        ["2007303"] = self.OnSubFinish2007303,
        ["2007305"] = self.OnSubFinish2007305,
        ["2007306"] = self.OnSubFinish2007306
    }
end

function Quest20073:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2007301"] = self.OnSubFailed2007301,
        ["2007302"] = self.OnSubFailed2007302,
        ["2007304"] = self.OnSubFailed2007304,
        ["2007307"] = self.OnSubFailed2007307,
        ["2007308"] = self.OnSubFailed2007308,
        ["2007309"] = self.OnSubFailed2007309,
        ["2007303"] = self.OnSubFailed2007303,
        ["2007305"] = self.OnSubFailed2007305,
        ["2007306"] = self.OnSubFailed2007306
    }
end

function Quest20073:Start()
    print("Start")
end

function Quest20073:OnDestroy()
    print("OnDestroy")
end

function Quest20073:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ClearData()
end

function Quest20073:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearData()
end

function Quest20073:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest20073:ClearData()
    print("ClearData")
    self:SafeDestroyQuestNpc(npcs.Npc20211Data.alias, 3)
end

function Quest20073:OnSubStart2007301(arg1)
    print("OnSubStart2007301")
end

function Quest20073:OnSubFinish2007301(arg1)
    print("OnSubFinish2007301")
end

function Quest20073:OnSubFailed2007301(arg1)
    print("OnSubFailed2007301")
end

function Quest20073:OnSubStart2007302(arg1)
    print("OnSubStart2007302")
end

function Quest20073:OnSubFinish2007302(arg1)
    print("OnSubFinish2007302")
end

function Quest20073:OnSubFailed2007302(arg1)
    print("OnSubFailed2007302")
end

function Quest20073:OnSubStart2007304(arg1)
    print("OnSubStart2007304")
end

function Quest20073:OnSubFinish2007304(arg1)
    print("OnSubFinish2007304")
end

function Quest20073:OnSubFailed2007304(arg1)
    print("OnSubFailed2007304")
end

function Quest20073:OnSubStart2007307(arg1)
    print("OnSubStart2007307")
    self:CreateQuestNpc(arg1, npcs.Npc20211Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20211Data.alias):EnableInteraction(false)
end

function Quest20073:OnSubFinish2007307(arg1)
    print("OnSubFinish2007307")
    self:GetQuestNpcActor(npcs.Npc20211Data.alias):EnableInteraction(true)
end

function Quest20073:OnSubFailed2007307(arg1)
    print("OnSubFailed2007307")
end

function Quest20073:OnSubStart2007308(arg1)
    print("OnSubStart2007308")
end

function Quest20073:OnSubFinish2007308(arg1)
    print("OnSubFinish2007308")
end

function Quest20073:OnSubFailed2007308(arg1)
    print("OnSubFailed2007308")
end

function Quest20073:OnSubStart2007309(arg1)
    print("OnSubStart2007309")
end

function Quest20073:OnSubFinish2007309(arg1)
    print("OnSubFinish2007309")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_snow, nil, 20073)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q20073box3_Pos").pos, 0, 3, true, false)
end

function Quest20073:OnSubFailed2007309(arg1)
    print("OnSubFailed2007309")
end

function Quest20073:OnSubStart2007303(arg1)
    print("OnSubStart2007303")
end

function Quest20073:OnSubFinish2007303(arg1)
    print("OnSubFinish2007303")
end

function Quest20073:OnSubFailed2007303(arg1)
    print("OnSubFailed2007303")
end

function Quest20073:OnSubStart2007305(arg1)
    print("OnSubStart2007305")
end

function Quest20073:OnSubFinish2007305(arg1)
    print("OnSubFinish2007305")
end

function Quest20073:OnSubFailed2007305(arg1)
    print("OnSubFailed2007305")
end

function Quest20073:OnSubStart2007306(arg1)
    print("OnSubStart2007306")
end

function Quest20073:OnSubFinish2007306(arg1)
    print("OnSubFinish2007306")
    self:SafeDestroyQuestNpc(npcs.Npc20211Data.alias, 3)
end

function Quest20073:OnSubFailed2007306(arg1)
    print("OnSubFailed2007306")
end

return Quest20073
