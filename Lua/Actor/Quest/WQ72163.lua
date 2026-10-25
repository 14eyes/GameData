require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72163 = class("Quest72163", QuestActorProxy)
Quest72163.defaultAlias = "Quest72163"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72163:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72163:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7216308"] = self.OnSubStart7216308,
        ["7216309"] = self.OnSubStart7216309,
        ["7216301"] = self.OnSubStart7216301,
        ["7216310"] = self.OnSubStart7216310,
        ["7216311"] = self.OnSubStart7216311,
        ["7216312"] = self.OnSubStart7216312,
        ["7216302"] = self.OnSubStart7216302,
        ["7216303"] = self.OnSubStart7216303,
        ["7216304"] = self.OnSubStart7216304,
        ["7216305"] = self.OnSubStart7216305,
        ["7216306"] = self.OnSubStart7216306,
        ["7216313"] = self.OnSubStart7216313,
        ["7216314"] = self.OnSubStart7216314,
        ["7216307"] = self.OnSubStart7216307
    }
end

function Quest72163:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7216308"] = self.OnSubFinish7216308,
        ["7216309"] = self.OnSubFinish7216309,
        ["7216301"] = self.OnSubFinish7216301,
        ["7216310"] = self.OnSubFinish7216310,
        ["7216311"] = self.OnSubFinish7216311,
        ["7216312"] = self.OnSubFinish7216312,
        ["7216302"] = self.OnSubFinish7216302,
        ["7216303"] = self.OnSubFinish7216303,
        ["7216304"] = self.OnSubFinish7216304,
        ["7216305"] = self.OnSubFinish7216305,
        ["7216306"] = self.OnSubFinish7216306,
        ["7216313"] = self.OnSubFinish7216313,
        ["7216314"] = self.OnSubFinish7216314,
        ["7216307"] = self.OnSubFinish7216307
    }
end

function Quest72163:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7216308"] = self.OnSubFailed7216308,
        ["7216309"] = self.OnSubFailed7216309,
        ["7216301"] = self.OnSubFailed7216301,
        ["7216310"] = self.OnSubFailed7216310,
        ["7216311"] = self.OnSubFailed7216311,
        ["7216312"] = self.OnSubFailed7216312,
        ["7216302"] = self.OnSubFailed7216302,
        ["7216303"] = self.OnSubFailed7216303,
        ["7216304"] = self.OnSubFailed7216304,
        ["7216305"] = self.OnSubFailed7216305,
        ["7216306"] = self.OnSubFailed7216306,
        ["7216313"] = self.OnSubFailed7216313,
        ["7216314"] = self.OnSubFailed7216314,
        ["7216307"] = self.OnSubFailed7216307
    }
end

function Quest72163:Start()
    print("Start")
end

function Quest72163:OnDestroy()
    print("OnDestroy")
end

function Quest72163:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72163:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72163:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72163:Finish09()
    print("Finish09")
    self:FinishQuestID(false, 7216309)
end

function Quest72163:OnSubStart7216308(arg1)
    print("OnSubStart7216308")
end

function Quest72163:OnSubFinish7216308(arg1)
    print("OnSubFinish7216308")
end

function Quest72163:OnSubFailed7216308(arg1)
    print("OnSubFailed7216308")
end

function Quest72163:OnSubStart7216309(arg1)
    print("OnSubStart7216309")
    self:NarratorOnlyTask(datas.PaimonBegin, nil, "")
    self:CallDelay(12, self.Finish09)
end

function Quest72163:OnSubFinish7216309(arg1)
    print("OnSubFinish7216309")
end

function Quest72163:OnSubFailed7216309(arg1)
    print("OnSubFailed7216309")
end

function Quest72163:OnSubStart7216301(arg1)
    print("OnSubStart7216301")
end

function Quest72163:OnSubFinish7216301(arg1)
    print("OnSubFinish7216301")
end

function Quest72163:OnSubFailed7216301(arg1)
    print("OnSubFailed7216301")
end

function Quest72163:OnSubStart7216310(arg1)
    print("OnSubStart7216310")
end

function Quest72163:OnSubFinish7216310(arg1)
    print("OnSubFinish7216310")
end

function Quest72163:OnSubFailed7216310(arg1)
    print("OnSubFailed7216310")
end

function Quest72163:OnSubStart7216311(arg1)
    print("OnSubStart7216311")
end

function Quest72163:OnSubFinish7216311(arg1)
    print("OnSubFinish7216311")
end

function Quest72163:OnSubFailed7216311(arg1)
    print("OnSubFailed7216311")
end

function Quest72163:OnSubStart7216312(arg1)
    print("OnSubStart7216312")
end

function Quest72163:OnSubFinish7216312(arg1)
    print("OnSubFinish7216312")
end

function Quest72163:OnSubFailed7216312(arg1)
    print("OnSubFailed7216312")
end

function Quest72163:OnSubStart7216302(arg1)
    print("OnSubStart7216302")
end

function Quest72163:OnSubFinish7216302(arg1)
    print("OnSubFinish7216302")
end

function Quest72163:OnSubFailed7216302(arg1)
    print("OnSubFailed7216302")
end

function Quest72163:OnSubStart7216303(arg1)
    print("OnSubStart7216303")
end

function Quest72163:OnSubFinish7216303(arg1)
    print("OnSubFinish7216303")
end

function Quest72163:OnSubFailed7216303(arg1)
    print("OnSubFailed7216303")
end

function Quest72163:OnSubStart7216304(arg1)
    print("OnSubStart7216304")
end

function Quest72163:OnSubFinish7216304(arg1)
    print("OnSubFinish7216304")
end

function Quest72163:OnSubFailed7216304(arg1)
    print("OnSubFailed7216304")
end

function Quest72163:OnSubStart7216305(arg1)
    print("OnSubStart7216305")
end

function Quest72163:OnSubFinish7216305(arg1)
    print("OnSubFinish7216305")
end

function Quest72163:OnSubFailed7216305(arg1)
    print("OnSubFailed7216305")
end

function Quest72163:OnSubStart7216306(arg1)
    print("OnSubStart7216306")
end

function Quest72163:OnSubFinish7216306(arg1)
    print("OnSubFinish7216306")
end

function Quest72163:OnSubFailed7216306(arg1)
    print("OnSubFailed7216306")
end

function Quest72163:OnSubStart7216307(arg1)
    print("OnSubStart7216307")
end

function Quest72163:OnSubFinish7216307(arg1)
    print("OnSubFinish7216307")
end

function Quest72163:OnSubFailed7216307(arg1)
    print("OnSubFailed7216307")
end

return Quest72163
