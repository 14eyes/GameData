require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20072 = class("Quest20072", QuestActorProxy)
Quest20072.defaultAlias = "Quest20072"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest20072:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest20072:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2007213"] = self.OnSubStart2007213,
        ["2007201"] = self.OnSubStart2007201,
        ["2007202"] = self.OnSubStart2007202,
        ["2007203"] = self.OnSubStart2007203,
        ["2007204"] = self.OnSubStart2007204,
        ["2007205"] = self.OnSubStart2007205,
        ["2007206"] = self.OnSubStart2007206,
        ["2007207"] = self.OnSubStart2007207,
        ["2007208"] = self.OnSubStart2007208,
        ["2007212"] = self.OnSubStart2007212,
        ["2007209"] = self.OnSubStart2007209,
        ["2007210"] = self.OnSubStart2007210,
        ["2007211"] = self.OnSubStart2007211
    }
end

function Quest20072:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2007213"] = self.OnSubFinish2007213,
        ["2007201"] = self.OnSubFinish2007201,
        ["2007202"] = self.OnSubFinish2007202,
        ["2007203"] = self.OnSubFinish2007203,
        ["2007204"] = self.OnSubFinish2007204,
        ["2007205"] = self.OnSubFinish2007205,
        ["2007206"] = self.OnSubFinish2007206,
        ["2007207"] = self.OnSubFinish2007207,
        ["2007208"] = self.OnSubFinish2007208,
        ["2007212"] = self.OnSubFinish2007212,
        ["2007209"] = self.OnSubFinish2007209,
        ["2007210"] = self.OnSubFinish2007210,
        ["2007211"] = self.OnSubFinish2007211
    }
end

function Quest20072:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2007213"] = self.OnSubFailed2007213,
        ["2007201"] = self.OnSubFailed2007201,
        ["2007202"] = self.OnSubFailed2007202,
        ["2007203"] = self.OnSubFailed2007203,
        ["2007204"] = self.OnSubFailed2007204,
        ["2007205"] = self.OnSubFailed2007205,
        ["2007206"] = self.OnSubFailed2007206,
        ["2007207"] = self.OnSubFailed2007207,
        ["2007208"] = self.OnSubFailed2007208,
        ["2007212"] = self.OnSubFailed2007212,
        ["2007209"] = self.OnSubFailed2007209,
        ["2007210"] = self.OnSubFailed2007210,
        ["2007211"] = self.OnSubFailed2007211
    }
end

function Quest20072:Start()
    print("Start")
end

function Quest20072:OnDestroy()
    print("OnDestroy")
end

function Quest20072:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest20072:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearData()
end

function Quest20072:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest20072:FinishNext()
    print("FinishNext")
    self:FinishQuestID(false, 2007203)
end

function Quest20072:ClearData()
    print("ClearData")
    self:NotifyTo(npcs.Npc1425Data.alias, 0, true)
end

function Quest20072:OnSubStart2007213(arg1)
    print("OnSubStart2007213")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20072:OnSubFinish2007213(arg1)
    print("OnSubFinish2007213")
end

function Quest20072:OnSubFailed2007213(arg1)
    print("OnSubFailed2007213")
end

function Quest20072:OnSubStart2007201(arg1)
    print("OnSubStart2007201")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20072:OnSubFinish2007201(arg1)
    print("OnSubFinish2007201")
end

function Quest20072:OnSubFailed2007201(arg1)
    print("OnSubFailed2007201")
end

function Quest20072:OnSubStart2007202(arg1)
    print("OnSubStart2007202")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20072:OnSubFinish2007202(arg1)
    print("OnSubFinish2007202")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q2006908_targetPos1").pos, 0, 3, true, false)
    self:NarratorOnlyTaskByData(datas.NarratorWithId_200709902, nil, 20072)
end

function Quest20072:OnSubFailed2007202(arg1)
    print("OnSubFailed2007202")
end

function Quest20072:OnSubStart2007203(arg1)
    print("OnSubStart2007203")
    self:FinishQuestID(false, 2007203)
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20072:OnSubFinish2007203(arg1)
    print("OnSubFinish2007203")
end

function Quest20072:OnSubFailed2007203(arg1)
    print("OnSubFailed2007203")
end

function Quest20072:OnSubStart2007204(arg1)
    print("OnSubStart2007204")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20072:OnSubFinish2007204(arg1)
    print("OnSubFinish2007204")
    self:ShowBlackScreen(0.3, 0.5, 0.3, nil, nil, nil, "")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_200709901, nil, 20072)
end

function Quest20072:OnSubFailed2007204(arg1)
    print("OnSubFailed2007204")
end

function Quest20072:OnSubStart2007205(arg1)
    print("OnSubStart2007205")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20072:OnSubFinish2007205(arg1)
    print("OnSubFinish2007205")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_2007010, nil, 20072)
end

function Quest20072:OnSubFailed2007205(arg1)
    print("OnSubFailed2007205")
end

function Quest20072:OnSubStart2007206(arg1)
    print("OnSubStart2007206")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q2007001_targetPos1").pos, 0, 3, true, false)
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20072:OnSubFinish2007206(arg1)
    print("OnSubFinish2007206")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_200709911, nil, 20072)
end

function Quest20072:OnSubFailed2007206(arg1)
    print("OnSubFailed2007206")
end

function Quest20072:OnSubStart2007207(arg1)
    print("OnSubStart2007207")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20072:OnSubFinish2007207(arg1)
    print("OnSubFinish2007207")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_200709913, nil, 20072)
end

function Quest20072:OnSubFailed2007207(arg1)
    print("OnSubFailed2007207")
end

function Quest20072:OnSubStart2007208(arg1)
    print("OnSubStart2007208")
    self:FinishQuestID(false, 2007212)
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20072:OnSubFinish2007208(arg1)
    print("OnSubFinish2007208")
    self:ShowBlackScreen(0.5, 1, 0.5, self.ClearData, nil, nil, "")
end

function Quest20072:OnSubFailed2007208(arg1)
    print("OnSubFailed2007208")
end

function Quest20072:OnSubStart2007212(arg1)
    print("OnSubStart2007212")
    self:FinishQuestID(false, 2007208)
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20072:OnSubFinish2007212(arg1)
    print("OnSubFinish2007212")
    self:ShowBlackScreen(0.5, 1, 0.5, self.ClearData, nil, nil, "")
end

function Quest20072:OnSubFailed2007212(arg1)
    print("OnSubFailed2007212")
end

function Quest20072:OnSubStart2007209(arg1)
    print("OnSubStart2007209")
end

function Quest20072:OnSubFinish2007209(arg1)
    print("OnSubFinish2007209")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_2006901, nil, 20072)
end

function Quest20072:OnSubFailed2007209(arg1)
    print("OnSubFailed2007209")
end

function Quest20072:OnSubStart2007210(arg1)
    print("OnSubStart2007210")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20072:OnSubFinish2007210(arg1)
    print("OnSubFinish2007210")
    self:ShowBlackScreen(0.5, 1, 0.5, self.ClearData, nil, nil, "")
end

function Quest20072:OnSubFailed2007210(arg1)
    print("OnSubFailed2007210")
end

function Quest20072:OnSubStart2007211(arg1)
    print("OnSubStart2007211")
end

function Quest20072:OnSubFinish2007211(arg1)
    print("OnSubFinish2007211")
end

function Quest20072:OnSubFailed2007211(arg1)
    print("OnSubFailed2007211")
end

return Quest20072
